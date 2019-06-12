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

defmodule GoogleApi.Storage.V1.Model.RewriteResponse do
  @moduledoc """
  A rewrite response.

  ## Attributes

  - done (boolean()): true if the copy is finished; otherwise, false if the copy is in progress. This property is always present in the response. Defaults to `nil`.
  - kind (String.t): The kind of item this is. Defaults to `storage#rewriteResponse`.
  - objectSize (String.t): The total size of the object being copied in bytes. This property is always present in the response. Defaults to `nil`.
  - resource (GoogleApi.Storage.V1.Model.Object.t): A resource containing the metadata for the copied-to object. This property is present in the response only when copying completes. Defaults to `nil`.
  - rewriteToken (String.t): A token to use in subsequent requests to continue copying data. This token is present in the response only when there is more data to copy. Defaults to `nil`.
  - totalBytesRewritten (String.t): The total bytes written so far, which can be used to provide a waiting user with a progress indicator. This property is always present in the response. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean(),
          :kind => String.t(),
          :objectSize => String.t(),
          :resource => GoogleApi.Storage.V1.Model.Object.t(),
          :rewriteToken => String.t(),
          :totalBytesRewritten => String.t()
        }

  field(:done)
  field(:kind)
  field(:objectSize)
  field(:resource, as: GoogleApi.Storage.V1.Model.Object)
  field(:rewriteToken)
  field(:totalBytesRewritten)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.RewriteResponse do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.RewriteResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.RewriteResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
