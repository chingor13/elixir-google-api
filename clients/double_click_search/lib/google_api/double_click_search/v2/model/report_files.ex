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

defmodule GoogleApi.DoubleClickSearch.V2.Model.ReportFiles do
  @moduledoc """


  ## Attributes

  *   `byteCount` (*type:* `String.t`, *default:* `nil`) - The size of this report file in bytes.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Use this url to download the report file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteCount => String.t(),
          :url => String.t()
        }

  field(:byteCount)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportFiles do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.ReportFiles.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportFiles do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
