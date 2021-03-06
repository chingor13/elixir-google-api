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

defmodule GoogleApi.Content.V2.Model.ShipmentInvoice do
  @moduledoc """


  ## Attributes

  *   `invoiceSummary` (*type:* `GoogleApi.Content.V2.Model.InvoiceSummary.t`, *default:* `nil`) - [required] Invoice summary.
  *   `lineItemInvoices` (*type:* `list(GoogleApi.Content.V2.Model.ShipmentInvoiceLineItemInvoice.t)`, *default:* `nil`) - [required] Invoice details per line item.
  *   `shipmentGroupId` (*type:* `String.t`, *default:* `nil`) - [required] ID of the shipment group. It is assigned by the merchant in the shipLineItems method and is used to group multiple line items that have the same kind of shipping charges.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :invoiceSummary => GoogleApi.Content.V2.Model.InvoiceSummary.t(),
          :lineItemInvoices =>
            list(GoogleApi.Content.V2.Model.ShipmentInvoiceLineItemInvoice.t()),
          :shipmentGroupId => String.t()
        }

  field(:invoiceSummary, as: GoogleApi.Content.V2.Model.InvoiceSummary)

  field(
    :lineItemInvoices,
    as: GoogleApi.Content.V2.Model.ShipmentInvoiceLineItemInvoice,
    type: :list
  )

  field(:shipmentGroupId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ShipmentInvoice do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ShipmentInvoice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ShipmentInvoice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
