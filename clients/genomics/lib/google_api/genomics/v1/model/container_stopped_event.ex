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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Genomics.V1.Model.ContainerStoppedEvent do
  @moduledoc """
  This event is generated when a container exits.

  ## Attributes

  - actionId (integer()): The numeric ID of the action that started this container. Defaults to: `null`.
  - exitStatus (integer()): The exit status of the container. Defaults to: `null`.
  - stderr (String.t): The tail end of any content written to standard error by the container. To prevent this from being recorded if the action is known to emit large amounts of debugging noise or sensitive information, set the DISABLE_STANDARD_ERROR_CAPTURE flag.  Note that only a small amount of the end of the stream is captured here. The entire stream is stored in the /google/logs directory mounted into each action, and may be copied off the machine as described elsewhere. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionId => any(),
          :exitStatus => any(),
          :stderr => any()
        }

  field(:actionId)
  field(:exitStatus)
  field(:stderr)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.ContainerStoppedEvent do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.ContainerStoppedEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.ContainerStoppedEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end