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

defmodule GoogleApis.ConverterTest do
  use ExUnit.Case

  test "node converter" do
    {:ok, file} =
      "TestClient"
      |> GoogleApis.ApiConfig.load
      |> List.first
      |> GoogleApis.Converter.ApiSpecConverter.convert

    openapi =
      file
      |> File.read!
      |> Poison.decode!

    # IO.inspect openapi
    assert_discovery_format(openapi)
  end

  test "elixir converter" do
    {:ok, file} =
      "TestClient"
      |> GoogleApis.ApiConfig.load
      |> List.first
      |> GoogleApis.Converter.ElixirSpecConverter.convert

    openapi =
      file
      |> File.read!
      |> Poison.decode!

    # IO.inspect openapi
    assert_discovery_format(openapi)
  end

  defp assert_discovery_format(openapi) do
    assert %{
      "swagger" => "2.0",
      "info" => %{
        "contact" => %{
          "name" => "Google",
          "url" => "https://google.com"
        },
        "description" => "Test client for testing generated clients",
        "license" => %{
          "name" => _name,
          "url" => _url
        },
        "termsOfService" => "https://developers.google.com/terms/",
        "title" => "Test Client",
        "version" => "v1"
      },
      "host" => "localhost:8080",
      "basePath" => "/",
      "schemes" => [
        "http"
      ],
      "paths" => paths,
      "definitions" => definitions,
      "parameters" => parameters,
      "securityDefinitions" => %{
        "Oauth2" => %{
          "authorizationUrl" => "https://accounts.google.com/o/oauth2/auth",
          "description" => "Oauth 2.0 authentication",
          "flow" => "implicit",
          "scopes" => %{
            "https://www.googleapis.com/auth/adexchange.buyer" => "Manage your Ad Exchange buyer account configuration"
          },
          "type" => "oauth2"
        }
      },
      "tags" => [
        %{ "name" => "objects" }
      ],
      "externalDocs" => %{
        "url" => "https://github.com/GoogleCloudPlatform/elixir-google-api"
      }
    } = openapi
    assert %{
      "alt" => %{
        "default" => "json",
        "description" => "Data format for the response.",
        "enum" => ["json"],
        "in" => "query",
        "name" => "alt",
        "type" => "string"
      }
    } = parameters

    assert_integer_path(paths)
    # assert_upload_path(paths)
    assert_definitions(definitions)
  end

  defp assert_integer_path(paths) do
    assert {:ok, path} = Map.fetch(paths, "/test/v1/b/{bucket}/o/{id}")
    assert_global_path_parameters(path)
    assert {:ok, operation} = Map.fetch(path, "get")
    assert %{
      "description" => "Gets a single object by Id.",
      "operationId" => "objects.get",
      "parameters" => [
        %{
          "description" => "Name of the bucket where the object is stored",
          "in" => "path",
          "name" => "bucket",
          "required" => true,
          "type" => "string"
        },
        %{
          "description" => "The object id",
          "format" => "int32",
          "in" => "path",
          "name" => "id",
          "required" => true,
          "type" => "integer"
        },
        %{
          "collectionFormat" => "multi",
          "description" => "The category of the items. Must match all.",
          "in" => "query",
          "items" => %{"type" => "string"},
          "name" => "category",
          "type" => "array"
        }
      ],
      "responses" => %{
        "200" => %{
          "description" => "Successful response",
          "schema" => %{"$ref" => "#/definitions/Container"}
        }
      },
      "security" => [%{"Oauth2" => ["https://example.com/objects.read"]}],
      "tags" => ["objects"]
    } = operation
  end

  defp assert_global_path_parameters(path) do
    assert %{
      "parameters" => [%{"$ref" => "#/parameters/alt"}]
    } = path
  end

  defp assert_upload_path(paths) do
    assert {:ok, path} = Map.fetch(paths, "/upload/v1/b/{bucket}/o")
    assert_global_path_parameters(path)
    assert {:ok, operation} = Map.fetch(path, "post")
    assert %{
      "consumes" => ["multipart/form-data"],
      "description" => "Stores a new object and metadata",
      "operationId" => "objects.insert.simple",
      "parameters" => [
        %{
          "description" => "Name of the bucket where the object is stored",
          "in" => "path",
          "name" => "bucket",
          "required" => true,
          "type" => "string"
        },
        %{
          "description" => "Name of the object. Required when the object metadata is not otherwise provided.",
          "in" => "query",
          "name" => "name",
          "type" => "string"
        },
        %{
          "description" => "Upload type. Must be \"multipart\".",
          "enum" => ["multipart"],
          "in" => "query",
          "name" => "uploadType",
          "required" => true,
          "type" => "string"
        },
        %{
          "description" => "Container metadata.",
          "in" => "body",
          "name" => "metadata",
          "required" => true,
          "schema" => %{"$ref" => "#/definitions/Container"}
        },
        %{
          "description" => "The file to upload.",
          "in" => "formData",
          "name" => "data",
          "required" => true,
          "type" => "file"
        }
      ],
      "responses" => %{
        "200" => %{
          "description" => "Successful response",
          "schema" => %{"$ref" => "#/definitions/Container"}
        }
      },
      "security" => [%{"Oauth2" => ["https://example.com/objects.insert"]}],
      "tags" => ["objects"]
    } = operation
  end

  defp assert_definitions(definitions) do
    assert %{
      "Container" => container,
      "DateContainer" => date_container,
      "GenericContainer" => generic_container,
      "NestedContainer" => nested_container
    } = definitions
    assert %{
      "description" => "A data structure to test simple types",
      "properties" => %{
        "arrayRefVal" => %{
          "description" => "An array of reference objects",
          "items" => %{"$ref" => "#/definitions/Container"},
          "type" => "array"
        },
        "arrayVal" => %{
          "description" => "An array of strings",
          "items" => %{"type" => "string"},
          "type" => "array"
        },
        "booleanVal" => %{
          "description" => "A simple boolean",
          "type" => "boolean"
        },
        "numberVal" => %{"description" => "A simple number", "type" => "number"},
        "objectRefVal" => %{
          "$ref" => "#/definitions/Container",
          "description" => "A reference to an object definition."
        },
        "objectVal" => %{
          "description" => "An inline object definition",
          "properties" => %{
            "field1" => %{
              "description" => "Field 1 for internal type",
              "type" => "string"
            }
          },
          "type" => "object"
        },
        "stringVal" => %{"description" => "A simple string", "type" => "string"}
      },
      "type" => "object"
    } = container
    assert %{
      "description" => "A data structure to test different date types",
      "properties" => %{
        "dateTimeVal" => %{
          "description" => "A simple date-time field",
          "format" => "date-time",
          "type" => "string"
        },
        "dateVal" => %{
          "description" => "A simple date field",
          "format" => "date",
          "type" => "string"
        },
        "googleDateVal" => %{
          "description" => "A google-datetime field",
          "format" => "date-time",
          "type" => "string"
        }
      },
      "type" => "object"
    } = date_container
    assert %{
      "description" => "A data structure to test different any types",
      "properties" => %{
        "any" => %{"description" => "A generic field type", "type" => "string"},
        "attributes" => %{
          "additionalProperties" => %{
            "description" => "Properties of the object.",
            "type" => "string"
          },
          "description" => "This field can contain anything",
          "type" => "object"
        },
        "listOfAny" => %{
          "description" => "Contains a list of anything",
          "items" => %{"type" => "string"},
          "type" => "array"
        },
        "mapOfRefs" => %{
          "additionalProperties" => %{
            "$ref" => "#/definitions/Container",
            "description" => "Object value of the map"
          },
          "description" => "A map of references to objects",
          "type" => "object"
        }
      },
      "type" => "object"
    } = generic_container
    assert %{
      "description" => "Container that has lists of lists of data objects",
      "properties" => %{
        "rows" => %{
          "description" => "A list of lists of data objects",
          "items" => %{
            "items" => %{
              "description" => "A deeply nested object",
              "properties" => %{
                "nestedArrayValue" => %{
                  "description" => "An array value on a deeply nested object",
                  "items" => %{
                    "properties" => %{
                      "stringVal" => %{
                        "description" => "A string value on a deeply nested object",
                        "type" => "string"
                      }
                    },
                    "type" => "object"
                  },
                  "type" => "array"
                },
                "primitiveValue" => %{
                  "description" => "A primitive dimension value. A primitive metric value.",
                  "type" => "string"
                }
              },
              "type" => "object"
            },
            "type" => "array"
          },
          "type" => "array"
        }
      },
      "type" => "object"
    } = nested_container
  end
end