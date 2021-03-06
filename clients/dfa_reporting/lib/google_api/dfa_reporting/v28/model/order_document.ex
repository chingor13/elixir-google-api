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

defmodule GoogleApi.DFAReporting.V28.Model.OrderDocument do
  @moduledoc """
  Contains properties of a Planning order document.

  ## Attributes

  - accountId (String.t): Account ID of this order document. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this order document. Defaults to: `null`.
  - amendedOrderDocumentId (String.t): The amended order document ID of this order document. An order document can be created by optionally amending another order document so that the change history can be preserved. Defaults to: `null`.
  - approvedByUserProfileIds ([String.t]): IDs of users who have approved this order document. Defaults to: `null`.
  - cancelled (boolean()): Whether this order document is cancelled. Defaults to: `null`.
  - createdInfo (LastModifiedInfo): Information about the creation of this order document. Defaults to: `null`.
  - effectiveDate (Date.t): Effective date of this order document. Defaults to: `null`.
  - id (String.t): ID of this order document. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#orderDocument\&quot;. Defaults to: `null`.
  - lastSentRecipients ([String.t]): List of email addresses that received the last sent document. Defaults to: `null`.
  - lastSentTime (DateTime.t): Timestamp of the last email sent with this order document. Defaults to: `null`.
  - orderId (String.t): ID of the order from which this order document is created. Defaults to: `null`.
  - projectId (String.t): Project ID of this order document. Defaults to: `null`.
  - signed (boolean()): Whether this order document has been signed. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this order document. Defaults to: `null`.
  - title (String.t): Title of this order document. Defaults to: `null`.
  - type (String.t): Type of this order document Defaults to: `null`.
    - Enum - one of [PLANNING_ORDER_TYPE_CHANGE_ORDER, PLANNING_ORDER_TYPE_INSERTION_ORDER]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :advertiserId => any(),
          :amendedOrderDocumentId => any(),
          :approvedByUserProfileIds => list(any()),
          :cancelled => any(),
          :createdInfo => GoogleApi.DFAReporting.V28.Model.LastModifiedInfo.t(),
          :effectiveDate => Date.t(),
          :id => any(),
          :kind => any(),
          :lastSentRecipients => list(any()),
          :lastSentTime => DateTime.t(),
          :orderId => any(),
          :projectId => any(),
          :signed => any(),
          :subaccountId => any(),
          :title => any(),
          :type => any()
        }

  field(:accountId)
  field(:advertiserId)
  field(:amendedOrderDocumentId)
  field(:approvedByUserProfileIds, type: :list)
  field(:cancelled)
  field(:createdInfo, as: GoogleApi.DFAReporting.V28.Model.LastModifiedInfo)
  field(:effectiveDate, as: Date)
  field(:id)
  field(:kind)
  field(:lastSentRecipients, type: :list)
  field(:lastSentTime, as: DateTime)
  field(:orderId)
  field(:projectId)
  field(:signed)
  field(:subaccountId)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.OrderDocument do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.OrderDocument.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.OrderDocument do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
