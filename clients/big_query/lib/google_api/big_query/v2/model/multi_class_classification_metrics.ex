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

defmodule GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics do
  @moduledoc """
  Evaluation metrics for multi-class classification/classifier models.

  ## Attributes

  *   `aggregateClassificationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics.t`, *default:* `nil`) - Aggregate classification metrics.
  *   `confusionMatrixList` (*type:* `list(GoogleApi.BigQuery.V2.Model.ConfusionMatrix.t)`, *default:* `nil`) - Confusion matrix at different thresholds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateClassificationMetrics =>
            GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics.t(),
          :confusionMatrixList => list(GoogleApi.BigQuery.V2.Model.ConfusionMatrix.t())
        }

  field(
    :aggregateClassificationMetrics,
    as: GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics
  )

  field(:confusionMatrixList, as: GoogleApi.BigQuery.V2.Model.ConfusionMatrix, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
