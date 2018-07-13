# Copyright 2017 Google Inc.
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

defmodule GoogleApis do
  @moduledoc """
  This module contains helper functions for downloading, fetching, converting
  API specifications and generating clients from the specifications.
  """

  @discovery_url "https://www.googleapis.com/discovery/v1/apis"

  require Logger
  alias GoogleApis.ApiConfig

  @doc """
  Download the list of preferred APIs from the A
  """
  def discover() do
    discover("apis-candidate.json")
  end
  def discover(file) do
    with %Tesla.Env{status: 200, body: body} <- Tesla.get(@discovery_url),
         {:ok, %{"items" => apis}}           <- Poison.decode(body)
    do
      json =
        apis
        |> Enum.filter(&GoogleApis.DirectoryItem.preferred?/1)
        |> Enum.map(&Map.take(&1, ["name", "discoveryRestUrl", "version"]))
        |> Poison.encode!(pretty: true)

      file = Path.expand("./config/#{file}")
      File.write(file, json)
    else
      %Tesla.Env{status: status} ->
        {:error, "Error received status: #{status} from discovery endpoint"}
      err ->
        err
    end
  end

  def fetch(api_config) do
    file = ApiConfig.google_spec_file(api_config)

    with {:ok, {body, _format}} <- GoogleApis.Discovery.fetch(api_config.url),
         :ok <- File.mkdir_p(Path.dirname(file)),
         :ok <- File.write(file, body) do
      {:ok, file}
    else
      error -> IO.inspect(error)
    end
  end

  def convert_spec(api_config = %ApiConfig{}) do
    converter = Application.get_env(:google_apis, :spec_converter)
    converter.convert(api_config)
  end

  def generate_config(api_config) do
    file = ApiConfig.config_file(api_config)
    swagger_config = GoogleApis.SwaggerConfig.from_api_config(api_config)

    file |> Path.dirname() |> File.mkdir_p()
    File.write(file, Poison.encode!(swagger_config, pretty: true))
  end

  def generate_client(api_config) do
    generator = Application.get_env(:google_apis, :client_generator)
    generator.generate_client(api_config)
  end

  def format_client(api_config) do
    name = GoogleApis.ApiConfig.library_name(api_config)

    ["clients/#{name}/lib/**/*.{ex,exs}"]
    |> Mix.Tasks.Format.run()
  end
end
