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

defmodule GoogleApi.Monitoring.V3.Model.TypedValue do
  @moduledoc """
  A single strongly-typed value.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - A Boolean value: true or false.
  *   `distributionValue` (*type:* `GoogleApi.Monitoring.V3.Model.Distribution.t`, *default:* `nil`) - A distribution value.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - A 64-bit double-precision floating-point number. Its magnitude is approximately &plusmn;10<sup>&plusmn;300</sup> and it has 16 significant digits of precision.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - A 64-bit integer. Its range is approximately &plusmn;9.2x10<sup>18</sup>.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A variable-length string value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :distributionValue => GoogleApi.Monitoring.V3.Model.Distribution.t(),
          :doubleValue => float(),
          :int64Value => String.t(),
          :stringValue => String.t()
        }

  field(:boolValue)
  field(:distributionValue, as: GoogleApi.Monitoring.V3.Model.Distribution)
  field(:doubleValue)
  field(:int64Value)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.TypedValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
