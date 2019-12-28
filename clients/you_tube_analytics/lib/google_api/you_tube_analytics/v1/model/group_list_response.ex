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

defmodule GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse do
  @moduledoc """
  A paginated list of grouList resources returned in response to a youtubeAnalytics.groupApi.list request.

  ## Attributes

  - etag (String.t):  Defaults to: `null`.
  - items ([Group]):  Defaults to: `null`.
  - kind (String.t):  Defaults to: `null`.
  - nextPageToken (String.t):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :items => list(GoogleApi.YouTubeAnalytics.V1.Model.Group.t()),
          :kind => any(),
          :nextPageToken => any()
        }

  field(:etag)
  field(:items, as: GoogleApi.YouTubeAnalytics.V1.Model.Group, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse do
  def decode(value, options) do
    GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end