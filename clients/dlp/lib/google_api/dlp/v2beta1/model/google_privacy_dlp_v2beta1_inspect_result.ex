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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InspectResult do
  @moduledoc """
  All the findings for a single scanned item.

  ## Attributes

  - findings (List[GooglePrivacyDlpV2beta1Finding]): List of findings for an item. Defaults to: `null`.
  - findingsTruncated (Boolean): If true, then this item might have more findings than were returned, and the findings returned are an arbitrary subset of all findings. The findings list might be truncated because the input items were too large, or because the server reached the maximum amount of resources allowed for a single API call. For best results, divide the input into smaller batches. Defaults to: `null`.
  """

  defstruct [
    :"findings",
    :"findingsTruncated"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InspectResult do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"findings", :list, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Finding, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InspectResult do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
