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
  require Logger

  def convert(api_config = %ApiConfig{}) do
    file = ApiConfig.google_spec_file(api_config)
    output = ApiConfig.openapi_spec_file(api_config)
    Logger.info("Converting #{file} to #{output}")

    openapi =
      file
      |> File.read!()
      |> Jason.decode!()
      |> OpenApi2.from_gdd()
      # |> Jason.encode!()

    # IO.inspect(openapi["definitions"])

    if File.exists?(output) do
      existing =
        output
        |> File.read!()
        |> Jason.decode!()

      control = existing["definitions"]
      sample = openapi["definitions"]
      if Map.equal?(control, sample) do
        IO.puts "same"
      else
        MapDiff.diff(control, sample)
        |> IO.inspect
      end
    end

    # File.write(output_path, openapi)

    {:ok, ""}
  end

  defmodule OpenApi2 do
    require Logger

    def from_gdd(gdd) do
      %{"swagger" => "2.0"}
      |> add_info(gdd)
      |> add_host_info(gdd)
      |> add_definitions(gdd)
      |> add_parameters(gdd)
      |> add_security_definitions(gdd)
      |> add_tags(gdd)
      |> add_paths(gdd)
      |> add_external_docs(gdd)
    end

    defp add_info(openapi, %{"title" => title, "description" => description, "version" => version}) do
      Map.put(openapi, "info", %{
        "title" => title,
        "description" => description,
        "contact" => %{
          "name" => "Google",
          "url" => "https://google.com"
        },
        "version" => version,
        "license" => %{
          "name" => "Apache 2.0",
          "url" => "https://apache.org/licenses/LICENSE-2.0"
        },
        "termsOfService" => "https://developers.google.com/terms/"
      })
    end

    defp add_host_info(openapi, %{"rootUrl" => root_url}) do
      %URI{host: host, path: base_path, scheme: scheme} = URI.parse(root_url)

      openapi
      |> Map.put("host", host)
      |> Map.put("basePath", base_path)
      |> Map.put("schemes", [scheme])
    end

    defp add_definitions(openapi, %{"schemas" => schemas}) do
      definitions =
        schemas
        |> Enum.reduce(%{}, fn {name, schema}, acc ->
          Map.put(acc, name, schema_to_definition(schema))
        end)

      Map.put(openapi, "definitions", definitions)
    end
    defp schema_to_definition(schema) do
      schema
      |> Map.take(["type", "description", "properties", "default"])
      |> Map.update("properties", %{}, fn properties ->
        Enum.reduce(properties, %{}, fn {name, config}, acc ->
          Map.put(acc, name, map_property(config))
        end)
      end)
    end
    defp map_property(%{"type" => "object"} = property) do
      property
      |> Map.take(["default", "description", "type", "properties", "$ref", "additionalProperties"])
      |> update_ref
      |> update_properties
      |> update_additional_properties
    end
    defp map_property(%{"type" => "array"} = property) do
      property
      |> Map.take(["default", "description", "items", "type", "$ref"])
      |> update_ref
      |> update_items
    end
    defp map_property(property) do
      property
      |> Map.take(["default", "description", "format", "type", "properties", "$ref"])
      |> set_default_type
      |> update_ref
      |> update_format
    end
    defp set_default_type(%{"$ref" => _} = property), do: property
    defp set_default_type(%{"type" => "any"} = property), do: Map.put(property, "type", "string")
    defp set_default_type(%{"type" => _} = property), do: property
    defp set_default_type(property), do: Map.put(property, "type", "string")

    defp update_ref(%{"$ref" => _} = property) do
      Map.update!(property, "$ref", fn ref ->
        "#/definitions/#{ref}"
      end)
    end
    defp update_ref(property), do: property

    defp update_format(%{"format" => "google-datetime"} = property) do
      Map.put(property, "format", "date-time")
    end
    defp update_format(property), do: property

    defp update_properties(%{"properties" => _} = property) do
      Map.update!(property, "properties", fn properties ->
        Enum.reduce(properties, %{}, fn {name, property}, acc ->
          Map.put(acc, name, map_property(property))
        end)
      end)
    end
    defp update_properties(property), do: property

    defp update_additional_properties(%{"additionalProperties" => _} = property) do
      Map.update!(property, "additionalProperties", &map_property/1)
    end
    defp update_additional_properties(property), do: property

    defp update_items(%{"items" => _} = property) do
      Map.update!(property, "items", &map_property/1)
    end

    defp add_parameters(openapi, %{"parameters" => parameters}) do
      Map.put(openapi, "parameters", %{})
    end

    defp add_security_definitions(openapi, %{"auth" => %{"oauth2" => %{"scopes" => scopes}}}) do
      Map.put(openapi, "securityDefinitions", %{
        "Oauth2" => %{
          "type" => "oauth2",
          "description" => "Oauth 2.0 authentication",
          "flow" => "implicit",
          "authorizationUrl" => "https://accounts.google.com/o/oauth2/auth",
          "scopes" =>
            Enum.reduce(scopes, %{}, fn {scope, %{"description" => description}}, acc ->
              Map.put(acc, scope, description)
            end)
        }
      })
    end

    defp add_security_definitions(openapi, _) do
      Logger.warn("Invalid auth section")
      openapi
    end

    defp add_tags(openapi, %{"resources" => resources}) do
      Map.put(openapi, "tags", Enum.map(resources, fn {name, _config} -> %{"name" => name} end))
    end

    defp add_security_definitions(openapi, _) do
      Logger.warn("No resources, no tags to create")
      Map.put(openapi, "tags", [])
    end

    defp add_paths(openapi, _gdd) do
      openapi
    end

    defp add_external_docs(openapi, %{"documentationLink" => url}) do
      Map.put(openapi, "externalDocs", %{"url" => url})
    end

    defp add_external_docs(openapi, _) do
      openapi
    end
  end
end
