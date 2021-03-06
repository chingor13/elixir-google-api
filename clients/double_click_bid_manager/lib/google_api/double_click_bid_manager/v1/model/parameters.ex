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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.Parameters do
  @moduledoc """
  Parameters of a query or report.

  ## Attributes

  *   `filters` (*type:* `list(GoogleApi.DoubleClickBidManager.V1.Model.FilterPair.t)`, *default:* `nil`) - Filters used to match traffic data in your report.
  *   `groupBys` (*type:* `list(String.t)`, *default:* `nil`) - Data is grouped by the filters listed in this field.
  *   `includeInviteData` (*type:* `boolean()`, *default:* `nil`) - Deprecated. This field is no longer in use.
  *   `metrics` (*type:* `list(String.t)`, *default:* `nil`) - Metrics to include as columns in your report.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Report type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filters => list(GoogleApi.DoubleClickBidManager.V1.Model.FilterPair.t()),
          :groupBys => list(String.t()),
          :includeInviteData => boolean(),
          :metrics => list(String.t()),
          :type => String.t()
        }

  field(:filters, as: GoogleApi.DoubleClickBidManager.V1.Model.FilterPair, type: :list)
  field(:groupBys, type: :list)
  field(:includeInviteData)
  field(:metrics, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.Parameters do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.Parameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.Parameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
