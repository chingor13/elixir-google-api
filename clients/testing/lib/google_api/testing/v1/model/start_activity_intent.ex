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

defmodule GoogleApi.Testing.V1.Model.StartActivityIntent do
  @moduledoc """
  A starting intent specified by an action, uri, and categories.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Action name.
      Required for START_ACTIVITY.
  *   `categories` (*type:* `list(String.t)`, *default:* `nil`) - Intent categories to set on the intent.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI for the action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :categories => list(String.t()),
          :uri => String.t()
        }

  field(:action)
  field(:categories, type: :list)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.StartActivityIntent do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.StartActivityIntent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.StartActivityIntent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
