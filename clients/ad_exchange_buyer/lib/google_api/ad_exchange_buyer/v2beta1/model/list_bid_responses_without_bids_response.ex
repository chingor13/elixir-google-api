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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponsesWithoutBidsResponse do
  @moduledoc """
  Response message for listing all reasons that bid responses were considered to have no applicable bids.

  ## Attributes

  - bidResponseWithoutBidsStatusRows ([BidResponseWithoutBidsStatusRow]): List of rows, with counts of bid responses without bids aggregated by status. Defaults to: `null`.
  - nextPageToken (String.t): A token to retrieve the next page of results. Pass this value in the ListBidResponsesWithoutBidsRequest.pageToken field in the subsequent call to the bidResponsesWithoutBids.list method to retrieve the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bidResponseWithoutBidsStatusRows =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.BidResponseWithoutBidsStatusRow.t()),
          :nextPageToken => any()
        }

  field(
    :bidResponseWithoutBidsStatusRows,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.BidResponseWithoutBidsStatusRow,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponsesWithoutBidsResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponsesWithoutBidsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListBidResponsesWithoutBidsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end