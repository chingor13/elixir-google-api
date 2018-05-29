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

defmodule GoogleApi.Sheets.V4.Model.CutPasteRequest do
  @moduledoc """
  Moves data from the source to the destination.

  ## Attributes

  - destination (GridCoordinate): The top-left coordinate where the data should be pasted. Defaults to: `null`.
  - pasteType (String.t): What kind of data to paste.  All the source data will be cut, regardless of what is pasted. Defaults to: `null`.
    - Enum - one of [PASTE_NORMAL, PASTE_VALUES, PASTE_FORMAT, PASTE_NO_BORDERS, PASTE_FORMULA, PASTE_DATA_VALIDATION, PASTE_CONDITIONAL_FORMATTING]
  - source (GridRange): The source data to cut. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          destination: GoogleApi.Sheets.V4.Model.GridCoordinate.t(),
          pasteType: any(),
          source: GoogleApi.Sheets.V4.Model.GridRange.t()
        }

  defstruct [
    :destination,
    :pasteType,
    :source
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CutPasteRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:destination, :struct, GoogleApi.Sheets.V4.Model.GridCoordinate, options)
    |> deserialize(:source, :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CutPasteRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
