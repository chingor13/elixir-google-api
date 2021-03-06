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

defmodule GoogleApi.AppEngine.V1.Model.Instance do
  @moduledoc """
  An Instance resource is the computing unit that App Engine uses to automatically scale an application.

  ## Attributes

  *   `appEngineRelease` (*type:* `String.t`, *default:* `nil`) - App Engine release this instance is running on.@OutputOnly
  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability of the instance.@OutputOnly
  *   `averageLatency` (*type:* `integer()`, *default:* `nil`) - Average latency (ms) over the last minute.@OutputOnly
  *   `errors` (*type:* `integer()`, *default:* `nil`) - Number of errors since this instance was started.@OutputOnly
  *   `id` (*type:* `String.t`, *default:* `nil`) - Relative name of the instance within the version. Example: instance-1.@OutputOnly
  *   `memoryUsage` (*type:* `String.t`, *default:* `nil`) - Total memory in use (bytes).@OutputOnly
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full path to the Instance resource in the API. Example: apps/myapp/services/default/versions/v1/instances/instance-1.@OutputOnly
  *   `qps` (*type:* `number()`, *default:* `nil`) - Average queries per second (QPS) over the last minute.@OutputOnly
  *   `requests` (*type:* `integer()`, *default:* `nil`) - Number of requests since this instance was started.@OutputOnly
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time that this instance was started.@OutputOnly
  *   `vmDebugEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether this instance is in debug mode. Only applicable for instances in App Engine flexible environment.@OutputOnly
  *   `vmId` (*type:* `String.t`, *default:* `nil`) - Virtual machine ID of this instance. Only applicable for instances in App Engine flexible environment.@OutputOnly
  *   `vmIp` (*type:* `String.t`, *default:* `nil`) - The IP address of this instance. Only applicable for instances in App Engine flexible environment.@OutputOnly
  *   `vmName` (*type:* `String.t`, *default:* `nil`) - Name of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.@OutputOnly
  *   `vmStatus` (*type:* `String.t`, *default:* `nil`) - Status of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.@OutputOnly
  *   `vmZoneName` (*type:* `String.t`, *default:* `nil`) - Zone where the virtual machine is located. Only applicable for instances in App Engine flexible environment.@OutputOnly
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appEngineRelease => String.t(),
          :availability => String.t(),
          :averageLatency => integer(),
          :errors => integer(),
          :id => String.t(),
          :memoryUsage => String.t(),
          :name => String.t(),
          :qps => number(),
          :requests => integer(),
          :startTime => DateTime.t(),
          :vmDebugEnabled => boolean(),
          :vmId => String.t(),
          :vmIp => String.t(),
          :vmName => String.t(),
          :vmStatus => String.t(),
          :vmZoneName => String.t()
        }

  field(:appEngineRelease)
  field(:availability)
  field(:averageLatency)
  field(:errors)
  field(:id)
  field(:memoryUsage)
  field(:name)
  field(:qps)
  field(:requests)
  field(:startTime, as: DateTime)
  field(:vmDebugEnabled)
  field(:vmId)
  field(:vmIp)
  field(:vmName)
  field(:vmStatus)
  field(:vmZoneName)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
