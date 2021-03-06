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

defmodule GoogleApi.Blogger.V3.Model.PageviewsCounts do
  @moduledoc """


  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Count of page views for the given time range
  *   `timeRange` (*type:* `String.t`, *default:* `nil`) - Time range the given count applies to
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t(),
          :timeRange => String.t()
        }

  field(:count)
  field(:timeRange)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.PageviewsCounts do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.PageviewsCounts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.PageviewsCounts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
