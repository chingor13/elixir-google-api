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

defmodule GoogleApi.YouTube.V3.Model.CommentThreadSnippet do
  @moduledoc """
  Basic details about a comment thread.

  ## Attributes

  *   `canReply` (*type:* `boolean()`, *default:* `nil`) - Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers may see a different value for this field.
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - The YouTube channel the comments in the thread refer to or the channel with the video the comments refer to. If video_id isn't set the comments refer to the channel itself.
  *   `isPublic` (*type:* `boolean()`, *default:* `nil`) - Whether the thread (and therefore all its comments) is visible to all YouTube users.
  *   `topLevelComment` (*type:* `GoogleApi.YouTube.V3.Model.Comment.t`, *default:* `nil`) - The top level comment of this thread.
  *   `totalReplyCount` (*type:* `integer()`, *default:* `nil`) - The total number of replies (not including the top level comment).
  *   `videoId` (*type:* `String.t`, *default:* `nil`) - The ID of the video the comments refer to, if any. No video_id implies a channel discussion comment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canReply => boolean(),
          :channelId => String.t(),
          :isPublic => boolean(),
          :topLevelComment => GoogleApi.YouTube.V3.Model.Comment.t(),
          :totalReplyCount => integer(),
          :videoId => String.t()
        }

  field(:canReply)
  field(:channelId)
  field(:isPublic)
  field(:topLevelComment, as: GoogleApi.YouTube.V3.Model.Comment)
  field(:totalReplyCount)
  field(:videoId)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.CommentThreadSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.CommentThreadSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.CommentThreadSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
