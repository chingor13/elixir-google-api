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

defmodule GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  @moduledoc """


  ## Attributes

  - deviceAllowed (boolean()): Whether access is granted for this (user, device, volume). Defaults to `nil`.
  - kind (String.t): Resource type. Defaults to `books#concurrentAccessRestriction`.
  - maxConcurrentDevices (integer()): The maximum number of concurrent access licenses for this volume. Defaults to `nil`.
  - message (String.t): Error/warning message. Defaults to `nil`.
  - nonce (String.t): Client nonce for verification. Download access and client-validation only. Defaults to `nil`.
  - reasonCode (String.t): Error/warning reason code. Defaults to `nil`.
  - restricted (boolean()): Whether this volume has any concurrent access restrictions. Defaults to `nil`.
  - signature (String.t): Response signature. Defaults to `nil`.
  - source (String.t): Client app identifier for verification. Download access and client-validation only. Defaults to `nil`.
  - timeWindowSeconds (integer()): Time in seconds for license auto-expiration. Defaults to `nil`.
  - volumeId (String.t): Identifies the volume for which this entry applies. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceAllowed => boolean(),
          :kind => String.t(),
          :maxConcurrentDevices => integer(),
          :message => String.t(),
          :nonce => String.t(),
          :reasonCode => String.t(),
          :restricted => boolean(),
          :signature => String.t(),
          :source => String.t(),
          :timeWindowSeconds => integer(),
          :volumeId => String.t()
        }

  field(:deviceAllowed)
  field(:kind)
  field(:maxConcurrentDevices)
  field(:message)
  field(:nonce)
  field(:reasonCode)
  field(:restricted)
  field(:signature)
  field(:source)
  field(:timeWindowSeconds)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.ConcurrentAccessRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.ConcurrentAccessRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
