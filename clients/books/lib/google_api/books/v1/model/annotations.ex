# Copyright 2019 Google Inc.
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

defmodule GoogleApi.Books.V1.Model.Annotations do
  @moduledoc """


  ## Attributes

  - items (list(GoogleApi.Books.V1.Model.Annotation.t)): A list of annotations. Defaults to `nil`.
  - kind (String.t): Resource type. Defaults to `books#annotations`.
  - nextPageToken (String.t): Token to pass in for pagination for the next page. This will not be present if this request does not have more results. Defaults to `nil`.
  - totalItems (integer()): Total number of annotations found. This may be greater than the number of notes returned in this response if results have been paginated. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Books.V1.Model.Annotation.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :totalItems => integer()
        }

  field(:items, as: GoogleApi.Books.V1.Model.Annotation, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:totalItems)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Annotations do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Annotations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Annotations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
