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

defmodule GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  @moduledoc """
  A rule describing a conditional format.

  ## Attributes

  *   `booleanRule` (*type:* `GoogleApi.Sheets.V4.Model.BooleanRule.t`, *default:* `nil`) - The formatting is either "on" or "off" according to the rule.
  *   `gradientRule` (*type:* `GoogleApi.Sheets.V4.Model.GradientRule.t`, *default:* `nil`) - The formatting will vary based on the gradients in the rule.
  *   `ranges` (*type:* `list(GoogleApi.Sheets.V4.Model.GridRange.t)`, *default:* `nil`) - The ranges that are formatted if the condition is true.
      All the ranges must be on the same grid.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanRule => GoogleApi.Sheets.V4.Model.BooleanRule.t(),
          :gradientRule => GoogleApi.Sheets.V4.Model.GradientRule.t(),
          :ranges => list(GoogleApi.Sheets.V4.Model.GridRange.t())
        }

  field(:booleanRule, as: GoogleApi.Sheets.V4.Model.BooleanRule)
  field(:gradientRule, as: GoogleApi.Sheets.V4.Model.GradientRule)
  field(:ranges, as: GoogleApi.Sheets.V4.Model.GridRange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ConditionalFormatRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
