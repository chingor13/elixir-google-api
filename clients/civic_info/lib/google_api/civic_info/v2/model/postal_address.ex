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

defmodule GoogleApi.CivicInfo.V2.Model.PostalAddress do
  @moduledoc """


  ## Attributes

  *   `addressLines` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `administrativeAreaName` (*type:* `String.t`, *default:* `nil`) - 
  *   `countryName` (*type:* `String.t`, *default:* `nil`) - 
  *   `countryNameCode` (*type:* `String.t`, *default:* `nil`) - 
  *   `dependentLocalityName` (*type:* `String.t`, *default:* `nil`) - 
  *   `dependentThoroughfareName` (*type:* `String.t`, *default:* `nil`) - 
  *   `firmName` (*type:* `String.t`, *default:* `nil`) - 
  *   `isDisputed` (*type:* `boolean()`, *default:* `nil`) - 
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - 
  *   `localityName` (*type:* `String.t`, *default:* `nil`) - 
  *   `postBoxNumber` (*type:* `String.t`, *default:* `nil`) - 
  *   `postalCodeNumber` (*type:* `String.t`, *default:* `nil`) - 
  *   `postalCodeNumberExtension` (*type:* `String.t`, *default:* `nil`) - 
  *   `premiseName` (*type:* `String.t`, *default:* `nil`) - 
  *   `recipientName` (*type:* `String.t`, *default:* `nil`) - 
  *   `sortingCode` (*type:* `String.t`, *default:* `nil`) - 
  *   `subAdministrativeAreaName` (*type:* `String.t`, *default:* `nil`) - 
  *   `subPremiseName` (*type:* `String.t`, *default:* `nil`) - 
  *   `thoroughfareName` (*type:* `String.t`, *default:* `nil`) - 
  *   `thoroughfareNumber` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressLines => list(String.t()),
          :administrativeAreaName => String.t(),
          :countryName => String.t(),
          :countryNameCode => String.t(),
          :dependentLocalityName => String.t(),
          :dependentThoroughfareName => String.t(),
          :firmName => String.t(),
          :isDisputed => boolean(),
          :languageCode => String.t(),
          :localityName => String.t(),
          :postBoxNumber => String.t(),
          :postalCodeNumber => String.t(),
          :postalCodeNumberExtension => String.t(),
          :premiseName => String.t(),
          :recipientName => String.t(),
          :sortingCode => String.t(),
          :subAdministrativeAreaName => String.t(),
          :subPremiseName => String.t(),
          :thoroughfareName => String.t(),
          :thoroughfareNumber => String.t()
        }

  field(:addressLines, type: :list)
  field(:administrativeAreaName)
  field(:countryName)
  field(:countryNameCode)
  field(:dependentLocalityName)
  field(:dependentThoroughfareName)
  field(:firmName)
  field(:isDisputed)
  field(:languageCode)
  field(:localityName)
  field(:postBoxNumber)
  field(:postalCodeNumber)
  field(:postalCodeNumberExtension)
  field(:premiseName)
  field(:recipientName)
  field(:sortingCode)
  field(:subAdministrativeAreaName)
  field(:subPremiseName)
  field(:thoroughfareName)
  field(:thoroughfareNumber)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.PostalAddress do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.PostalAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.PostalAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
