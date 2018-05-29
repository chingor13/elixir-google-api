# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.Borders do
  @moduledoc """
  The borders of the cell.

  ## Attributes

  - bottom (Border): The bottom border of the cell. Defaults to: `null`.
  - left (Border): The left border of the cell. Defaults to: `null`.
  - right (Border): The right border of the cell. Defaults to: `null`.
  - top (Border): The top border of the cell. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          bottom: GoogleApi.Sheets.V4.Model.Border.t(),
          left: GoogleApi.Sheets.V4.Model.Border.t(),
          right: GoogleApi.Sheets.V4.Model.Border.t(),
          top: GoogleApi.Sheets.V4.Model.Border.t()
        }

  defstruct [
    :bottom,
    :left,
    :right,
    :top
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Borders do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bottom, :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:left, :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:right, :struct, GoogleApi.Sheets.V4.Model.Border, options)
    |> deserialize(:top, :struct, GoogleApi.Sheets.V4.Model.Border, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Borders do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
