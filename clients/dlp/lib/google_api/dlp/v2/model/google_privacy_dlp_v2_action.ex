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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  @moduledoc """
  A task to execute on the completion of a job.
  See https://cloud.google.com/dlp/docs/concepts-actions to learn more.

  ## Attributes

  - jobNotificationEmails (GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails.t): Enable email notification to project owners and editors on job's
  completion/failure. Defaults to `nil`.
  - pubSub (GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub.t): Publish a notification to a pubsub topic. Defaults to `nil`.
  - publishSummaryToCscc (GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc.t): Publish summary to Cloud Security Command Center (Alpha). Defaults to `nil`.
  - saveFindings (GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings.t): Save resulting findings in a provided location. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobNotificationEmails =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails.t(),
          :pubSub => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub.t(),
          :publishSummaryToCscc =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc.t(),
          :saveFindings => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings.t()
        }

  field(:jobNotificationEmails, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails)

  field(:pubSub, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub)
  field(:publishSummaryToCscc, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc)
  field(:saveFindings, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
