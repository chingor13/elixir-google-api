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

defmodule GoogleApi.Vault.V1.Model.CorpusQuery do
  @moduledoc """
  Corpus specific queries.

  ## Attributes

  *   `driveQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldDriveQuery.t`, *default:* `nil`) - Details pertaining to Drive holds. If set, corpus must be Drive.
  *   `groupsQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldGroupsQuery.t`, *default:* `nil`) - Details pertaining to Groups holds. If set, corpus must be Groups.
  *   `hangoutsChatQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery.t`, *default:* `nil`) - Details pertaining to Hangouts Chat holds. If set, corpus must be
      Hangouts Chat.
  *   `mailQuery` (*type:* `GoogleApi.Vault.V1.Model.HeldMailQuery.t`, *default:* `nil`) - Details pertaining to mail holds. If set, corpus must be mail.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :driveQuery => GoogleApi.Vault.V1.Model.HeldDriveQuery.t(),
          :groupsQuery => GoogleApi.Vault.V1.Model.HeldGroupsQuery.t(),
          :hangoutsChatQuery => GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery.t(),
          :mailQuery => GoogleApi.Vault.V1.Model.HeldMailQuery.t()
        }

  field(:driveQuery, as: GoogleApi.Vault.V1.Model.HeldDriveQuery)
  field(:groupsQuery, as: GoogleApi.Vault.V1.Model.HeldGroupsQuery)
  field(:hangoutsChatQuery, as: GoogleApi.Vault.V1.Model.HeldHangoutsChatQuery)
  field(:mailQuery, as: GoogleApi.Vault.V1.Model.HeldMailQuery)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.CorpusQuery do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.CorpusQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.CorpusQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
