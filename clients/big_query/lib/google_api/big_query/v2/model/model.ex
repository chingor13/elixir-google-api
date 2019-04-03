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

defmodule GoogleApi.BigQuery.V2.Model.Model do
  @moduledoc """


  ## Attributes

  - creationTime (String.t): Output only. The time when this model was created, in millisecs since the epoch. Defaults to: `null`.
  - description (String.t): [Optional] A user-friendly description of this model. @mutable bigquery.models.patch Defaults to: `null`.
  - etag (String.t): Output only. A hash of this resource. Defaults to: `null`.
  - expirationTime (String.t): [Optional] The time when this model expires, in milliseconds since the epoch. If not present, the model will persist indefinitely. Expired models will be deleted and their storage reclaimed.  The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created models. @mutable bigquery.models.patch Defaults to: `null`.
  - featureColumns ([StandardSqlField]): Output only. Input feature columns that were used to train this model. Defaults to: `null`.
  - friendlyName (String.t): [Optional] A descriptive name for this model. @mutable bigquery.models.patch Defaults to: `null`.
  - labelColumns ([StandardSqlField]): Output only. Label columns that were used to train this model. The output of the model will have a “predicted_” prefix to these columns. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): [Optional] The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key. @mutable bigquery.models.patch Defaults to: `null`.
  - lastModifiedTime (String.t): Output only. The time when this model was last modified, in millisecs since the epoch. Defaults to: `null`.
  - location (String.t): Output only. The geographic location where the model resides. This value is inherited from the dataset. Defaults to: `null`.
  - modelReference (ModelReference): Required. Unique identifier for this model. Defaults to: `null`.
  - modelType (String.t): Output only. Type of the model resource. Defaults to: `null`.
    - Enum - one of [MODEL_TYPE_UNSPECIFIED, LINEAR_REGRESSION, LOGISTIC_REGRESSION, KMEANS]
  - trainingRuns ([TrainingRun]): Output only. Information for all training runs in increasing order of start_time. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => any(),
          :description => any(),
          :etag => any(),
          :expirationTime => any(),
          :featureColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()),
          :friendlyName => any(),
          :labelColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()),
          :labels => map(),
          :lastModifiedTime => any(),
          :location => any(),
          :modelReference => GoogleApi.BigQuery.V2.Model.ModelReference.t(),
          :modelType => any(),
          :trainingRuns => list(GoogleApi.BigQuery.V2.Model.TrainingRun.t())
        }

  field(:creationTime)
  field(:description)
  field(:etag)
  field(:expirationTime)
  field(:featureColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:friendlyName)
  field(:labelColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:labels, type: :map)
  field(:lastModifiedTime)
  field(:location)
  field(:modelReference, as: GoogleApi.BigQuery.V2.Model.ModelReference)
  field(:modelType)
  field(:trainingRuns, as: GoogleApi.BigQuery.V2.Model.TrainingRun, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Model.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end