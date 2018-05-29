# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.OrgChartSpec do
  @moduledoc """
  An &lt;a href&#x3D;\&quot;/chart/interactive/docs/gallery/orgchart\&quot;&gt;org chart&lt;/a&gt;. Org charts require a unique set of labels in labels and may optionally include parent_labels and tooltips. parent_labels contain, for each node, the label identifying the parent node.  tooltips contain, for each node, an optional tooltip.  For example, to describe an OrgChart with Alice as the CEO, Bob as the President (reporting to Alice) and Cathy as VP of Sales (also reporting to Alice), have labels contain \&quot;Alice\&quot;, \&quot;Bob\&quot;, \&quot;Cathy\&quot;, parent_labels contain \&quot;\&quot;, \&quot;Alice\&quot;, \&quot;Alice\&quot; and tooltips contain \&quot;CEO\&quot;, \&quot;President\&quot;, \&quot;VP Sales\&quot;.

  ## Attributes

  - labels (ChartData): The data containing the labels for all the nodes in the chart.  Labels must be unique. Defaults to: `null`.
  - nodeColor (Color): The color of the org chart nodes. Defaults to: `null`.
  - nodeSize (String.t): The size of the org chart nodes. Defaults to: `null`.
    - Enum - one of [ORG_CHART_LABEL_SIZE_UNSPECIFIED, SMALL, MEDIUM, LARGE]
  - parentLabels (ChartData): The data containing the label of the parent for the corresponding node. A blank value indicates that the node has no parent and is a top-level node. This field is optional. Defaults to: `null`.
  - selectedNodeColor (Color): The color of the selected org chart nodes. Defaults to: `null`.
  - tooltips (ChartData): The data containing the tooltip for the corresponding node.  A blank value results in no tooltip being displayed for the node. This field is optional. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          labels: GoogleApi.Sheets.V4.Model.ChartData.t(),
          nodeColor: GoogleApi.Sheets.V4.Model.Color.t(),
          nodeSize: any(),
          parentLabels: GoogleApi.Sheets.V4.Model.ChartData.t(),
          selectedNodeColor: GoogleApi.Sheets.V4.Model.Color.t(),
          tooltips: GoogleApi.Sheets.V4.Model.ChartData.t()
        }

  defstruct [
    :labels,
    :nodeColor,
    :nodeSize,
    :parentLabels,
    :selectedNodeColor,
    :tooltips
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.OrgChartSpec do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:labels, :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
    |> deserialize(:nodeColor, :struct, GoogleApi.Sheets.V4.Model.Color, options)
    |> deserialize(:parentLabels, :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
    |> deserialize(:selectedNodeColor, :struct, GoogleApi.Sheets.V4.Model.Color, options)
    |> deserialize(:tooltips, :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.OrgChartSpec do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
