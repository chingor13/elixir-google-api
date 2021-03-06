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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrectionsContexts do
  @moduledoc """


  ## Attributes

  *   `auctionType` (*type:* `list(String.t)`, *default:* `nil`) - Only set when contextType=AUCTION_TYPE. Represents the auction types this correction applies to.
  *   `contextType` (*type:* `String.t`, *default:* `nil`) - The type of context (e.g., location, platform, auction type, SSL-ness).
  *   `geoCriteriaId` (*type:* `list(integer())`, *default:* `nil`) - Only set when contextType=LOCATION. Represents the geo criterias this correction applies to.
  *   `platform` (*type:* `list(String.t)`, *default:* `nil`) - Only set when contextType=PLATFORM. Represents the platforms this correction applies to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auctionType => list(String.t()),
          :contextType => String.t(),
          :geoCriteriaId => list(integer()),
          :platform => list(String.t())
        }

  field(:auctionType, type: :list)
  field(:contextType)
  field(:geoCriteriaId, type: :list)
  field(:platform, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrectionsContexts do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrectionsContexts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrectionsContexts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
