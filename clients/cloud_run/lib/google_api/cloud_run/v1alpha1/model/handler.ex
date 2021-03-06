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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Handler do
  @moduledoc """
  Handler defines a specific action that should be taken

  ## Attributes

  *   `exec` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ExecAction.t`, *default:* `nil`) - One and only one of the following should be specified.
      Exec specifies the action to take.
      +optional
  *   `httpGet` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.HTTPGetAction.t`, *default:* `nil`) - HTTPGet specifies the http request to perform.
      +optional
  *   `tcpSocket` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction.t`, *default:* `nil`) - TCPSocket specifies an action involving a TCP port.
      TCP hooks not yet supported
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exec => GoogleApi.CloudRun.V1alpha1.Model.ExecAction.t(),
          :httpGet => GoogleApi.CloudRun.V1alpha1.Model.HTTPGetAction.t(),
          :tcpSocket => GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction.t()
        }

  field(:exec, as: GoogleApi.CloudRun.V1alpha1.Model.ExecAction)
  field(:httpGet, as: GoogleApi.CloudRun.V1alpha1.Model.HTTPGetAction)
  field(:tcpSocket, as: GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Handler do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Handler.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Handler do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
