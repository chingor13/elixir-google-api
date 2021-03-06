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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  @moduledoc """
  Summary of a single transformation.
  Only one of 'transformation', 'field_transformation', or 'record_suppress'
  will be set.

  ## Attributes

  *   `field` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - Set if the transformation was limited to a specific FieldId.
  *   `fieldTransformations` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation.t)`, *default:* `nil`) - The field transformation that was applied.
      If multiple field transformations are requested for a single field,
      this list will contain all of them; otherwise, only one is supplied.
  *   `infoType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t`, *default:* `nil`) - Set if the transformation was limited to a specific InfoType.
  *   `recordSuppress` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression.t`, *default:* `nil`) - The specific suppression option these stats apply to.
  *   `results` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SummaryResult.t)`, *default:* `nil`) - 
  *   `transformation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t`, *default:* `nil`) - The specific transformation these stats apply to.
  *   `transformedBytes` (*type:* `String.t`, *default:* `nil`) - Total size in bytes that were transformed in some way.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t(),
          :fieldTransformations =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation.t()),
          :infoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t(),
          :recordSuppress => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression.t(),
          :results => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SummaryResult.t()),
          :transformation => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t(),
          :transformedBytes => String.t()
        }

  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)

  field(
    :fieldTransformations,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldTransformation,
    type: :list
  )

  field(:infoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
  field(:recordSuppress, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RecordSuppression)
  field(:results, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SummaryResult, type: :list)
  field(:transformation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation)
  field(:transformedBytes)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
