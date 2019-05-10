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

defmodule GoogleApi.Books.V1.Model.ReadingPosition do
  @moduledoc """


  ## Attributes

  - epubCfiPosition (String.t): Position in an EPUB as a CFI. Defaults to `nil`.
  - gbImagePosition (String.t): Position in a volume for image-based content. Defaults to `nil`.
  - gbTextPosition (String.t): Position in a volume for text-based content. Defaults to `nil`.
  - kind (String.t): Resource type for a reading position. Defaults to `books#readingPosition`.
  - pdfPosition (String.t): Position in a PDF file. Defaults to `nil`.
  - updated (DateTime.t): Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond resolution). Defaults to `nil`.
  - volumeId (String.t): Volume id associated with this reading position. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :epubCfiPosition => String.t(),
          :gbImagePosition => String.t(),
          :gbTextPosition => String.t(),
          :kind => String.t(),
          :pdfPosition => String.t(),
          :updated => DateTime.t(),
          :volumeId => String.t()
        }

  field(:epubCfiPosition)
  field(:gbImagePosition)
  field(:gbTextPosition)
  field(:kind)
  field(:pdfPosition)
  field(:updated, as: DateTime)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.ReadingPosition do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.ReadingPosition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.ReadingPosition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
