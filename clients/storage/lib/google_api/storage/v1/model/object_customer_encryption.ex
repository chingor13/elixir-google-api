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

defmodule GoogleApi.Storage.V1.Model.ObjectCustomerEncryption do
  @moduledoc """
  Metadata of customer-supplied encryption key, if the object is encrypted by such a key.

  ## Attributes

  - encryptionAlgorithm (String.t): The encryption algorithm. Defaults to `nil`.
  - keySha256 (String.t): SHA256 hash value of the encryption key. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionAlgorithm => String.t(),
          :keySha256 => String.t()
        }

  field(:encryptionAlgorithm)
  field(:keySha256)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ObjectCustomerEncryption do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.ObjectCustomerEncryption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ObjectCustomerEncryption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
