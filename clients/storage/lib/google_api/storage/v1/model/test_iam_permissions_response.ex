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

defmodule GoogleApi.Storage.V1.Model.TestIamPermissionsResponse do
  @moduledoc """
  A storage.(buckets|objects).testIamPermissions response.

  ## Attributes

  - kind (String.t): The kind of item this is. Defaults to `storage#testIamPermissionsResponse`.
  - permissions (list(String.t)): The permissions held by the caller. Permissions are always of the format storage.resource.capability, where resource is one of buckets or objects. The supported permissions are as follows:  
  - storage.buckets.delete — Delete bucket.  
  - storage.buckets.get — Read bucket metadata.  
  - storage.buckets.getIamPolicy — Read bucket IAM policy.  
  - storage.buckets.create — Create bucket.  
  - storage.buckets.list — List buckets.  
  - storage.buckets.setIamPolicy — Update bucket IAM policy.  
  - storage.buckets.update — Update bucket metadata.  
  - storage.objects.delete — Delete object.  
  - storage.objects.get — Read object data and metadata.  
  - storage.objects.getIamPolicy — Read object IAM policy.  
  - storage.objects.create — Create object.  
  - storage.objects.list — List objects.  
  - storage.objects.setIamPolicy — Update object IAM policy.  
  - storage.objects.update — Update object metadata. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :permissions => list(String.t())
        }

  field(:kind)
  field(:permissions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.TestIamPermissionsResponse do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.TestIamPermissionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.TestIamPermissionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
