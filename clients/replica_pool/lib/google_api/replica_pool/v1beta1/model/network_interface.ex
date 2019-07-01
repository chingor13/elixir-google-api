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

defmodule GoogleApi.ReplicaPool.V1beta1.Model.NetworkInterface do
  @moduledoc """
  A Compute Engine NetworkInterface resource. Identical to the NetworkInterface on the corresponding Compute Engine resource.

  ## Attributes

  *   `accessConfigs` (*type:* `list(GoogleApi.ReplicaPool.V1beta1.Model.AccessConfig.t)`, *default:* `nil`) - An array of configurations for this interface. This specifies how this interface is configured to interact with other network services.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Name the Network resource to which this interface applies.
  *   `networkIp` (*type:* `String.t`, *default:* `nil`) - An optional IPV4 internal network address to assign to the instance for this network interface.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessConfigs => list(GoogleApi.ReplicaPool.V1beta1.Model.AccessConfig.t()),
          :network => String.t(),
          :networkIp => String.t()
        }

  field(:accessConfigs, as: GoogleApi.ReplicaPool.V1beta1.Model.AccessConfig, type: :list)
  field(:network)
  field(:networkIp)
end

defimpl Poison.Decoder, for: GoogleApi.ReplicaPool.V1beta1.Model.NetworkInterface do
  def decode(value, options) do
    GoogleApi.ReplicaPool.V1beta1.Model.NetworkInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ReplicaPool.V1beta1.Model.NetworkInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end