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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  @moduledoc """
  Database instance backup configuration.

  ## Attributes

  *   `binaryLogEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether binary log is enabled. If backup configuration is disabled, binary log must be disabled as well.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether this configuration is enabled.
  *   `kind` (*type:* `String.t`, *default:* `sql#backupConfiguration`) - This is always sql#backupConfiguration.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The location of the backup.
  *   `replicationLogArchivingEnabled` (*type:* `boolean()`, *default:* `nil`) - Reserved for future use.
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Start time for the daily backup configuration in UTC timezone in the 24 hour format - HH:MM.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryLogEnabled => boolean(),
          :enabled => boolean(),
          :kind => String.t(),
          :location => String.t(),
          :replicationLogArchivingEnabled => boolean(),
          :startTime => String.t()
        }

  field(:binaryLogEnabled)
  field(:enabled)
  field(:kind)
  field(:location)
  field(:replicationLogArchivingEnabled)
  field(:startTime)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
