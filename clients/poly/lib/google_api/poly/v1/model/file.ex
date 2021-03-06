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

defmodule GoogleApi.Poly.V1.Model.File do
  @moduledoc """
  Represents a file in Poly, which can be a root,
  resource, or thumbnail file.

  ## Attributes

  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The MIME content-type, such as `image/png`.
      For more information, see
      [MIME
      types](//developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types).
  *   `relativePath` (*type:* `String.t`, *default:* `nil`) - The path of the resource file relative to the
      root file. For root or thumbnail files,
      this is just the filename.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL where the file data can be retrieved.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentType => String.t(),
          :relativePath => String.t(),
          :url => String.t()
        }

  field(:contentType)
  field(:relativePath)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.File do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.File.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.File do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
