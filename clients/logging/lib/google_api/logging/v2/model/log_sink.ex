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

defmodule GoogleApi.Logging.V2.Model.LogSink do
  @moduledoc """
  Describes a sink used to export log entries to one of the following destinations in any project: a Cloud Storage bucket, a BigQuery dataset, or a Cloud Pub/Sub topic. A logs filter controls which log entries are exported. The sink must be created within a project, organization, billing account, or folder.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of the sink.This field may not be present for older sinks.
  *   `destination` (*type:* `String.t`, *default:* `nil`) - Required. The export destination:
      "storage.googleapis.com/[GCS_BUCKET]"
      "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
      "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]"
      The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. An advanced logs filter. The only exported log entries are those that are in the resource owning the sink and that match the filter. For example:
      logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR

  *   `includeChildren` (*type:* `boolean()`, *default:* `nil`) - Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then logs from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression. For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent. To only export entries from certain child projects, filter on the project part of the log name:
      logName:("projects/test-project1/" OR "projects/test-project2/") AND
      resource.type=gce_instance

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The client-assigned sink identifier, unique within the project. Example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  *   `outputVersionFormat` (*type:* `String.t`, *default:* `nil`) - Deprecated. The log entry format to use for this sink's exported log entries. The v2 format is used by default and cannot be changed.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of the sink.This field may not be present for older sinks.
  *   `writerIdentity` (*type:* `String.t`, *default:* `nil`) - Output only. An IAM identity&mdash;a service account or group&mdash;under which Logging writes the exported log entries to the sink's destination. This field is set by sinks.create and sinks.update based on the value of unique_writer_identity in those methods.Until you grant this identity write-access to the destination, log entry exports from this sink will fail. For more information, see Granting Access for a Resource. Consult the destination service's documentation to determine the appropriate IAM roles to assign to the identity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :destination => String.t(),
          :filter => String.t(),
          :includeChildren => boolean(),
          :name => String.t(),
          :outputVersionFormat => String.t(),
          :updateTime => DateTime.t(),
          :writerIdentity => String.t()
        }

  field(:createTime, as: DateTime)
  field(:destination)
  field(:filter)
  field(:includeChildren)
  field(:name)
  field(:outputVersionFormat)
  field(:updateTime, as: DateTime)
  field(:writerIdentity)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogSink do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogSink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogSink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
