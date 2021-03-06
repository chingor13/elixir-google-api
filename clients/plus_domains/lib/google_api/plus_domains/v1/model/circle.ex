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

defmodule GoogleApi.PlusDomains.V1.Model.Circle do
  @moduledoc """


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this circle.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The circle name.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of this response for caching purposes.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the circle.
  *   `kind` (*type:* `String.t`, *default:* `plus#circle`) - Identifies this resource as a circle. Value: "plus#circle".
  *   `people` (*type:* `GoogleApi.PlusDomains.V1.Model.CirclePeople.t`, *default:* `nil`) - The people in this circle.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link to this circle resource
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :people => GoogleApi.PlusDomains.V1.Model.CirclePeople.t(),
          :selfLink => String.t()
        }

  field(:description)
  field(:displayName)
  field(:etag)
  field(:id)
  field(:kind)
  field(:people, as: GoogleApi.PlusDomains.V1.Model.CirclePeople)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.Circle do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.Circle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.Circle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
