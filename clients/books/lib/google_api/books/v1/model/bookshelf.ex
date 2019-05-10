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

defmodule GoogleApi.Books.V1.Model.Bookshelf do
  @moduledoc """


  ## Attributes

  - access (String.t): Whether this bookshelf is PUBLIC or PRIVATE. Defaults to `nil`.
  - created (DateTime.t): Created time for this bookshelf (formatted UTC timestamp with millisecond resolution). Defaults to `nil`.
  - description (String.t): Description of this bookshelf. Defaults to `nil`.
  - id (integer()): Id of this bookshelf, only unique by user. Defaults to `nil`.
  - kind (String.t): Resource type for bookshelf metadata. Defaults to `books#bookshelf`.
  - selfLink (String.t): URL to this resource. Defaults to `nil`.
  - title (String.t): Title of this bookshelf. Defaults to `nil`.
  - updated (DateTime.t): Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution). Defaults to `nil`.
  - volumeCount (integer()): Number of volumes in this bookshelf. Defaults to `nil`.
  - volumesLastUpdated (DateTime.t): Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millisecond resolution). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :access => String.t(),
          :created => DateTime.t(),
          :description => String.t(),
          :id => integer(),
          :kind => String.t(),
          :selfLink => String.t(),
          :title => String.t(),
          :updated => DateTime.t(),
          :volumeCount => integer(),
          :volumesLastUpdated => DateTime.t()
        }

  field(:access)
  field(:created, as: DateTime)
  field(:description)
  field(:id)
  field(:kind)
  field(:selfLink)
  field(:title)
  field(:updated, as: DateTime)
  field(:volumeCount)
  field(:volumesLastUpdated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Bookshelf do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Bookshelf.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Bookshelf do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
