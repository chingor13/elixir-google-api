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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable do
  @moduledoc """
  An auxiliary table containing statistical information on the relative
  frequency of different quasi-identifiers values. It has one or several
  quasi-identifiers columns, and one column that indicates the relative
  frequency of each quasi-identifier tuple.
  If a tuple is present in the data but not in the auxiliary table, the
  corresponding relative frequency is assumed to be zero (and thus, the
  tuple is highly reidentifiable).

  ## Attributes

  *   `quasiIds` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField.t)`, *default:* `nil`) - Quasi-identifier columns. [required]
  *   `relativeFrequency` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - The relative frequency column must contain a floating-point number
      between 0 and 1 (inclusive). Null values are assumed to be zero.
      [required]
  *   `table` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - Auxiliary table location. [required]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :quasiIds => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField.t()),
          :relativeFrequency => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t(),
          :table => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t()
        }

  field(:quasiIds, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField, type: :list)
  field(:relativeFrequency, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
  field(:table, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
