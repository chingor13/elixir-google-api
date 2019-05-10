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

defmodule GoogleApi.Books.V1.Model.Volume do
  @moduledoc """


  ## Attributes

  - accessInfo (GoogleApi.Books.V1.Model.VolumeAccessInfo.t): Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.). Defaults to `nil`.
  - etag (String.t): Opaque identifier for a specific version of a volume resource. (In LITE projection) Defaults to `nil`.
  - id (String.t): Unique identifier for a volume. (In LITE projection.) Defaults to `nil`.
  - kind (String.t): Resource type for a volume. (In LITE projection.) Defaults to `books#volume`.
  - layerInfo (GoogleApi.Books.V1.Model.VolumeLayerInfo.t): What layers exist in this volume and high level information about them. Defaults to `nil`.
  - recommendedInfo (GoogleApi.Books.V1.Model.VolumeRecommendedInfo.t): Recommendation related information for this volume. Defaults to `nil`.
  - saleInfo (GoogleApi.Books.V1.Model.VolumeSaleInfo.t): Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries). Defaults to `nil`.
  - searchInfo (GoogleApi.Books.V1.Model.VolumeSearchInfo.t): Search result information related to this volume. Defaults to `nil`.
  - selfLink (String.t): URL to this resource. (In LITE projection.) Defaults to `nil`.
  - userInfo (GoogleApi.Books.V1.Model.VolumeUserInfo.t): User specific information related to this volume. (e.g. page this user last read or whether they purchased this book) Defaults to `nil`.
  - volumeInfo (GoogleApi.Books.V1.Model.VolumeVolumeInfo.t): General volume information. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessInfo => GoogleApi.Books.V1.Model.VolumeAccessInfo.t(),
          :etag => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :layerInfo => GoogleApi.Books.V1.Model.VolumeLayerInfo.t(),
          :recommendedInfo => GoogleApi.Books.V1.Model.VolumeRecommendedInfo.t(),
          :saleInfo => GoogleApi.Books.V1.Model.VolumeSaleInfo.t(),
          :searchInfo => GoogleApi.Books.V1.Model.VolumeSearchInfo.t(),
          :selfLink => String.t(),
          :userInfo => GoogleApi.Books.V1.Model.VolumeUserInfo.t(),
          :volumeInfo => GoogleApi.Books.V1.Model.VolumeVolumeInfo.t()
        }

  field(:accessInfo, as: GoogleApi.Books.V1.Model.VolumeAccessInfo)
  field(:etag)
  field(:id)
  field(:kind)
  field(:layerInfo, as: GoogleApi.Books.V1.Model.VolumeLayerInfo)
  field(:recommendedInfo, as: GoogleApi.Books.V1.Model.VolumeRecommendedInfo)
  field(:saleInfo, as: GoogleApi.Books.V1.Model.VolumeSaleInfo)
  field(:searchInfo, as: GoogleApi.Books.V1.Model.VolumeSearchInfo)
  field(:selfLink)
  field(:userInfo, as: GoogleApi.Books.V1.Model.VolumeUserInfo)
  field(:volumeInfo, as: GoogleApi.Books.V1.Model.VolumeVolumeInfo)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Volume do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
