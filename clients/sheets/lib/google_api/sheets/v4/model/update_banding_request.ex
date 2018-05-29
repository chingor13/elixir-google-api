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

defmodule GoogleApi.Sheets.V4.Model.UpdateBandingRequest do
  @moduledoc """
  Updates properties of the supplied banded range.

  ## Attributes

  - bandedRange (BandedRange): The banded range to update with the new properties. Defaults to: `null`.
  - fields (String.t): The fields that should be updated.  At least one field must be specified. The root &#x60;bandedRange&#x60; is implied and should not be specified. A single &#x60;\&quot;*\&quot;&#x60; can be used as short-hand for listing every field. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          bandedRange: GoogleApi.Sheets.V4.Model.BandedRange.t(),
          fields: any()
        }

  defstruct [
    :bandedRange,
    :fields
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateBandingRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bandedRange, :struct, GoogleApi.Sheets.V4.Model.BandedRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateBandingRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
