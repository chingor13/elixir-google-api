# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V33.Model.CountriesListResponse do
  @moduledoc """
  Country List Response

  ## Attributes

  *   `countries` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Country.t)`, *default:* `nil`) - Country collection.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#countriesListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#countriesListResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countries => list(GoogleApi.DFAReporting.V33.Model.Country.t()),
          :kind => String.t()
        }

  field(:countries, as: GoogleApi.DFAReporting.V33.Model.Country, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CountriesListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CountriesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CountriesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
