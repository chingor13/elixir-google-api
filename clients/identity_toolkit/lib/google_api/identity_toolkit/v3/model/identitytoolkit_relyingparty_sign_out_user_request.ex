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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySignOutUserRequest do
  @moduledoc """
  Request to sign out user.

  ## Attributes

  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Instance id token of the app.
  *   `localId` (*type:* `String.t`, *default:* `nil`) - The local ID of the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceId => String.t(),
          :localId => String.t()
        }

  field(:instanceId)
  field(:localId)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySignOutUserRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySignOutUserRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySignOutUserRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
