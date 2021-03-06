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

defmodule GoogleApi.AndroidPublisher.V3.Model.Review do
  @moduledoc """


  ## Attributes

  *   `authorName` (*type:* `String.t`, *default:* `nil`) - The name of the user who wrote the review.
  *   `comments` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.Comment.t)`, *default:* `nil`) - A repeated field containing comments for the review.
  *   `reviewId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for this review.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorName => String.t(),
          :comments => list(GoogleApi.AndroidPublisher.V3.Model.Comment.t()),
          :reviewId => String.t()
        }

  field(:authorName)
  field(:comments, as: GoogleApi.AndroidPublisher.V3.Model.Comment, type: :list)
  field(:reviewId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Review do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Review.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Review do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
