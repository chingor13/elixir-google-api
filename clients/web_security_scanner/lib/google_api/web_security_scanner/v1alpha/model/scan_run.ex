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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun do
  @moduledoc """
  A ScanRun is a output-only resource representing an actual run of the scan.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the ScanRun reached termination state - that the ScanRun
      is either finished or stopped by user.
  *   `executionState` (*type:* `String.t`, *default:* `nil`) - Output only. The execution state of the ScanRun.
  *   `hasVulnerabilities` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the scan run has found any vulnerabilities.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the ScanRun. The name follows the format of
      'projects/{projectId}/scanConfigs/{scanConfigId}/scanRuns/{scanRunId}'.
      The ScanRun IDs are generated by the system.
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Output only. The percentage of total completion ranging from 0 to 100.
      If the scan is in queue, the value is 0.
      If the scan is running, the value ranges from 0 to 100.
      If the scan is finished, the value is 100.
  *   `resultState` (*type:* `String.t`, *default:* `nil`) - Output only. The result state of the ScanRun. This field is only available after the
      execution state reaches "FINISHED".
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the ScanRun started.
  *   `urlsCrawledCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of URLs crawled during this ScanRun. If the scan is in progress,
      the value represents the number of URLs crawled up to now.
  *   `urlsTestedCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of URLs tested during this ScanRun. If the scan is in progress,
      the value represents the number of URLs tested up to now. The number of
      URLs tested is usually larger than the number URLS crawled because
      typically a crawled URL is tested with multiple test payloads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :executionState => String.t(),
          :hasVulnerabilities => boolean(),
          :name => String.t(),
          :progressPercent => integer(),
          :resultState => String.t(),
          :startTime => DateTime.t(),
          :urlsCrawledCount => String.t(),
          :urlsTestedCount => String.t()
        }

  field(:endTime, as: DateTime)
  field(:executionState)
  field(:hasVulnerabilities)
  field(:name)
  field(:progressPercent)
  field(:resultState)
  field(:startTime, as: DateTime)
  field(:urlsCrawledCount)
  field(:urlsTestedCount)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ScanRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
