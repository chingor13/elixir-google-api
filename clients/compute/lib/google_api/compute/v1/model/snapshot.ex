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

defmodule GoogleApi.Compute.V1.Model.Snapshot do
  @moduledoc """
  Represents a Persistent Disk Snapshot resource.

  You can use snapshots to back up data on a regular interval. For more information, read  Creating persistent disk snapshots. (== resource_for beta.snapshots ==) (== resource_for v1.snapshots ==)

  ## Attributes

  *   `autoCreated` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Set to true if snapshots are automatically by applying resource policy on the target disk.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - [Output Only] Size of the snapshot, specified in GB.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#snapshot`) - [Output Only] Type of the resource. Always compute#snapshot for Snapshot resources.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this snapshot, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve a snapshot.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  *   `licenseCodes` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Integer license codes indicating which licenses are attached to this snapshot.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] A list of public visible licenses that apply to this snapshot. This can be because the original image had licenses attached (such as a Windows image).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `snapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Encrypts the snapshot using a customer-supplied encryption key.

      After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request.

      Customer-supplied encryption keys do not protect access to metadata of the snapshot.

      If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  *   `sourceDisk` (*type:* `String.t`, *default:* `nil`) - [Output Only] The source disk used to create this snapshot.
  *   `sourceDiskEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  *   `sourceDiskId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The ID value of the disk used to create this snapshot. This value may be used to determine whether the snapshot was taken from the current or a previous instance of a given disk name.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the snapshot. This can be CREATING, DELETING, FAILED, READY, or UPLOADING.
  *   `storageBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] A size of the storage used by the snapshot. As snapshots share storage, this number is expected to change with snapshot creation/deletion.
  *   `storageBytesStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  *   `storageLocations` (*type:* `list(String.t)`, *default:* `nil`) - GCS bucket storage location of the snapshot (regional or multi-regional).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCreated => boolean(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :diskSizeGb => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :labelFingerprint => String.t(),
          :labels => map(),
          :licenseCodes => list(String.t()),
          :licenses => list(String.t()),
          :name => String.t(),
          :selfLink => String.t(),
          :snapshotEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :sourceDisk => String.t(),
          :sourceDiskEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :sourceDiskId => String.t(),
          :status => String.t(),
          :storageBytes => String.t(),
          :storageBytesStatus => String.t(),
          :storageLocations => list(String.t())
        }

  field(:autoCreated)
  field(:creationTimestamp)
  field(:description)
  field(:diskSizeGb)
  field(:id)
  field(:kind)
  field(:labelFingerprint)
  field(:labels, type: :map)
  field(:licenseCodes, type: :list)
  field(:licenses, type: :list)
  field(:name)
  field(:selfLink)
  field(:snapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceDisk)
  field(:sourceDiskEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceDiskId)
  field(:status)
  field(:storageBytes)
  field(:storageBytesStatus)
  field(:storageLocations, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Snapshot do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Snapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Snapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
