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

defmodule GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  @moduledoc """
  Confusion matrix for binary classification models.

  ## Attributes

  *   `accuracy` (*type:* `float()`, *default:* `nil`) - The fraction of predictions given the correct label.
  *   `f1Score` (*type:* `float()`, *default:* `nil`) - The equally weighted average of recall and precision.
  *   `falseNegatives` (*type:* `String.t`, *default:* `nil`) - Number of false samples predicted as false.
  *   `falsePositives` (*type:* `String.t`, *default:* `nil`) - Number of false samples predicted as true.
  *   `positiveClassThreshold` (*type:* `float()`, *default:* `nil`) - Threshold value used when computing each of the following metric.
  *   `precision` (*type:* `float()`, *default:* `nil`) - The fraction of actual positive predictions that had positive actual
      labels.
  *   `recall` (*type:* `float()`, *default:* `nil`) - The fraction of actual positive labels that were given a positive
      prediction.
  *   `trueNegatives` (*type:* `String.t`, *default:* `nil`) - Number of true samples predicted as false.
  *   `truePositives` (*type:* `String.t`, *default:* `nil`) - Number of true samples predicted as true.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracy => float(),
          :f1Score => float(),
          :falseNegatives => String.t(),
          :falsePositives => String.t(),
          :positiveClassThreshold => float(),
          :precision => float(),
          :recall => float(),
          :trueNegatives => String.t(),
          :truePositives => String.t()
        }

  field(:accuracy)
  field(:f1Score)
  field(:falseNegatives)
  field(:falsePositives)
  field(:positiveClassThreshold)
  field(:precision)
  field(:recall)
  field(:trueNegatives)
  field(:truePositives)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
