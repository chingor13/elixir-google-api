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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks do
  @moduledoc """
  A list of image links for all the sizes that are available. (In LITE projection.)

  ## Attributes

  - extraLarge (String.t): Image link for extra large size (width of ~1280 pixels). (In LITE projection) Defaults to `nil`.
  - large (String.t): Image link for large size (width of ~800 pixels). (In LITE projection) Defaults to `nil`.
  - medium (String.t): Image link for medium size (width of ~575 pixels). (In LITE projection) Defaults to `nil`.
  - small (String.t): Image link for small size (width of ~300 pixels). (In LITE projection) Defaults to `nil`.
  - smallThumbnail (String.t): Image link for small thumbnail size (width of ~80 pixels). (In LITE projection) Defaults to `nil`.
  - thumbnail (String.t): Image link for thumbnail size (width of ~128 pixels). (In LITE projection) Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extraLarge => String.t(),
          :large => String.t(),
          :medium => String.t(),
          :small => String.t(),
          :smallThumbnail => String.t(),
          :thumbnail => String.t()
        }

  field(:extraLarge)
  field(:large)
  field(:medium)
  field(:small)
  field(:smallThumbnail)
  field(:thumbnail)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
