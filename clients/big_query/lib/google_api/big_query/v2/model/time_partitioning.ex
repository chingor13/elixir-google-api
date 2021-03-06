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

defmodule GoogleApi.BigQuery.V2.Model.TimePartitioning do
  @moduledoc """


  ## Attributes

  *   `expirationMs` (*type:* `String.t`, *default:* `nil`) - [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
  *   `field` (*type:* `String.t`, *default:* `nil`) - [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
  *   `requirePartitionFilter` (*type:* `boolean()`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - [Required] The only type supported is DAY, which will generate one partition per day.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationMs => String.t(),
          :field => String.t(),
          :requirePartitionFilter => boolean(),
          :type => String.t()
        }

  field(:expirationMs)
  field(:field)
  field(:requirePartitionFilter)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TimePartitioning do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TimePartitioning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TimePartitioning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
