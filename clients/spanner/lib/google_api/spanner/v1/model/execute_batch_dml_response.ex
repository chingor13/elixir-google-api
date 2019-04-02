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

defmodule GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  @moduledoc """
  The response for ExecuteBatchDml. Contains a list of ResultSet, one for each DML statement that has successfully executed. If a statement fails, the error is returned as part of the response payload. Clients can determine whether all DML statements have run successfully, or if a statement failed, using one of the following approaches:    1. Check if &#39;status&#39; field is OkStatus.   2. Check if result_sets_size() equals the number of statements in      ExecuteBatchDmlRequest.  Example 1: A request with 5 DML statements, all executed successfully. Result: A response with 5 ResultSets, one for each statement in the same order, and an OK status.  Example 2: A request with 5 DML statements. The 3rd statement has a syntax error. Result: A response with 2 ResultSets, for the first 2 statements that run successfully, and a syntax error (INVALID_ARGUMENT) status. From result_set_size() client can determine that the 3rd statement has failed.

  ## Attributes

  - resultSets ([ResultSet]): ResultSets, one for each statement in the request that ran successfully, in the same order as the statements in the request. Each ResultSet will not contain any rows. The ResultSetStats in each ResultSet will contain the number of rows modified by the statement.  Only the first ResultSet in the response contains a valid ResultSetMetadata. Defaults to: `null`.
  - status (Status): If all DML statements are executed successfully, status will be OK. Otherwise, the error status of the first failed statement. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resultSets => list(GoogleApi.Spanner.V1.Model.ResultSet.t()),
          :status => GoogleApi.Spanner.V1.Model.Status.t()
        }

  field(:resultSets, as: GoogleApi.Spanner.V1.Model.ResultSet, type: :list)
  field(:status, as: GoogleApi.Spanner.V1.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ExecuteBatchDmlResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end