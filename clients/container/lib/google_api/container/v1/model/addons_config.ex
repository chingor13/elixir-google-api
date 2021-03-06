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

defmodule GoogleApi.Container.V1.Model.AddonsConfig do
  @moduledoc """
  Configuration for the addons that can be automatically spun up in the
  cluster, enabling additional functionality.

  ## Attributes

  *   `horizontalPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.HorizontalPodAutoscaling.t`, *default:* `nil`) - Configuration for the horizontal pod autoscaling feature, which
      increases or decreases the number of replica pods a replication controller
      has based on the resource usage of the existing pods.
  *   `httpLoadBalancing` (*type:* `GoogleApi.Container.V1.Model.HttpLoadBalancing.t`, *default:* `nil`) - Configuration for the HTTP (L7) load balancing controller addon, which
      makes it easy to set up HTTP load balancers for services in a cluster.
  *   `kubernetesDashboard` (*type:* `GoogleApi.Container.V1.Model.KubernetesDashboard.t`, *default:* `nil`) - Configuration for the Kubernetes Dashboard.
      This addon is deprecated, and will be disabled in 1.15. It is recommended
      to use the Cloud Console to manage and monitor your Kubernetes clusters,
      workloads and applications. For more information, see:
      https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  *   `networkPolicyConfig` (*type:* `GoogleApi.Container.V1.Model.NetworkPolicyConfig.t`, *default:* `nil`) - Configuration for NetworkPolicy. This only tracks whether the addon
      is enabled or not on the Master, it does not track whether network policy
      is enabled for the nodes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :horizontalPodAutoscaling => GoogleApi.Container.V1.Model.HorizontalPodAutoscaling.t(),
          :httpLoadBalancing => GoogleApi.Container.V1.Model.HttpLoadBalancing.t(),
          :kubernetesDashboard => GoogleApi.Container.V1.Model.KubernetesDashboard.t(),
          :networkPolicyConfig => GoogleApi.Container.V1.Model.NetworkPolicyConfig.t()
        }

  field(:horizontalPodAutoscaling, as: GoogleApi.Container.V1.Model.HorizontalPodAutoscaling)
  field(:httpLoadBalancing, as: GoogleApi.Container.V1.Model.HttpLoadBalancing)
  field(:kubernetesDashboard, as: GoogleApi.Container.V1.Model.KubernetesDashboard)
  field(:networkPolicyConfig, as: GoogleApi.Container.V1.Model.NetworkPolicyConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.AddonsConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.AddonsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.AddonsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
