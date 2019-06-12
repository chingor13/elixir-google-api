# Copyright 2019 Google Inc.
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

defmodule GoogleApi.Storage.V1.Model.ServiceAccount do
  @moduledoc """
  A subscription to receive Google PubSub notifications.

  ## Attributes

  - email_address (String.t): The ID of the notification. Defaults to `nil`.
  - kind (String.t): The kind of item this is. For notifications, this is always storage#notification. Defaults to `storage#serviceAccount`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email_address => String.t(),
          :kind => String.t()
        }

  field(:email_address)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ServiceAccount do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
