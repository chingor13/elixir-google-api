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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1CreateInspectOperationRequest do
  @moduledoc """
  Request for scheduling a scan of a data subset from a Google Platform data repository.

  ## Attributes

  - inspectConfig (GooglePrivacyDlpV2beta1InspectConfig): Configuration for the inspector. Defaults to: `null`.
  - operationConfig (GooglePrivacyDlpV2beta1OperationConfig): Additional configuration settings for long running operations. Defaults to: `null`.
  - outputConfig (GooglePrivacyDlpV2beta1OutputStorageConfig): Optional location to store findings. The bucket must already exist and the Google APIs service account for DLP must have write permission to write to the given bucket. &lt;p&gt;Results are split over multiple csv files with each file name matching the pattern \&quot;[operation_id]_[count].csv\&quot;, for example &#x60;3094877188788974909_1.csv&#x60;. The &#x60;operation_id&#x60; matches the identifier for the Operation, and the &#x60;count&#x60; is a counter used for tracking the number of files written. &lt;p&gt;The CSV file(s) contain the following columns regardless of storage type scanned: &lt;li&gt;id &lt;li&gt;info_type &lt;li&gt;likelihood &lt;li&gt;byte size of finding &lt;li&gt;quote &lt;li&gt;timestamp&lt;br/&gt; &lt;p&gt;For Cloud Storage the next columns are: &lt;li&gt;file_path &lt;li&gt;start_offset&lt;br/&gt; &lt;p&gt;For Cloud Datastore the next columns are: &lt;li&gt;project_id &lt;li&gt;namespace_id &lt;li&gt;path &lt;li&gt;column_name &lt;li&gt;offset&lt;br/&gt; &lt;p&gt;For BigQuery the next columns are: &lt;li&gt;row_number &lt;li&gt;project_id &lt;li&gt;dataset_id &lt;li&gt;table_id Defaults to: `null`.
  - storageConfig (GooglePrivacyDlpV2beta1StorageConfig): Specification of the data set to process. Defaults to: `null`.
  """

  defstruct [
    :"inspectConfig",
    :"operationConfig",
    :"outputConfig",
    :"storageConfig"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1CreateInspectOperationRequest do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"inspectConfig", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InspectConfig, options)
    |> deserialize(:"operationConfig", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1OperationConfig, options)
    |> deserialize(:"outputConfig", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1OutputStorageConfig, options)
    |> deserialize(:"storageConfig", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1StorageConfig, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1CreateInspectOperationRequest do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
