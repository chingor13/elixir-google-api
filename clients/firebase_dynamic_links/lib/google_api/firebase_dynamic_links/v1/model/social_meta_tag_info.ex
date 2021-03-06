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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.SocialMetaTagInfo do
  @moduledoc """
  Parameters for social meta tag params.
  Used to set meta tag data for link previews on social sites.

  ## Attributes

  *   `socialDescription` (*type:* `String.t`, *default:* `nil`) - A short description of the link. Optional.
  *   `socialImageLink` (*type:* `String.t`, *default:* `nil`) - An image url string. Optional.
  *   `socialTitle` (*type:* `String.t`, *default:* `nil`) - Title to be displayed. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :socialDescription => String.t(),
          :socialImageLink => String.t(),
          :socialTitle => String.t()
        }

  field(:socialDescription)
  field(:socialImageLink)
  field(:socialTitle)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.SocialMetaTagInfo do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.SocialMetaTagInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.SocialMetaTagInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
