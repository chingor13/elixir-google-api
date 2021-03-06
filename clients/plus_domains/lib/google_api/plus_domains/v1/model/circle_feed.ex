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

defmodule GoogleApi.PlusDomains.V1.Model.CircleFeed do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.PlusDomains.V1.Model.Circle.t)`, *default:* `nil`) - The circles in this page of results.
  *   `kind` (*type:* `String.t`, *default:* `plus#circleFeed`) - Identifies this resource as a collection of circles. Value: "plus#circleFeed".
  *   `nextLink` (*type:* `String.t`, *default:* `nil`) - Link to the next page of circles.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link to this page of circles.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of this list of resources.
  *   `totalItems` (*type:* `integer()`, *default:* `nil`) - The total number of circles. The number of circles in this response may be smaller due to paging.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.PlusDomains.V1.Model.Circle.t()),
          :kind => String.t(),
          :nextLink => String.t(),
          :nextPageToken => String.t(),
          :selfLink => String.t(),
          :title => String.t(),
          :totalItems => integer()
        }

  field(:etag)
  field(:items, as: GoogleApi.PlusDomains.V1.Model.Circle, type: :list)
  field(:kind)
  field(:nextLink)
  field(:nextPageToken)
  field(:selfLink)
  field(:title)
  field(:totalItems)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.CircleFeed do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.CircleFeed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.CircleFeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
