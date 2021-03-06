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

defmodule GoogleApi.Slides.V1.Model.ImageProperties do
  @moduledoc """
  The properties of the Image.

  ## Attributes

  *   `brightness` (*type:* `number()`, *default:* `nil`) - The brightness effect of the image. The value should be in the interval
      [-1.0, 1.0], where 0 means no effect. This property is read-only.
  *   `contrast` (*type:* `number()`, *default:* `nil`) - The contrast effect of the image. The value should be in the interval
      [-1.0, 1.0], where 0 means no effect. This property is read-only.
  *   `cropProperties` (*type:* `GoogleApi.Slides.V1.Model.CropProperties.t`, *default:* `nil`) - The crop properties of the image. If not set, the image is not cropped.
      This property is read-only.
  *   `link` (*type:* `GoogleApi.Slides.V1.Model.Link.t`, *default:* `nil`) - The hyperlink destination of the image. If unset, there is no link.
  *   `outline` (*type:* `GoogleApi.Slides.V1.Model.Outline.t`, *default:* `nil`) - The outline of the image. If not set, the image has no outline.
  *   `recolor` (*type:* `GoogleApi.Slides.V1.Model.Recolor.t`, *default:* `nil`) - The recolor effect of the image. If not set, the image is not recolored.
      This property is read-only.
  *   `shadow` (*type:* `GoogleApi.Slides.V1.Model.Shadow.t`, *default:* `nil`) - The shadow of the image. If not set, the image has no shadow. This property
      is read-only.
  *   `transparency` (*type:* `number()`, *default:* `nil`) - The transparency effect of the image. The value should be in the interval
      [0.0, 1.0], where 0 means no effect and 1 means completely transparent.
      This property is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brightness => number(),
          :contrast => number(),
          :cropProperties => GoogleApi.Slides.V1.Model.CropProperties.t(),
          :link => GoogleApi.Slides.V1.Model.Link.t(),
          :outline => GoogleApi.Slides.V1.Model.Outline.t(),
          :recolor => GoogleApi.Slides.V1.Model.Recolor.t(),
          :shadow => GoogleApi.Slides.V1.Model.Shadow.t(),
          :transparency => number()
        }

  field(:brightness)
  field(:contrast)
  field(:cropProperties, as: GoogleApi.Slides.V1.Model.CropProperties)
  field(:link, as: GoogleApi.Slides.V1.Model.Link)
  field(:outline, as: GoogleApi.Slides.V1.Model.Outline)
  field(:recolor, as: GoogleApi.Slides.V1.Model.Recolor)
  field(:shadow, as: GoogleApi.Slides.V1.Model.Shadow)
  field(:transparency)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ImageProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ImageProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ImageProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
