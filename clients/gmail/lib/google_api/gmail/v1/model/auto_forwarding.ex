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

defmodule GoogleApi.Gmail.V1.Model.AutoForwarding do
  @moduledoc """
  Auto-forwarding settings for an account.

  ## Attributes

  *   `disposition` (*type:* `String.t`, *default:* `nil`) - The state that a message should be left in after it has been forwarded.
  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - Email address to which all incoming messages are forwarded. This email address must be a verified member of the forwarding addresses.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether all incoming mail is automatically forwarded to another address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disposition => String.t(),
          :emailAddress => String.t(),
          :enabled => boolean()
        }

  field(:disposition)
  field(:emailAddress)
  field(:enabled)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.AutoForwarding do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.AutoForwarding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.AutoForwarding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
