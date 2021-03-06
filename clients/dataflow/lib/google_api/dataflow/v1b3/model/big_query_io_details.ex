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

defmodule GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails do
  @moduledoc """
  Metadata for a BigQuery connector used by the job.

  ## Attributes

  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Dataset accessed in the connection.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project accessed in the connection.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Query used to access data in the connection.
  *   `table` (*type:* `String.t`, *default:* `nil`) - Table accessed in the connection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => String.t(),
          :projectId => String.t(),
          :query => String.t(),
          :table => String.t()
        }

  field(:dataset)
  field(:projectId)
  field(:query)
  field(:table)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.BigQueryIODetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
