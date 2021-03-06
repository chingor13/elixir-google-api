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

defmodule GoogleApi.AppEngine.V1.Model.CreateVersionMetadataV1Beta do
  @moduledoc """
  Metadata for the given google.longrunning.Operation during a google.appengine.v1beta.CreateVersionRequest.

  ## Attributes

  *   `cloudBuildId` (*type:* `String.t`, *default:* `nil`) - The Cloud Build ID if one was created as part of the version create. @OutputOnly
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudBuildId => String.t()
        }

  field(:cloudBuildId)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.CreateVersionMetadataV1Beta do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.CreateVersionMetadataV1Beta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.CreateVersionMetadataV1Beta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
