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

defmodule GoogleApi.Storage.V1.Model.BucketLifecycle do
  @moduledoc """
  The bucket's lifecycle configuration. See lifecycle management for more information.

  ## Attributes

  - rule (list(GoogleApi.Storage.V1.Model.BucketLifecycleRule.t)): A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rule => list(GoogleApi.Storage.V1.Model.BucketLifecycleRule.t())
        }

  field(:rule, as: GoogleApi.Storage.V1.Model.BucketLifecycleRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.BucketLifecycle do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.BucketLifecycle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.BucketLifecycle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
