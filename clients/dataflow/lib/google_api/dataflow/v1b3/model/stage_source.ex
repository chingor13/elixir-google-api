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

defmodule GoogleApi.Dataflow.V1b3.Model.StageSource do
  @moduledoc """
  Description of an input or output of an execution stage.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Dataflow service generated name for this source.
  *   `originalTransformOrCollection` (*type:* `String.t`, *default:* `nil`) - User name for the original user transform or collection with which this
      source is most closely associated.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Size of the source, if measurable.
  *   `userName` (*type:* `String.t`, *default:* `nil`) - Human-readable name for this source; may be user or system generated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :originalTransformOrCollection => String.t(),
          :sizeBytes => String.t(),
          :userName => String.t()
        }

  field(:name)
  field(:originalTransformOrCollection)
  field(:sizeBytes)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StageSource do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StageSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StageSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
