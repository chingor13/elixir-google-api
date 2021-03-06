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

defmodule GoogleApi.Vault.V1.Model.AddHeldAccountResult do
  @moduledoc """
  A status detailing the status of each account creation, and the
  HeldAccount, if successful.

  ## Attributes

  *   `account` (*type:* `GoogleApi.Vault.V1.Model.HeldAccount.t`, *default:* `nil`) - If present, this account was successfully created.
  *   `status` (*type:* `GoogleApi.Vault.V1.Model.Status.t`, *default:* `nil`) - This represents the success status. If failed, check message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => GoogleApi.Vault.V1.Model.HeldAccount.t(),
          :status => GoogleApi.Vault.V1.Model.Status.t()
        }

  field(:account, as: GoogleApi.Vault.V1.Model.HeldAccount)
  field(:status, as: GoogleApi.Vault.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.AddHeldAccountResult do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.AddHeldAccountResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.AddHeldAccountResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
