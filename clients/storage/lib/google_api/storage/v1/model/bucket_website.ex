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

defmodule GoogleApi.Storage.V1.Model.BucketWebsite do
  @moduledoc """
  The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.

  ## Attributes

  - mainPageSuffix (String.t): If the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages. Defaults to `nil`.
  - notFoundPage (String.t): If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mainPageSuffix => String.t(),
          :notFoundPage => String.t()
        }

  field(:mainPageSuffix)
  field(:notFoundPage)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.BucketWebsite do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.BucketWebsite.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.BucketWebsite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
