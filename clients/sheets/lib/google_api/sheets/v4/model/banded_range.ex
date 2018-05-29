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

defmodule GoogleApi.Sheets.V4.Model.BandedRange do
  @moduledoc """
  A banded (alternating colors) range in a sheet.

  ## Attributes

  - bandedRangeId (integer()): The id of the banded range. Defaults to: `null`.
  - columnProperties (BandingProperties): Properties for column bands. These properties will be applied on a column- by-column basis throughout all the columns in the range. At least one of row_properties or column_properties must be specified. Defaults to: `null`.
  - range (GridRange): The range over which these properties are applied. Defaults to: `null`.
  - rowProperties (BandingProperties): Properties for row bands. These properties will be applied on a row-by-row basis throughout all the rows in the range. At least one of row_properties or column_properties must be specified. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          bandedRangeId: any(),
          columnProperties: GoogleApi.Sheets.V4.Model.BandingProperties.t(),
          range: GoogleApi.Sheets.V4.Model.GridRange.t(),
          rowProperties: GoogleApi.Sheets.V4.Model.BandingProperties.t()
        }

  defstruct [
    :bandedRangeId,
    :columnProperties,
    :range,
    :rowProperties
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BandedRange do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :columnProperties,
      :struct,
      GoogleApi.Sheets.V4.Model.BandingProperties,
      options
    )
    |> deserialize(:range, :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
    |> deserialize(:rowProperties, :struct, GoogleApi.Sheets.V4.Model.BandingProperties, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BandedRange do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
