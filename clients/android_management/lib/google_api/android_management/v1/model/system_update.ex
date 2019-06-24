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

defmodule GoogleApi.AndroidManagement.V1.Model.SystemUpdate do
  @moduledoc """
  Configuration for managing system updates

  ## Attributes

  *   `endMinutes` (*type:* `integer()`, *default:* `nil`) - If the type is WINDOWED, the end of the maintenance window, measured as the number of minutes after midnight in device's local time. This value must be between 0 and 1439, inclusive. If this value is less than start_minutes, then the maintenance window spans midnight. If the maintenance window specified is smaller than 30 minutes, the actual window is extended to 30 minutes beyond the start time.
  *   `startMinutes` (*type:* `integer()`, *default:* `nil`) - If the type is WINDOWED, the start of the maintenance window, measured as the number of minutes after midnight in the device's local time. This value must be between 0 and 1439, inclusive.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of system update to configure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endMinutes => integer(),
          :startMinutes => integer(),
          :type => String.t()
        }

  field(:endMinutes)
  field(:startMinutes)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SystemUpdate do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.SystemUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SystemUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
