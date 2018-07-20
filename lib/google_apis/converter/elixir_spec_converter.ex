# Copyright 2018 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Converter.ElixirSpecConverter do
  @behaviour GoogleApis.Converter
  alias GoogleApis.ApiConfig
  alias GoogleApis.Converter.ElixirSpecConverter.OpenApi2
  alias GoogleApi.Discovery.V1.Model.RestDescription
  require Logger

  def convert(api_config = %ApiConfig{}) do
    file = ApiConfig.google_spec_file(api_config)
    output = ApiConfig.openapi_spec_file(api_config)
    Logger.info("Converting #{file} to #{output}")

    openapi =
      file
      |> File.read!()
      |> Poison.decode!(as: %RestDescription{})
      |> OpenApi2.from_gdd()
      # |> IO.inspect
      # |> Jason.encode!()
      # |> IO.inspect

    # IO.inspect openapi.definitions
    IO.inspect openapi.paths
    # IO.inspect openapi.parameters
    # IO.inspect openapi.securityDefinitions
    # IO.inspect openapi.security
    # IO.inspect openapi.tags
    # IO.inspect(openapi["definitions"])

    # if File.exists?(output) do
    #   existing =
    #     output
    #     |> File.read!()
    #     |> Jason.decode!()

    #   Enum.each(["parameters", "securityDefinitions", "externalDocs", "paths"], fn location ->
    #     control = existing[location]
    #     sample = openapi[location]
    #     if Map.equal?(control, sample) do
    #       IO.puts "same #{location}"
    #     else
    #       MapDiff.diff(control, sample)
    #       |> IO.inspect
    #     end
    #   end)
    # end

    # File.write(output_path, openapi)

    {:ok, ""}
  end

  defmodule OpenApi2 do
    require Logger

    # alias GoogleApi.Discovery.V1.Model.{JsonSchema,RestDescription}
    alias GoogleApi.Discovery.V1.Model, as: Discovery
    alias OpenApi.V2.Model, as: OpenApi
    # alias OpenApi.V2.Model.{Swagger,Info,Contact,License,Definitions,Schema,ExternalDocumentation,Tag,SecurityScheme,Scopes,SecurityDefinitions,Items}

    @spec from_gdd(Discovery.RestDescription.t()) :: Swagger.t()
    def from_gdd(%Discovery.RestDescription{} = gdd) do
      %OpenApi.Swagger{swagger: "2.0"}
      |> add_info(gdd)
      |> add_host_info(gdd)
      |> add_definitions(gdd)
      |> add_parameters(gdd)
      |> add_security_definitions(gdd)
      |> add_tags(gdd)
      |> add_paths(gdd)
      |> add_external_docs(gdd)
    end

    defp add_info(openapi, %Discovery.RestDescription{title: title, description: description, version: version}) do
      Map.put(openapi, :info, %OpenApi.Info{
        title: title,
        description: description,
        contact: %OpenApi.Contact{
          name: "Google",
          url: "https://google.com"
        },
        version: version,
        license: %OpenApi.License{
          name: "Apache 2.0",
          url: "https://apache.org/licenses/LICENSE-2.0"
        },
        termsOfService: "https://developers.google.com/terms/"
      })
    end

    defp add_host_info(openapi, %Discovery.RestDescription{rootUrl: root_url}) do
      %URI{host: host, path: base_path, scheme: scheme} = URI.parse(root_url)
      %{openapi | host: host, basePath: base_path, schemes: [scheme]}
    end

    defp add_definitions(openapi, %Discovery.RestDescription{schemas: schemas}) do
      definitions =
        schemas
        |> Enum.reduce(%OpenApi.Definitions{}, fn {name, schema}, acc ->
          Map.put(acc, name, map_property(schema))
        end)

      Map.put(openapi, :definitions, definitions)
    end

    defp map_properties(nil), do: nil
    defp map_properties(properties_by_name) do
      Enum.reduce(properties_by_name, %{}, fn {name, config}, acc ->
        Map.put(acc, name, map_property(config))
      end)
    end
    defp map_property(nil), do: nil
    defp map_property(%Discovery.JsonSchema{type: "object"} = property) do
      %OpenApi.Schema{
        type: "object",
        description: property.description,
        default: property.default,
        properties: map_properties(property.properties),
        additionalProperties: map_property(property.additionalProperties),
        "$ref": fix_ref(Map.get(property, :"$ref"))
      }
    end
    defp map_property(%Discovery.JsonSchema{type: "array"} = property) do
      %OpenApi.Schema{
        type: "array",
        description: property.description,
        default: property.default,
        "$ref": fix_ref(Map.get(property, :"$ref")),
        items: map_items(property.items)
      }
    end
    defp map_property(%Discovery.JsonSchema{} = property) do
      %OpenApi.Schema{
        type: property.type || "string",
        format: fix_format(property.format),
        description: property.description,
        default: property.default,
        "$ref": fix_ref(Map.get(property, :"$ref"))
      }
    end
    defp map_items(nil), do: nil
    defp map_items(%Discovery.JsonSchema{type: "array"} = property) do
      %OpenApi.Items{
        type: "array",
        default: property.default,
        items: map_items(property.items)
      }
    end
    defp map_items(%Discovery.JsonSchema{} = property) do
      %OpenApi.Items{
        type: property.type || "string",
        format: fix_format(property.format),
        default: property.default
      }
    end
    defp fix_ref(nil), do: nil
    defp fix_ref(ref), do: "#/definitions/#{ref}"
    defp fix_format("google-datetime"), do: "date-time"
    defp fix_format(format), do: format

    defp add_parameters(openapi, %Discovery.RestDescription{parameters: parameters}) do
      global_parameters =
        parameters
        |> Enum.reduce(%OpenApi.ParametersDefinitions{}, fn {name, parameter}, acc ->
          Map.put acc, name, map_parameter(name, parameter)
        end)

      Map.put(openapi, :parameters, global_parameters)
    end

    defp map_parameter(name, %Discovery.JsonSchema{location: "body"} = parameter) do
      %OpenApi.Parameter{
        name: name,
        in: "body",
        description: parameter.description,
        required: parameter.required,
        schema: map_property(parameter)
      }
    end
    defp map_parameter(name, %Discovery.JsonSchema{type: "array"} = parameter) do
      %OpenApi.Parameter{
        name: name,
        in: parameter.location,
        description: parameter.description,
        required: parameter.required,
        type: "array",
        items: map_items(parameter)
      }
    end
    defp map_parameter(name, %Discovery.JsonSchema{repeated: true} = parameter) do
      %OpenApi.Parameter{
        name: name,
        in: parameter.location,
        description: parameter.description,
        required: parameter.required,
        type: "array",
        items: map_items(parameter)
      }
    end
    defp map_parameter(name, %Discovery.JsonSchema{} = parameter) do
      %OpenApi.Parameter{
        name: name,
        in: parameter.location,
        description: parameter.description,
        required: parameter.required,
        type: parameter.type,
        format: parameter.format,
        default: parameter.default,
        maximum: parameter.maximum,
        minimum: parameter.minimum,
        pattern: parameter.pattern,
        enum: parameter.enum
      }
    end

    defp add_security_definitions(openapi, %Discovery.RestDescription{auth: %Discovery.RestDescriptionAuth{oauth2: %Discovery.RestDescriptionAuthOauth2{scopes: scopes}}}) do
      definitions = Map.put(%OpenApi.SecurityDefinitions{}, "Oauth2", %OpenApi.SecurityScheme{
        type: "oauth2",
        description: "Oauth 2.0 authentication",
        flow: "implicit",
        authorizationUrl: "https://accounts.google.com/o/oauth2/auth",
        scopes:
          Enum.reduce(scopes, %OpenApi.Scopes{}, fn {scope, %Discovery.RestDescriptionAuthOauth2Scopes{description: description}}, acc ->
            Map.put(acc, scope, description)
          end)
      })
      Map.put(openapi, :securityDefinitions, definitions)
    end

    defp add_security_definitions(openapi, _) do
      Logger.warn("Invalid auth section")
      openapi
    end

    defp add_tags(openapi, %{resources: resources}) do
      Map.put(openapi, :tags, Enum.map(resources, fn {name, _config} -> %OpenApi.Tag{name: name} end))
    end

    defp add_security_definitions(openapi, _) do
      Logger.warn("No resources, no tags to create")
      Map.put(openapi, :tags, [])
    end

    defp add_paths(openapi, %{resources: resources}) do
      global_parameter_refs =
        openapi
        |> Map.get(:parameters, %{})
        # |> Enum.map(fn {name, _} ->
        #   %{"$ref": "#/parameters/#{name}"}
        # end)

      endpoints =
        resources
        |> Enum.map(fn {resource_name, %Discovery.RestResource{methods: methods} = resource} ->
          Map.values(methods)
        end)
        |> List.flatten

      supports_media_upload = Enum.any?(endpoints, fn endpoint ->
        Map.get(endpoint, "supportsMediaUpload")
      end)

      paths =
        endpoints
        |> Enum.reduce(%{}, fn %{path: path, httpMethod: method} = endpoint, acc ->
          acc
          |> Map.put_new(path, %{"parameters" => global_parameter_refs})
          |> Map.update!(path, fn path_config ->
            Map.put(path_config, String.downcase(method), map_endpoint(endpoint))
          end)
        end)

      Map.put(openapi, :paths, paths)
    end

    defp map_endpoint(%{id: operation_id} = endpoint) do
      endpoint
      |> Map.take([:description])
      |> Map.put(:operationId, operation_id)
      |> update_endpoint_security(endpoint)
      |> update_endpoint_responses(endpoint)
      |> update_endpoint_parameters(endpoint)
      |> update_endpoint_tags(endpoint)
    end

    defp update_endpoint_security(endpoint, %{scopes: scopes}) do
      Map.put(endpoint, :security, %{
        :Oauth2 => scopes
      })
    end
    defp update_endpoint_security(endpoint, _) do
      endpoint
    end

    defp update_endpoint_responses(endpoint, %{response: %{:"$ref" => ref}}) do
      Map.put(endpoint, "responses", %{
        "200" => %{
          "description" => "Successful response",
          "schema" => %{
            "$ref" => "#/definitions/#{ref}"
          }
        }
      })
    end
    defp update_endpoint_responses(endpoint, _) do
      Map.put(endpoint, "responses", %{
        "200" => %{
          "description" => "Successful response"
        }
      })
    end

    defp update_endpoint_parameters(endpoint, config) do
      parameter_order = Map.get(config, "parameterOrder", [])
      parameter_config = Map.get(config, "parameters", %{})

      params =
        Enum.map(parameter_order, fn name ->
          map_parameter(name, Map.fetch!(parameter_config, name))
        end)

      if Map.has_key?(config, "request") do
        params = params ++ [
          %{
            "in" => "body",
            "name" => "body",
            "schema" => %{
              "$ref" => "#/definitions/#{config["request"]["$ref"]}"
            }
          }
        ]
      end

      Map.put(endpoint, "parameters", params)
    end

    defp update_endpoint_tags(endpoint, _) do
      endpoint
    end

    defp add_external_docs(openapi, %Discovery.RestDescription{documentationLink: url}) do
      Map.put(openapi, :externalDocs, %OpenApi.ExternalDocumentation{url: url})
    end

    defp add_external_docs(openapi, _) do
      openapi
    end
  end
end
