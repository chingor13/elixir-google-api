# Copyright 2019 Google Inc.
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

defmodule GoogleApi.AndroidManagement.V1.Model.ComplianceRule do
  @moduledoc """
  A rule declaring which mitigating actions to take when a device is not compliant with its policy. For every rule, there is always an implicit mitigating action to set policy_compliant to false for the Device resource, and display a message on the device indicating that the device is not compliant with its policy. Other mitigating actions may optionally be taken as well, depending on the field values in the rule.

  ## Attributes

  - apiLevelCondition (GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition.t): A condition which is satisfied if the Android Framework API level on the device doesn't meet a minimum requirement. Defaults to `nil`.
  - disableApps (boolean()): If set to true, the rule includes a mitigating action to disable apps so that the device is effectively disabled, but app data is preserved. If the device is running an app in locked task mode, the app will be closed and a UI showing the reason for non-compliance will be displayed. Defaults to `nil`.
  - nonComplianceDetailCondition (GoogleApi.AndroidManagement.V1.Model.NonComplianceDetailCondition.t): A condition which is satisfied if there exists any matching NonComplianceDetail for the device. Defaults to `nil`.
  - packageNamesToDisable (list(String.t)): If set, the rule includes a mitigating action to disable apps specified in the list, but app data is preserved. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiLevelCondition => GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition.t(),
          :disableApps => boolean(),
          :nonComplianceDetailCondition =>
            GoogleApi.AndroidManagement.V1.Model.NonComplianceDetailCondition.t(),
          :packageNamesToDisable => list(String.t())
        }

  field(:apiLevelCondition, as: GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition)
  field(:disableApps)

  field(:nonComplianceDetailCondition,
    as: GoogleApi.AndroidManagement.V1.Model.NonComplianceDetailCondition
  )

  field(:packageNamesToDisable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ComplianceRule do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ComplianceRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ComplianceRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
