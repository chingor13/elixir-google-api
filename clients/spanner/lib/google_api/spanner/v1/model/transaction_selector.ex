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

defmodule GoogleApi.Spanner.V1.Model.TransactionSelector do
  @moduledoc """
  This message is used to select the transaction in which a
  Read or
  ExecuteSql call runs.

  See TransactionOptions for more information about transactions.

  ## Attributes

  *   `begin` (*type:* `GoogleApi.Spanner.V1.Model.TransactionOptions.t`, *default:* `nil`) - Begin a new transaction and execute this read or SQL query in
      it. The transaction ID of the new transaction is returned in
      ResultSetMetadata.transaction, which is a Transaction.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Execute the read or SQL query in a previously-started transaction.
  *   `singleUse` (*type:* `GoogleApi.Spanner.V1.Model.TransactionOptions.t`, *default:* `nil`) - Execute the read or SQL query in a temporary transaction.
      This is the most efficient way to execute a transaction that
      consists of a single SQL query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin => GoogleApi.Spanner.V1.Model.TransactionOptions.t(),
          :id => String.t(),
          :singleUse => GoogleApi.Spanner.V1.Model.TransactionOptions.t()
        }

  field(:begin, as: GoogleApi.Spanner.V1.Model.TransactionOptions)
  field(:id)
  field(:singleUse, as: GoogleApi.Spanner.V1.Model.TransactionOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.TransactionSelector do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.TransactionSelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.TransactionSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
