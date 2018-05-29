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

defmodule GoogleApi.Sheets.V4.Model.WaterfallChartSeries do
  @moduledoc """
  A single series of data for a waterfall chart.

  ## Attributes

  - customSubtotals ([WaterfallChartCustomSubtotal]): Custom subtotal columns appearing in this series. The order in which subtotals are defined is not significant. Only one subtotal may be defined for each data point. Defaults to: `null`.
  - data (ChartData): The data being visualized in this series. Defaults to: `null`.
  - hideTrailingSubtotal (boolean()): True to hide the subtotal column from the end of the series. By default, a subtotal column will appear at the end of each series. Setting this field to true will hide that subtotal column for this series. Defaults to: `null`.
  - negativeColumnsStyle (WaterfallChartColumnStyle): Styles for all columns in this series with negative values. Defaults to: `null`.
  - positiveColumnsStyle (WaterfallChartColumnStyle): Styles for all columns in this series with positive values. Defaults to: `null`.
  - subtotalColumnsStyle (WaterfallChartColumnStyle): Styles for all subtotal columns in this series. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          customSubtotals: list(GoogleApi.Sheets.V4.Model.WaterfallChartCustomSubtotal.t()),
          data: GoogleApi.Sheets.V4.Model.ChartData.t(),
          hideTrailingSubtotal: any(),
          negativeColumnsStyle: GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle.t(),
          positiveColumnsStyle: GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle.t(),
          subtotalColumnsStyle: GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle.t()
        }

  defstruct [
    :customSubtotals,
    :data,
    :hideTrailingSubtotal,
    :negativeColumnsStyle,
    :positiveColumnsStyle,
    :subtotalColumnsStyle
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.WaterfallChartSeries do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :customSubtotals,
      :list,
      GoogleApi.Sheets.V4.Model.WaterfallChartCustomSubtotal,
      options
    )
    |> deserialize(:data, :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
    |> deserialize(
      :negativeColumnsStyle,
      :struct,
      GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle,
      options
    )
    |> deserialize(
      :positiveColumnsStyle,
      :struct,
      GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle,
      options
    )
    |> deserialize(
      :subtotalColumnsStyle,
      :struct,
      GoogleApi.Sheets.V4.Model.WaterfallChartColumnStyle,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.WaterfallChartSeries do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
