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
      |> Jason.encode!(pretty: true)

    File.write(output, openapi)

    {:ok, output}
  end

  defmodule OpenApi2 do
    require Logger

    alias GoogleApi.Discovery.V1.Model, as: Discovery
    alias OpenApi.V2.Model, as: OpenApi

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

    defp add_info(openapi, %Discovery.RestDescription{
           title: title,
           description: description,
           version: version
         }) do
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

    defp add_host_info(openapi, %Discovery.RestDescription{baseUrl: base_url}) do
      %URI{host: host, path: base_path, scheme: scheme, port: port} = URI.parse(base_url)

      host_string =
        case URI.default_port(scheme) do
          ^port -> host
          _ -> "#{host}:#{port}"
        end

      %{openapi | host: host_string, basePath: base_path, schemes: [scheme]}
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
        items: map_property(property.items)
      }
    end

    defp map_property(%Discovery.JsonSchema{} = property) do
      %OpenApi.Schema{
        type: fix_type(property.type),
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
        type: fix_type(property.type),
        format: fix_format(property.format),
        default: property.default
      }
    end

    defp fix_type(nil), do: "string"
    defp fix_type("any"), do: "string"
    defp fix_type(type), do: type

    defp fix_ref(nil), do: nil
    defp fix_ref(ref), do: "#/definitions/#{ref}"
    defp fix_format("google-datetime"), do: "date-time"
    defp fix_format(format), do: format

    defp add_parameters(openapi, %Discovery.RestDescription{parameters: parameters}) do
      global_parameters =
        parameters
        |> Enum.reduce(%OpenApi.ParametersDefinitions{}, fn {name, parameter}, acc ->
          Map.put(acc, name, map_parameter(name, parameter))
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
        items: map_items(parameter),
        collectionFormat: "multi"
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

    defp add_security_definitions(openapi, %Discovery.RestDescription{
           auth: %Discovery.RestDescriptionAuth{
             oauth2: %Discovery.RestDescriptionAuthOauth2{scopes: scopes}
           }
         }) do
      definitions =
        Map.put(%OpenApi.SecurityDefinitions{}, "Oauth2", %OpenApi.SecurityScheme{
          type: "oauth2",
          description: "Oauth 2.0 authentication",
          flow: "implicit",
          authorizationUrl: "https://accounts.google.com/o/oauth2/auth",
          scopes:
            Enum.reduce(scopes, %OpenApi.Scopes{}, fn {scope,
                                                       %Discovery.RestDescriptionAuthOauth2Scopes{
                                                         description: description
                                                       }},
                                                      acc ->
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
      Map.put(
        openapi,
        :tags,
        Enum.map(resources, fn {name, _config} -> %OpenApi.Tag{name: name} end)
      )
    end

    defp add_tags(openapi, _) do
      Logger.warn("No resources, no tags to create")
      Map.put(openapi, :tags, [])
    end

    defp add_paths(
           %OpenApi.Swagger{basePath: base_path, parameters: parameters} = openapi,
           %Discovery.RestDescription{resources: resources}
         ) do
      global_parameter_refs =
        parameters
        |> Map.from_struct()
        |> Enum.map(fn {name, _} ->
          %OpenApi.Reference{"$ref": "#/parameters/#{name}"}
        end)

      endpoints =
        resources
        |> Enum.map(fn {resource_name, %Discovery.RestResource{methods: methods} = resource} ->
          Map.values(methods)
        end)
        |> List.flatten()

      media_upload_endpoints =
        Enum.filter(endpoints, fn endpoint ->
          Map.get(endpoint, :supportsMediaUpload)
        end)

      supports_media_upload = !Enum.empty?(media_upload_endpoints)

      paths =
        endpoints
        |> Enum.reduce(%OpenApi.Paths{}, fn %Discovery.RestMethod{path: path, httpMethod: method} =
                                              endpoint,
                                            acc ->
          full_path =
            if supports_media_upload do
              Path.join(base_path, path)
            else
              path
            end

          acc
          |> Map.put_new(full_path, %OpenApi.PathItem{parameters: global_parameter_refs})
          |> Map.update!(full_path, fn path_item ->
            Map.put(path_item, String.to_atom(String.downcase(method)), map_endpoint(endpoint))
          end)
        end)
        |> add_upload_endpoints(global_parameter_refs, media_upload_endpoints)

      openapi
      |> Map.put(:paths, paths)
      |> update_base_path(supports_media_upload)
    end

    defp add_upload_endpoints(paths, _, []), do: paths

    defp add_upload_endpoints(paths, global_parameter_refs, [method | rest]) do
      paths
      |> add_resumable_upload(method, global_parameter_refs)
      |> add_simple_upload(method, global_parameter_refs)
      |> add_upload_endpoints(global_parameter_refs, rest)
    end

    defp add_resumable_upload(
           paths,
           %Discovery.RestMethod{
             mediaUpload: %Discovery.RestMethodMediaUpload{protocols: %{resumable: %{path: path}}}
           } = endpoint,
           global_parameter_refs
         ) do
      operation = %OpenApi.Operation{
        consumes: ["multipart/form-data"],
        description: endpoint.description,
        operationId: "#{endpoint.id}.resumable",
        security: endpoint_security(endpoint),
        responses:
          Map.put(%OpenApi.Responses{}, "200", %OpenApi.Response{
            description: "Successful response"
          }),
        parameters: resumable_upload_parameters(endpoint),
        tags: endpoint_tags(endpoint)
      }

      path_item =
        %OpenApi.PathItem{
          parameters: global_parameter_refs
        }
        |> Map.put("post", operation)

      Map.put(paths, path, path_item)
    end

    defp add_resumable_upload(paths, _), do: paths

    defp add_simple_upload(
           paths,
           %Discovery.RestMethod{
             mediaUpload: %Discovery.RestMethodMediaUpload{protocols: %{simple: %{path: path}}}
           } = endpoint,
           global_parameter_refs
         ) do
      operation = %OpenApi.Operation{
        consumes: ["multipart/form-data"],
        description: endpoint.description,
        operationId: "#{endpoint.id}.simple",
        security: endpoint_security(endpoint),
        responses: endpoint_responses(endpoint.response),
        parameters: simple_upload_parameters(endpoint),
        tags: endpoint_tags(endpoint)
      }

      endpoint =
        %OpenApi.PathItem{
          parameters: global_parameter_refs
        }
        |> Map.put("post", operation)

      Map.put(paths, path, endpoint)
    end

    defp add_simple_upload(paths, _), do: paths

    defp update_base_path(openapi, false), do: openapi

    defp update_base_path(openapi, true) do
      Map.put(openapi, :basePath, "/")
    end

    defp map_endpoint(%Discovery.RestMethod{id: operation_id} = endpoint) do
      %OpenApi.Operation{
        description: endpoint.description,
        operationId: operation_id,
        security: endpoint_security(endpoint),
        responses: endpoint_responses(endpoint.response),
        parameters: endpoint_parameters(endpoint),
        tags: endpoint_tags(endpoint)
      }
    end

    defp endpoint_security(%Discovery.RestMethod{scopes: scopes}) do
      [Map.put(%OpenApi.SecurityRequirement{}, "Oauth2", scopes)]
    end

    defp endpoint_security(_), do: nil

    defp endpoint_responses(%Discovery.RestMethodResponse{:"$ref" => ref}) do
      %OpenApi.Responses{}
      |> Map.put("200", %OpenApi.Response{
        description: "Successful response",
        schema: %OpenApi.Schema{
          :"$ref" => "#/definitions/#{ref}"
        }
      })
    end

    defp endpoint_responses(_) do
      %OpenApi.Responses{}
      |> Map.put("200", %OpenApi.Response{
        description: "Successful response"
      })
    end

    defp endpoint_parameters(%Discovery.RestMethod{
           parameterOrder: parameter_order,
           parameters: parameter_config,
           request: request,
           description: description
         }) do
      parameter_order = parameter_order || []
      parameter_config = parameter_config || []

      params =
        Enum.map(parameter_order, fn name ->
          map_parameter(name, Map.fetch!(parameter_config, name))
        end)

      if request do
        params =
          params ++
            [
              %OpenApi.Parameter{
                description: description,
                in: "body",
                name: "body",
                schema: %OpenApi.Schema{
                  :"$ref" => "#/definitions/#{Map.get(request, :"$ref")}"
                }
              }
            ]
      end

      params
    end

    defp simple_upload_parameters(%Discovery.RestMethod{
           parameterOrder: parameter_order,
           parameters: parameter_config,
           request: request
         }) do
      parameter_order = parameter_order || []
      parameter_config = parameter_config || []

      params =
        Enum.map(parameter_order, fn name ->
          map_parameter(name, Map.fetch!(parameter_config, name))
        end) ++
          [
            %OpenApi.Parameter{
              description: "Upload type. Must be \"multipart\".",
              enum: ["multipart"],
              in: "query",
              name: "uploadType",
              required: true,
              type: "string"
            }
          ]

      if request do
        ref = Map.get(request, :"$ref")

        params =
          params ++
            [
              %OpenApi.Parameter{
                description: "#{ref} metadata.",
                in: "body",
                name: "metadata",
                required: true,
                schema: %OpenApi.Schema{
                  :"$ref" => "#/definitions/#{ref}"
                }
              }
            ]
      end

      params ++
        [
          %OpenApi.Parameter{
            description: "The file to upload.",
            in: "formData",
            name: "data",
            required: true,
            type: "file"
          }
        ]
    end

    defp resumable_upload_parameters(%Discovery.RestMethod{
           parameterOrder: parameter_order,
           parameters: parameter_config,
           request: request
         }) do
      parameter_order = parameter_order || []
      parameter_config = parameter_config || []

      params =
        Enum.map(parameter_order, fn name ->
          map_parameter(name, Map.fetch!(parameter_config, name))
        end) ++
          [
            %OpenApi.Parameter{
              description: "Upload type. Must be \"resumable\".",
              enum: ["resumable"],
              in: "query",
              name: "uploadType",
              required: true,
              type: "string"
            }
          ]

      if request do
        ref = Map.get(request, :"$ref")

        params =
          params ++
            [
              %OpenApi.Parameter{
                in: "body",
                name: "body",
                schema: %OpenApi.Schema{
                  :"$ref" => "#/definitions/#{ref}"
                }
              }
            ]
      end
    end

    defp endpoint_tags(%Discovery.RestMethod{id: operation_id} = method) do
      [object | _rest] = String.split(operation_id, ".", trim: true)
      [object]
    end

    defp add_external_docs(openapi, %Discovery.RestDescription{documentationLink: url}) do
      Map.put(openapi, :externalDocs, %OpenApi.ExternalDocumentation{url: url})
    end

    defp add_external_docs(openapi, _) do
      openapi
    end
  end
end
