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

defmodule GoogleApi.Dataproc.V1.Model.Job do
  @moduledoc """
  A Cloud Dataproc job resource.

  ## Attributes

  *   `driverControlFilesUri` (*type:* `String.t`, *default:* `nil`) - Output only. If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  *   `driverOutputResourceUri` (*type:* `String.t`, *default:* `nil`) - Output only. A URI pointing to the location of the stdout of the job's driver program.
  *   `hadoopJob` (*type:* `GoogleApi.Dataproc.V1.Model.HadoopJob.t`, *default:* `nil`) - Job is a Hadoop job.
  *   `hiveJob` (*type:* `GoogleApi.Dataproc.V1.Model.HiveJob.t`, *default:* `nil`) - Job is a Hive job.
  *   `jobUuid` (*type:* `String.t`, *default:* `nil`) - Output only. A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  *   `pigJob` (*type:* `GoogleApi.Dataproc.V1.Model.PigJob.t`, *default:* `nil`) - Job is a Pig job.
  *   `placement` (*type:* `GoogleApi.Dataproc.V1.Model.JobPlacement.t`, *default:* `nil`) - Required. Job information, including how, when, and where to run the job.
  *   `pysparkJob` (*type:* `GoogleApi.Dataproc.V1.Model.PySparkJob.t`, *default:* `nil`) - Job is a Pyspark job.
  *   `reference` (*type:* `GoogleApi.Dataproc.V1.Model.JobReference.t`, *default:* `nil`) - Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a <code>job_id</code>.
  *   `scheduling` (*type:* `GoogleApi.Dataproc.V1.Model.JobScheduling.t`, *default:* `nil`) - Optional. Job scheduling configuration.
  *   `sparkJob` (*type:* `GoogleApi.Dataproc.V1.Model.SparkJob.t`, *default:* `nil`) - Job is a Spark job.
  *   `sparkSqlJob` (*type:* `GoogleApi.Dataproc.V1.Model.SparkSqlJob.t`, *default:* `nil`) - Job is a SparkSql job.
  *   `status` (*type:* `GoogleApi.Dataproc.V1.Model.JobStatus.t`, *default:* `nil`) - Output only. The job status. Additional application-specific status information may be contained in the <code>type_job</code> and <code>yarn_applications</code> fields.
  *   `statusHistory` (*type:* `list(GoogleApi.Dataproc.V1.Model.JobStatus.t)`, *default:* `nil`) - Output only. The previous job status.
  *   `yarnApplications` (*type:* `list(GoogleApi.Dataproc.V1.Model.YarnApplication.t)`, *default:* `nil`) - Output only. The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :driverControlFilesUri => String.t(),
          :driverOutputResourceUri => String.t(),
          :hadoopJob => GoogleApi.Dataproc.V1.Model.HadoopJob.t(),
          :hiveJob => GoogleApi.Dataproc.V1.Model.HiveJob.t(),
          :jobUuid => String.t(),
          :labels => map(),
          :pigJob => GoogleApi.Dataproc.V1.Model.PigJob.t(),
          :placement => GoogleApi.Dataproc.V1.Model.JobPlacement.t(),
          :pysparkJob => GoogleApi.Dataproc.V1.Model.PySparkJob.t(),
          :reference => GoogleApi.Dataproc.V1.Model.JobReference.t(),
          :scheduling => GoogleApi.Dataproc.V1.Model.JobScheduling.t(),
          :sparkJob => GoogleApi.Dataproc.V1.Model.SparkJob.t(),
          :sparkSqlJob => GoogleApi.Dataproc.V1.Model.SparkSqlJob.t(),
          :status => GoogleApi.Dataproc.V1.Model.JobStatus.t(),
          :statusHistory => list(GoogleApi.Dataproc.V1.Model.JobStatus.t()),
          :yarnApplications => list(GoogleApi.Dataproc.V1.Model.YarnApplication.t())
        }

  field(:driverControlFilesUri)
  field(:driverOutputResourceUri)
  field(:hadoopJob, as: GoogleApi.Dataproc.V1.Model.HadoopJob)
  field(:hiveJob, as: GoogleApi.Dataproc.V1.Model.HiveJob)
  field(:jobUuid)
  field(:labels, type: :map)
  field(:pigJob, as: GoogleApi.Dataproc.V1.Model.PigJob)
  field(:placement, as: GoogleApi.Dataproc.V1.Model.JobPlacement)
  field(:pysparkJob, as: GoogleApi.Dataproc.V1.Model.PySparkJob)
  field(:reference, as: GoogleApi.Dataproc.V1.Model.JobReference)
  field(:scheduling, as: GoogleApi.Dataproc.V1.Model.JobScheduling)
  field(:sparkJob, as: GoogleApi.Dataproc.V1.Model.SparkJob)
  field(:sparkSqlJob, as: GoogleApi.Dataproc.V1.Model.SparkSqlJob)
  field(:status, as: GoogleApi.Dataproc.V1.Model.JobStatus)
  field(:statusHistory, as: GoogleApi.Dataproc.V1.Model.JobStatus, type: :list)
  field(:yarnApplications, as: GoogleApi.Dataproc.V1.Model.YarnApplication, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.Job do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
