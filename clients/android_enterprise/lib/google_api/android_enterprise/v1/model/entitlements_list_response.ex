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

defmodule GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse do
  @moduledoc """
  The entitlement resources for the user.

  ## Attributes

  *   `entitlement` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.Entitlement.t)`, *default:* `nil`) - An entitlement of a user to a product (e.g. an app). For example, a free app that they have installed, or a paid app that they have been allocated a license to.
  *   `kind` (*type:* `String.t`, *default:* `androidenterprise#entitlementsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "androidenterprise#entitlementsListResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entitlement => list(GoogleApi.AndroidEnterprise.V1.Model.Entitlement.t()),
          :kind => String.t()
        }

  field(:entitlement, as: GoogleApi.AndroidEnterprise.V1.Model.Entitlement, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
