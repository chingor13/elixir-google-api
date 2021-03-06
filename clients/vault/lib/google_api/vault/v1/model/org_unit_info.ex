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

defmodule GoogleApi.Vault.V1.Model.OrgUnitInfo do
  @moduledoc """
  Org Unit to search

  ## Attributes

  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - Org unit to search, as provided by the
      <a href="https://developers.google.com/admin-sdk/directory/">Admin SDK
      Directory API</a>.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :orgUnitId => String.t()
        }

  field(:orgUnitId)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.OrgUnitInfo do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.OrgUnitInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.OrgUnitInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
