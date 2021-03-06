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

defmodule GoogleApi.DeploymentManager.V2.Model.LogConfigDataAccessOptions do
  @moduledoc """
  Write a Data Access (Gin) log

  ## Attributes

  *   `logMode` (*type:* `String.t`, *default:* `nil`) - Whether Gin logging should happen in a fail-closed manner at the caller. This is relevant only in the LocalIAM implementation, for now.

      NOTE: Logging to Gin in a fail-closed manner is currently unsupported while work is being done to satisfy the requirements of go/345. Currently, setting LOG_FAIL_CLOSED mode will have no effect, but still exists because there is active work being done to support it (b/115874152).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :logMode => String.t()
        }

  field(:logMode)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigDataAccessOptions do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.LogConfigDataAccessOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigDataAccessOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
