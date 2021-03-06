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

defmodule GoogleApi.Vault.V1.Model.Query do
  @moduledoc """
  A query definition relevant for search & export.

  ## Attributes

  *   `accountInfo` (*type:* `GoogleApi.Vault.V1.Model.AccountInfo.t`, *default:* `nil`) - When 'ACCOUNT' is chosen as search method,
      account_info needs to be specified.
  *   `corpus` (*type:* `String.t`, *default:* `nil`) - The corpus to search.
  *   `dataScope` (*type:* `String.t`, *default:* `nil`) - The data source to search from.
  *   `driveOptions` (*type:* `GoogleApi.Vault.V1.Model.DriveOptions.t`, *default:* `nil`) - For Drive search, specify more options in this field.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end time range for the search query. These timestamps are in GMT and
      rounded down to the start of the given date.
  *   `hangoutsChatInfo` (*type:* `GoogleApi.Vault.V1.Model.HangoutsChatInfo.t`, *default:* `nil`) - When 'ROOM' is chosen as search method, hangout_chats_info needs to be
      specified. (read-only)
  *   `hangoutsChatOptions` (*type:* `GoogleApi.Vault.V1.Model.HangoutsChatOptions.t`, *default:* `nil`) - For hangouts chat search, specify more options in this field. (read-only)
  *   `mailOptions` (*type:* `GoogleApi.Vault.V1.Model.MailOptions.t`, *default:* `nil`) - For mail search, specify more options in this field.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The search method to use. This field is similar to the search_method field
      but is introduced to support shared drives. It supports all
      search method types. In case the search_method is TEAM_DRIVE the response
      of this field will be SHARED_DRIVE only.
  *   `orgUnitInfo` (*type:* `GoogleApi.Vault.V1.Model.OrgUnitInfo.t`, *default:* `nil`) - When 'ORG_UNIT' is chosen as as search method, org_unit_info needs
      to be specified.
  *   `searchMethod` (*type:* `String.t`, *default:* `nil`) - The search method to use.
  *   `sharedDriveInfo` (*type:* `GoogleApi.Vault.V1.Model.SharedDriveInfo.t`, *default:* `nil`) - When 'SHARED_DRIVE' is chosen as search method, shared_drive_info needs
      to be specified.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time range for the search query. These timestamps are in GMT and
      rounded down to the start of the given date.
  *   `teamDriveInfo` (*type:* `GoogleApi.Vault.V1.Model.TeamDriveInfo.t`, *default:* `nil`) - When 'TEAM_DRIVE' is chosen as search method, team_drive_info needs to be
      specified.
  *   `terms` (*type:* `String.t`, *default:* `nil`) - The corpus-specific
      <a href="https://support.google.com/vault/answer/2474474">search
      operators</a> used to generate search results.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone name.
      It should be an IANA TZ name, such as "America/Los_Angeles".
      For more information, see
      <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">Time
      Zone</a>.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountInfo => GoogleApi.Vault.V1.Model.AccountInfo.t(),
          :corpus => String.t(),
          :dataScope => String.t(),
          :driveOptions => GoogleApi.Vault.V1.Model.DriveOptions.t(),
          :endTime => DateTime.t(),
          :hangoutsChatInfo => GoogleApi.Vault.V1.Model.HangoutsChatInfo.t(),
          :hangoutsChatOptions => GoogleApi.Vault.V1.Model.HangoutsChatOptions.t(),
          :mailOptions => GoogleApi.Vault.V1.Model.MailOptions.t(),
          :method => String.t(),
          :orgUnitInfo => GoogleApi.Vault.V1.Model.OrgUnitInfo.t(),
          :searchMethod => String.t(),
          :sharedDriveInfo => GoogleApi.Vault.V1.Model.SharedDriveInfo.t(),
          :startTime => DateTime.t(),
          :teamDriveInfo => GoogleApi.Vault.V1.Model.TeamDriveInfo.t(),
          :terms => String.t(),
          :timeZone => String.t()
        }

  field(:accountInfo, as: GoogleApi.Vault.V1.Model.AccountInfo)
  field(:corpus)
  field(:dataScope)
  field(:driveOptions, as: GoogleApi.Vault.V1.Model.DriveOptions)
  field(:endTime, as: DateTime)
  field(:hangoutsChatInfo, as: GoogleApi.Vault.V1.Model.HangoutsChatInfo)
  field(:hangoutsChatOptions, as: GoogleApi.Vault.V1.Model.HangoutsChatOptions)
  field(:mailOptions, as: GoogleApi.Vault.V1.Model.MailOptions)
  field(:method)
  field(:orgUnitInfo, as: GoogleApi.Vault.V1.Model.OrgUnitInfo)
  field(:searchMethod)
  field(:sharedDriveInfo, as: GoogleApi.Vault.V1.Model.SharedDriveInfo)
  field(:startTime, as: DateTime)
  field(:teamDriveInfo, as: GoogleApi.Vault.V1.Model.TeamDriveInfo)
  field(:terms)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.Query do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.Query.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.Query do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
