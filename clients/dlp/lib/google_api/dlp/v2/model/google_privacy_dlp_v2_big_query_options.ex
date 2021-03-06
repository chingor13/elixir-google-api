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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions do
  @moduledoc """
  Options defining BigQuery table and row identifiers.

  ## Attributes

  *   `excludedFields` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t)`, *default:* `nil`) - References to fields excluded from scanning. This allows you to skip
      inspection of entire columns which you know have no findings.
  *   `identifyingFields` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t)`, *default:* `nil`) - References to fields uniquely identifying rows within the table.
      Nested fields in the format, like `person.birthdate.year`, are allowed.
  *   `rowsLimit` (*type:* `String.t`, *default:* `nil`) - Max number of rows to scan. If the table has more rows than this value, the
      rest of the rows are omitted. If not set, or if set to 0, all rows will be
      scanned. Only one of rows_limit and rows_limit_percent can be specified.
      Cannot be used in conjunction with TimespanConfig.
  *   `rowsLimitPercent` (*type:* `integer()`, *default:* `nil`) - Max percentage of rows to scan. The rest are omitted. The number of rows
      scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and
      100 means no limit. Defaults to 0. Only one of rows_limit and
      rows_limit_percent can be specified. Cannot be used in conjunction with
      TimespanConfig.
  *   `sampleMethod` (*type:* `String.t`, *default:* `nil`) - 
  *   `tableReference` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - Complete BigQuery table reference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedFields => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()),
          :identifyingFields => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()),
          :rowsLimit => String.t(),
          :rowsLimitPercent => integer(),
          :sampleMethod => String.t(),
          :tableReference => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t()
        }

  field(:excludedFields, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId, type: :list)
  field(:identifyingFields, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId, type: :list)
  field(:rowsLimit)
  field(:rowsLimitPercent)
  field(:sampleMethod)
  field(:tableReference, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
