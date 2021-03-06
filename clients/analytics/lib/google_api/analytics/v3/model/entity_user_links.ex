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

defmodule GoogleApi.Analytics.V3.Model.EntityUserLinks do
  @moduledoc """
  An entity user link collection provides a list of Analytics ACL links Each resource in this collection corresponds to a single link.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Analytics.V3.Model.EntityUserLink.t)`, *default:* `nil`) - A list of entity user links.
  *   `itemsPerPage` (*type:* `integer()`, *default:* `nil`) - The maximum number of entries the response can contain, regardless of the actual number of entries returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
  *   `kind` (*type:* `String.t`, *default:* `analytics#entityUserLinks`) - Collection type.
  *   `nextLink` (*type:* `String.t`, *default:* `nil`) - Next link for this account collection.
  *   `previousLink` (*type:* `String.t`, *default:* `nil`) - Previous link for this account collection.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The starting index of the entries, which is 1 by default or otherwise specified by the start-index query parameter.
  *   `totalResults` (*type:* `integer()`, *default:* `nil`) - The total number of results for the query, regardless of the number of results in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Analytics.V3.Model.EntityUserLink.t()),
          :itemsPerPage => integer(),
          :kind => String.t(),
          :nextLink => String.t(),
          :previousLink => String.t(),
          :startIndex => integer(),
          :totalResults => integer()
        }

  field(:items, as: GoogleApi.Analytics.V3.Model.EntityUserLink, type: :list)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:startIndex)
  field(:totalResults)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.EntityUserLinks do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.EntityUserLinks.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.EntityUserLinks do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
