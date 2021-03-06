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

defmodule GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  @moduledoc """
  The region of the page that is captured by this image, with dimensions measured in CSS pixels.

  ## Attributes

  *   `height` (*type:* `integer()`, *default:* `nil`) - The height of the rect.
  *   `left` (*type:* `integer()`, *default:* `nil`) - The left coordinate of the rect, in page coordinates.
  *   `top` (*type:* `integer()`, *default:* `nil`) - The top coordinate of the rect, in page coordinates.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The width of the rect.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :height => integer(),
          :left => integer(),
          :top => integer(),
          :width => integer()
        }

  field(:height)
  field(:left)
  field(:top)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V2.Model.PagespeedApiImageV2PageRect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
