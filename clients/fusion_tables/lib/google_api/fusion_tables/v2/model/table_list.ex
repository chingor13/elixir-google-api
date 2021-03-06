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

defmodule GoogleApi.FusionTables.V2.Model.TableList do
  @moduledoc """
  Represents a list of tables.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.FusionTables.V2.Model.Table.t)`, *default:* `nil`) - List of all requested tables.
  *   `kind` (*type:* `String.t`, *default:* `fusiontables#tableList`) - The kind of item this is. For table list, this is always fusiontables#tableList.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token used to access the next page of this result. No token is displayed if there are no more pages left.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.FusionTables.V2.Model.Table.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:items, as: GoogleApi.FusionTables.V2.Model.Table, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.FusionTables.V2.Model.TableList do
  def decode(value, options) do
    GoogleApi.FusionTables.V2.Model.TableList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FusionTables.V2.Model.TableList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
