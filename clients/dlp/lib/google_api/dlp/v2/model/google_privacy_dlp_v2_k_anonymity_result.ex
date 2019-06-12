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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityResult do
  @moduledoc """
  Result of the k-anonymity computation.

  ## Attributes

  - equivalenceClassHistogramBuckets (list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityHistogramBucket.t)): Histogram of k-anonymity equivalence classes. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :equivalenceClassHistogramBuckets =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityHistogramBucket.t())
        }

  field(:equivalenceClassHistogramBuckets,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityHistogramBucket,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityResult do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KAnonymityResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
