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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_OperationMetadata do
  @moduledoc """
  Represents the metadata of the long-running operation.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation was submitted.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time operation processing completed.
  *   `isCancellationRequested` (*type:* `boolean()`, *default:* `nil`) - Indicates whether a request to cancel this operation has been made.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The user labels, inherited from the model or the model version being
      operated on.
  *   `modelName` (*type:* `String.t`, *default:* `nil`) - Contains the name of the model associated with the operation.
  *   `operationType` (*type:* `String.t`, *default:* `nil`) - The operation type.
  *   `projectNumber` (*type:* `String.t`, *default:* `nil`) - Contains the project number associated with the operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time operation processing started.
  *   `version` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t`, *default:* `nil`) - Contains the version associated with the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :isCancellationRequested => boolean(),
          :labels => map(),
          :modelName => String.t(),
          :operationType => String.t(),
          :projectNumber => String.t(),
          :startTime => DateTime.t(),
          :version => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t()
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:isCancellationRequested)
  field(:labels, type: :map)
  field(:modelName)
  field(:operationType)
  field(:projectNumber)
  field(:startTime, as: DateTime)
  field(:version, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_OperationMetadata do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
