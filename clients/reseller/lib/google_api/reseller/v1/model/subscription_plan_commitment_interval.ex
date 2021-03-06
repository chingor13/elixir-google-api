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

defmodule GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval do
  @moduledoc """
  In this version of the API, annual commitment plan's interval is one year.  Note: When billingMethod value is OFFLINE, the subscription property object plan.commitmentInterval is omitted in all API responses.

  ## Attributes

  *   `endTime` (*type:* `String.t`, *default:* `nil`) - An annual commitment plan's interval's endTime in milliseconds using the UNIX Epoch format. See an example Epoch converter.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - An annual commitment plan's interval's startTime in milliseconds using UNIX Epoch format. See an example Epoch converter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => String.t(),
          :startTime => String.t()
        }

  field(:endTime)
  field(:startTime)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
