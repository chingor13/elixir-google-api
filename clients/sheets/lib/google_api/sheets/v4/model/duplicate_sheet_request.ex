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

defmodule GoogleApi.Sheets.V4.Model.DuplicateSheetRequest do
  @moduledoc """
  Duplicates the contents of a sheet.

  ## Attributes

  *   `insertSheetIndex` (*type:* `integer()`, *default:* `nil`) - The zero-based index where the new sheet should be inserted.
      The index of all sheets after this are incremented.
  *   `newSheetId` (*type:* `integer()`, *default:* `nil`) - If set, the ID of the new sheet. If not set, an ID is chosen.
      If set, the ID must not conflict with any existing sheet ID.
      If set, it must be non-negative.
  *   `newSheetName` (*type:* `String.t`, *default:* `nil`) - The name of the new sheet.  If empty, a new name is chosen for you.
  *   `sourceSheetId` (*type:* `integer()`, *default:* `nil`) - The sheet to duplicate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insertSheetIndex => integer(),
          :newSheetId => integer(),
          :newSheetName => String.t(),
          :sourceSheetId => integer()
        }

  field(:insertSheetIndex)
  field(:newSheetId)
  field(:newSheetName)
  field(:sourceSheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DuplicateSheetRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DuplicateSheetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DuplicateSheetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
