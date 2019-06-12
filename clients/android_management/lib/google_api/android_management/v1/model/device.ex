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

defmodule GoogleApi.AndroidManagement.V1.Model.Device do
  @moduledoc """
  A device owned by an enterprise. Unless otherwise noted, all fields are read-only and can't be modified by enterprises.devices.patch.

  ## Attributes

  - apiLevel (integer()): The API level of the Android platform version running on the device. Defaults to `nil`.
  - applicationReports (list(GoogleApi.AndroidManagement.V1.Model.ApplicationReport.t)): Reports for apps installed on the device. This information is only available when application_reports_enabled is true in the device's policy. Defaults to `nil`.
  - appliedPolicyName (String.t): The name of the policy currently applied to the device. Defaults to `nil`.
  - appliedPolicyVersion (String.t): The version of the policy currently applied to the device. Defaults to `nil`.
  - appliedState (String.t): The state currently applied to the device. Defaults to `nil`.
  - deviceSettings (GoogleApi.AndroidManagement.V1.Model.DeviceSettings.t): Device settings information. This information is only available if deviceSettingsEnabled is true in the device's policy. Defaults to `nil`.
  - disabledReason (GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t): If the device state is DISABLED, an optional message that is displayed on the device indicating the reason the device is disabled. This field can be modified by a patch request. Defaults to `nil`.
  - displays (list(GoogleApi.AndroidManagement.V1.Model.Display.t)): Detailed information about displays on the device. This information is only available if displayInfoEnabled is true in the device's policy. Defaults to `nil`.
  - enrollmentTime (DateTime.t): The time of device enrollment. Defaults to `nil`.
  - enrollmentTokenData (String.t): If the device was enrolled with an enrollment token with additional data provided, this field contains that data. Defaults to `nil`.
  - enrollmentTokenName (String.t): If the device was enrolled with an enrollment token, this field contains the name of the token. Defaults to `nil`.
  - hardwareInfo (GoogleApi.AndroidManagement.V1.Model.HardwareInfo.t): Detailed information about the device hardware. Defaults to `nil`.
  - hardwareStatusSamples (list(GoogleApi.AndroidManagement.V1.Model.HardwareStatus.t)): Hardware status samples in chronological order. This information is only available if hardwareStatusEnabled is true in the device's policy. Defaults to `nil`.
  - lastPolicyComplianceReportTime (DateTime.t): Deprecated. Defaults to `nil`.
  - lastPolicySyncTime (DateTime.t): The last time the device fetched its policy. Defaults to `nil`.
  - lastStatusReportTime (DateTime.t): The last time the device sent a status report. Defaults to `nil`.
  - managementMode (String.t): The type of management mode Android Device Policy takes on the device. This influences which policy settings are supported. Defaults to `nil`.
  - memoryEvents (list(GoogleApi.AndroidManagement.V1.Model.MemoryEvent.t)): Events related to memory and storage measurements in chronological order. This information is only available if memoryInfoEnabled is true in the device's policy. Defaults to `nil`.
  - memoryInfo (GoogleApi.AndroidManagement.V1.Model.MemoryInfo.t): Memory information. This information is only available if memoryInfoEnabled is true in the device's policy. Defaults to `nil`.
  - name (String.t): The name of the device in the form enterprises/{enterpriseId}/devices/{deviceId}. Defaults to `nil`.
  - networkInfo (GoogleApi.AndroidManagement.V1.Model.NetworkInfo.t): Device network information. This information is only available if networkInfoEnabled is true in the device's policy. Defaults to `nil`.
  - nonComplianceDetails (list(GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail.t)): Details about policy settings that the device is not compliant with. Defaults to `nil`.
  - policyCompliant (boolean()): Whether the device is compliant with its policy. Defaults to `nil`.
  - policyName (String.t): The name of the policy applied to the device, in the form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the policy_name for the device's user is applied. This field can be modified by a patch request. You can specify only the policyId when calling enterprises.devices.patch, as long as the policyId doesn’t contain any slashes. The rest of the policy name is inferred. Defaults to `nil`.
  - powerManagementEvents (list(GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent.t)): Power management events on the device in chronological order. This information is only available if powerManagementEventsEnabled is true in the device's policy. Defaults to `nil`.
  - previousDeviceNames (list(String.t)): If the same physical device has been enrolled multiple times, this field contains its previous device names. The serial number is used as the unique identifier to determine if the same physical device has enrolled previously. The names are in chronological order. Defaults to `nil`.
  - softwareInfo (GoogleApi.AndroidManagement.V1.Model.SoftwareInfo.t): Detailed information about the device software. This information is only available if softwareInfoEnabled is true in the device's policy. Defaults to `nil`.
  - state (String.t): The state to be applied to the device. This field can be modified by a patch request. Note that when calling enterprises.devices.patch, ACTIVE and DISABLED are the only allowable values. To enter the device into a DELETED state, call enterprises.devices.delete. Defaults to `nil`.
  - systemProperties (map()): Map of selected system properties name and value related to the device. Defaults to `nil`.
  - user (GoogleApi.AndroidManagement.V1.Model.User.t): The user who owns the device. Defaults to `nil`.
  - userName (String.t): The resource name of the user that owns this device in the form enterprises/{enterpriseId}/users/{userId}. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiLevel => integer(),
          :applicationReports => list(GoogleApi.AndroidManagement.V1.Model.ApplicationReport.t()),
          :appliedPolicyName => String.t(),
          :appliedPolicyVersion => String.t(),
          :appliedState => String.t(),
          :deviceSettings => GoogleApi.AndroidManagement.V1.Model.DeviceSettings.t(),
          :disabledReason => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :displays => list(GoogleApi.AndroidManagement.V1.Model.Display.t()),
          :enrollmentTime => DateTime.t(),
          :enrollmentTokenData => String.t(),
          :enrollmentTokenName => String.t(),
          :hardwareInfo => GoogleApi.AndroidManagement.V1.Model.HardwareInfo.t(),
          :hardwareStatusSamples => list(GoogleApi.AndroidManagement.V1.Model.HardwareStatus.t()),
          :lastPolicyComplianceReportTime => DateTime.t(),
          :lastPolicySyncTime => DateTime.t(),
          :lastStatusReportTime => DateTime.t(),
          :managementMode => String.t(),
          :memoryEvents => list(GoogleApi.AndroidManagement.V1.Model.MemoryEvent.t()),
          :memoryInfo => GoogleApi.AndroidManagement.V1.Model.MemoryInfo.t(),
          :name => String.t(),
          :networkInfo => GoogleApi.AndroidManagement.V1.Model.NetworkInfo.t(),
          :nonComplianceDetails =>
            list(GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail.t()),
          :policyCompliant => boolean(),
          :policyName => String.t(),
          :powerManagementEvents =>
            list(GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent.t()),
          :previousDeviceNames => list(String.t()),
          :softwareInfo => GoogleApi.AndroidManagement.V1.Model.SoftwareInfo.t(),
          :state => String.t(),
          :systemProperties => map(),
          :user => GoogleApi.AndroidManagement.V1.Model.User.t(),
          :userName => String.t()
        }

  field(:apiLevel)

  field(:applicationReports,
    as: GoogleApi.AndroidManagement.V1.Model.ApplicationReport,
    type: :list
  )

  field(:appliedPolicyName)
  field(:appliedPolicyVersion)
  field(:appliedState)
  field(:deviceSettings, as: GoogleApi.AndroidManagement.V1.Model.DeviceSettings)
  field(:disabledReason, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:displays, as: GoogleApi.AndroidManagement.V1.Model.Display, type: :list)
  field(:enrollmentTime, as: DateTime)
  field(:enrollmentTokenData)
  field(:enrollmentTokenName)
  field(:hardwareInfo, as: GoogleApi.AndroidManagement.V1.Model.HardwareInfo)

  field(:hardwareStatusSamples,
    as: GoogleApi.AndroidManagement.V1.Model.HardwareStatus,
    type: :list
  )

  field(:lastPolicyComplianceReportTime, as: DateTime)
  field(:lastPolicySyncTime, as: DateTime)
  field(:lastStatusReportTime, as: DateTime)
  field(:managementMode)
  field(:memoryEvents, as: GoogleApi.AndroidManagement.V1.Model.MemoryEvent, type: :list)
  field(:memoryInfo, as: GoogleApi.AndroidManagement.V1.Model.MemoryInfo)
  field(:name)
  field(:networkInfo, as: GoogleApi.AndroidManagement.V1.Model.NetworkInfo)

  field(:nonComplianceDetails,
    as: GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail,
    type: :list
  )

  field(:policyCompliant)
  field(:policyName)

  field(:powerManagementEvents,
    as: GoogleApi.AndroidManagement.V1.Model.PowerManagementEvent,
    type: :list
  )

  field(:previousDeviceNames, type: :list)
  field(:softwareInfo, as: GoogleApi.AndroidManagement.V1.Model.SoftwareInfo)
  field(:state)
  field(:systemProperties, type: :map)
  field(:user, as: GoogleApi.AndroidManagement.V1.Model.User)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
