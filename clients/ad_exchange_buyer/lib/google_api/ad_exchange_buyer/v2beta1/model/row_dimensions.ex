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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions do
  @moduledoc """
  A response may include multiple rows, breaking down along various dimensions.
  Encapsulates the values of all dimensions for a given row.

  ## Attributes

  *   `publisherIdentifier` (*type:* `String.t`, *default:* `nil`) - The publisher identifier for this row, if a breakdown by
      [BreakdownDimension.PUBLISHER_IDENTIFIER](https://developers.google.com/authorized-buyers/apis/reference/rest/v2beta1/bidders.accounts.filterSets#FilterSet.BreakdownDimension)
      was requested.
  *   `timeInterval` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval.t`, *default:* `nil`) - The time interval that this row represents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :publisherIdentifier => String.t(),
          :timeInterval => GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval.t()
        }

  field(:publisherIdentifier)
  field(:timeInterval, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.TimeInterval)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
