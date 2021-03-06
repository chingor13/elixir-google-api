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

defmodule GoogleApi.IAM.V1.Model.AuditData do
  @moduledoc """
  Audit log information specific to Cloud IAM. This message is serialized
  as an `Any` type in the `ServiceData` message of an
  `AuditLog` message.

  ## Attributes

  *   `policyDelta` (*type:* `GoogleApi.IAM.V1.Model.PolicyDelta.t`, *default:* `nil`) - Policy delta between the original policy and the newly set policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policyDelta => GoogleApi.IAM.V1.Model.PolicyDelta.t()
        }

  field(:policyDelta, as: GoogleApi.IAM.V1.Model.PolicyDelta)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.AuditData do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.AuditData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.AuditData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
