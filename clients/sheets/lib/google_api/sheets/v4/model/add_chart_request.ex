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

defmodule GoogleApi.Sheets.V4.Model.AddChartRequest do
  @moduledoc """
  Adds a chart to a sheet in the spreadsheet.

  ## Attributes

  *   `chart` (*type:* `GoogleApi.Sheets.V4.Model.EmbeddedChart.t`, *default:* `nil`) - The chart that should be added to the spreadsheet, including the position
      where it should be placed. The chartId
      field is optional; if one is not set, an id will be randomly generated. (It
      is an error to specify the ID of an embedded object that already exists.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chart => GoogleApi.Sheets.V4.Model.EmbeddedChart.t()
        }

  field(:chart, as: GoogleApi.Sheets.V4.Model.EmbeddedChart)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AddChartRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AddChartRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AddChartRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
