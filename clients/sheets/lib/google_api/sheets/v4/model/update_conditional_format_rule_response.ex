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

defmodule GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse do
  @moduledoc """
  The result of updating a conditional format rule.

  ## Attributes

  - newIndex (integer()): The index of the new rule. Defaults to: `null`.
  - newRule (ConditionalFormatRule): The new rule that replaced the old rule (if replacing), or the rule that was moved (if moved) Defaults to: `null`.
  - oldIndex (integer()): The old index of the rule. Not set if a rule was replaced (because it is the same as new_index). Defaults to: `null`.
  - oldRule (ConditionalFormatRule): The old (deleted) rule. Not set if a rule was moved (because it is the same as new_rule). Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          newIndex: any(),
          newRule: GoogleApi.Sheets.V4.Model.ConditionalFormatRule.t(),
          oldIndex: any(),
          oldRule: GoogleApi.Sheets.V4.Model.ConditionalFormatRule.t()
        }

  defstruct [
    :newIndex,
    :newRule,
    :oldIndex,
    :oldRule
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:newRule, :struct, GoogleApi.Sheets.V4.Model.ConditionalFormatRule, options)
    |> deserialize(:oldRule, :struct, GoogleApi.Sheets.V4.Model.ConditionalFormatRule, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
