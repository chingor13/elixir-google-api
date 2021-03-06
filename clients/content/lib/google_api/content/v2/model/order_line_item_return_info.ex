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

defmodule GoogleApi.Content.V2.Model.OrderLineItemReturnInfo do
  @moduledoc """


  ## Attributes

  *   `daysToReturn` (*type:* `integer()`, *default:* `nil`) - How many days later the item can be returned.
  *   `isReturnable` (*type:* `boolean()`, *default:* `nil`) - Whether the item is returnable.
  *   `policyUrl` (*type:* `String.t`, *default:* `nil`) - URL of the item return policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :daysToReturn => integer(),
          :isReturnable => boolean(),
          :policyUrl => String.t()
        }

  field(:daysToReturn)
  field(:isReturnable)
  field(:policyUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderLineItemReturnInfo do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderLineItemReturnInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderLineItemReturnInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
