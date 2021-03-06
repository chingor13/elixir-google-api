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

defmodule GoogleApi.OAuth2.V2.Model.JwkKeys do
  @moduledoc """


  ## Attributes

  *   `alg` (*type:* `String.t`, *default:* `RS256`) - 
  *   `e` (*type:* `String.t`, *default:* `nil`) - 
  *   `kid` (*type:* `String.t`, *default:* `nil`) - 
  *   `kty` (*type:* `String.t`, *default:* `RSA`) - 
  *   `n` (*type:* `String.t`, *default:* `nil`) - 
  *   `use` (*type:* `String.t`, *default:* `sig`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alg => String.t(),
          :e => String.t(),
          :kid => String.t(),
          :kty => String.t(),
          :n => String.t(),
          :use => String.t()
        }

  field(:alg)
  field(:e)
  field(:kid)
  field(:kty)
  field(:n)
  field(:use)
end

defimpl Poison.Decoder, for: GoogleApi.OAuth2.V2.Model.JwkKeys do
  def decode(value, options) do
    GoogleApi.OAuth2.V2.Model.JwkKeys.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OAuth2.V2.Model.JwkKeys do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
