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

defmodule GoogleApi.PlusDomains.V1.Model.CommentActorImage do
  @moduledoc """
  The image representation of this actor.

  ## Attributes

  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the actor's profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :url => String.t()
        }

  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.CommentActorImage do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.CommentActorImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.CommentActorImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
