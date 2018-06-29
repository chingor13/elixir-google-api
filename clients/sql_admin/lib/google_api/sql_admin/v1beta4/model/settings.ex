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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  @moduledoc """
  Database instance settings.

  ## Attributes

  - activationPolicy (String): The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. The activation policy cannot be updated together with other settings for Second Generation instances. Valid values: ALWAYS: The instance is on; it is not deactivated by inactivity. NEVER: The instance is off; it is not activated, even if a connection request arrives. ON_DEMAND: The instance responds to incoming requests, and turns itself off when not in use. Instances with PER_USE pricing turn off after 15 minutes of inactivity. Instances with PER_PACKAGE pricing turn off after 12 hours of inactivity. Defaults to: `null`.
  - authorizedGaeApplications (List[String]): The App Engine app IDs that can access this instance. This property is only applicable to First Generation instances. Defaults to: `null`.
  - availabilityType (String): Reserved for future use. Defaults to: `null`.
  - backupConfiguration (BackupConfiguration): The daily backup configuration for the instance. Defaults to: `null`.
  - crashSafeReplicationEnabled (Boolean): Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property is only applicable to First Generation instances. Defaults to: `null`.
  - dataDiskSizeGb (String): The size of data disk, in GB. The data disk size minimum is 10GB. Applies only to Second Generation instances. Defaults to: `null`.
  - dataDiskType (String): The type of data disk. Only supported for Second Generation instances. The default type is PD_SSD. Applies only to Second Generation instances. Defaults to: `null`.
  - databaseFlags (List[DatabaseFlags]): The database flags passed to the instance at startup. Defaults to: `null`.
  - databaseReplicationEnabled (Boolean): Configuration specific to read replica instances. Indicates whether replication is enabled or not. Defaults to: `null`.
  - ipConfiguration (IpConfiguration): The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances. Defaults to: `null`.
  - kind (String): This is always sql#settings. Defaults to: `null`.
  - locationPreference (LocationPreference): The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or GCE zone for better performance. App Engine co-location is only applicable to First Generation instances. Defaults to: `null`.
  - maintenanceWindow (MaintenanceWindow): The maintenance window for this instance. This specifies when the instance may be restarted for maintenance purposes. Applies only to Second Generation instances. Defaults to: `null`.
  - pricingPlan (String): The pricing plan for this instance. This can be either PER_USE or PACKAGE. Only PER_USE is supported for Second Generation instances. Defaults to: `null`.
  - replicationType (String): The type of replication this instance uses. This can be either ASYNCHRONOUS or SYNCHRONOUS. This property is only applicable to First Generation instances. Defaults to: `null`.
  - settingsVersion (String): The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value. Defaults to: `null`.
  - storageAutoResize (Boolean): Configuration to increase storage size automatically. The default value is true. Applies only to Second Generation instances. Defaults to: `null`.
  - storageAutoResizeLimit (String): The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. Applies only to Second Generation instances. Defaults to: `null`.
  - tier (String): The tier of service for this instance, for example D1, D2. For more information, see pricing. Defaults to: `null`.
  - userLabels (Map[String, String]): User-provided labels, represented as a dictionary where each label is a single key value pair. Defaults to: `null`.
  """

  defstruct [
    :"activationPolicy",
    :"authorizedGaeApplications",
    :"availabilityType",
    :"backupConfiguration",
    :"crashSafeReplicationEnabled",
    :"dataDiskSizeGb",
    :"dataDiskType",
    :"databaseFlags",
    :"databaseReplicationEnabled",
    :"ipConfiguration",
    :"kind",
    :"locationPreference",
    :"maintenanceWindow",
    :"pricingPlan",
    :"replicationType",
    :"settingsVersion",
    :"storageAutoResize",
    :"storageAutoResizeLimit",
    :"tier",
    :"userLabels"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  import GoogleApi.SQLAdmin.V1beta4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"backupConfiguration", :struct, GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration, options)
    |> deserialize(:"databaseFlags", :list, GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags, options)
    |> deserialize(:"ipConfiguration", :struct, GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration, options)
    |> deserialize(:"locationPreference", :struct, GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference, options)
    |> deserialize(:"maintenanceWindow", :struct, GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  def encode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Deserializer.serialize_non_nil(value, options)
  end
end
