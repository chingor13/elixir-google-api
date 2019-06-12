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

defmodule GoogleApi.Storage.V1.Model.Channel do
  @moduledoc """
  An notification channel used to watch for resource changes.

  ## Attributes

  - address (String.t): The address where notifications are delivered for this channel. Defaults to `nil`.
  - expiration (String.t): Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. Defaults to `nil`.
  - id (String.t): A UUID or similar unique string that identifies this channel. Defaults to `nil`.
  - kind (String.t): Identifies this as a notification channel used to watch for changes to a resource. Value: the fixed string "api#channel". Defaults to `api#channel`.
  - params (map()): Additional parameters controlling delivery channel behavior. Optional. Defaults to `nil`.
  - payload (boolean()): A Boolean value to indicate whether payload is wanted. Optional. Defaults to `nil`.
  - resourceId (String.t): An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. Defaults to `nil`.
  - resourceUri (String.t): A version-specific identifier for the watched resource. Defaults to `nil`.
  - token (String.t): An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. Defaults to `nil`.
  - type (String.t): The type of delivery mechanism used for this channel. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t(),
          :expiration => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :params => map(),
          :payload => boolean(),
          :resourceId => String.t(),
          :resourceUri => String.t(),
          :token => String.t(),
          :type => String.t()
        }

  field(:address)
  field(:expiration)
  field(:id)
  field(:kind)
  field(:params, type: :map)
  field(:payload)
  field(:resourceId)
  field(:resourceUri)
  field(:token)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Channel do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Channel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
