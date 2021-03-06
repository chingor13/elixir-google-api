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

defmodule GoogleApi.AndroidManagement.V1.Model.HardwareInfo do
  @moduledoc """
  Information about device hardware. The fields related to temperature thresholds are only available if hardwareStatusEnabled is true in the device's policy.

  ## Attributes

  *   `batteryShutdownTemperatures` (*type:* `list(number())`, *default:* `nil`) - Battery shutdown temperature thresholds in Celsius for each battery on the device.
  *   `batteryThrottlingTemperatures` (*type:* `list(number())`, *default:* `nil`) - Battery throttling temperature thresholds in Celsius for each battery on the device.
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the device. For example, Google.
  *   `cpuShutdownTemperatures` (*type:* `list(number())`, *default:* `nil`) - CPU shutdown temperature thresholds in Celsius for each CPU on the device.
  *   `cpuThrottlingTemperatures` (*type:* `list(number())`, *default:* `nil`) - CPU throttling temperature thresholds in Celsius for each CPU on the device.
  *   `deviceBasebandVersion` (*type:* `String.t`, *default:* `nil`) - Baseband version. For example, MDM9625_104662.22.05.34p.
  *   `gpuShutdownTemperatures` (*type:* `list(number())`, *default:* `nil`) - GPU shutdown temperature thresholds in Celsius for each GPU on the device.
  *   `gpuThrottlingTemperatures` (*type:* `list(number())`, *default:* `nil`) - GPU throttling temperature thresholds in Celsius for each GPU on the device.
  *   `hardware` (*type:* `String.t`, *default:* `nil`) - Name of the hardware. For example, Angler.
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Manufacturer. For example, Motorola.
  *   `model` (*type:* `String.t`, *default:* `nil`) - The model of the device. For example, Asus Nexus 7.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - The device serial number.
  *   `skinShutdownTemperatures` (*type:* `list(number())`, *default:* `nil`) - Device skin shutdown temperature thresholds in Celsius.
  *   `skinThrottlingTemperatures` (*type:* `list(number())`, *default:* `nil`) - Device skin throttling temperature thresholds in Celsius.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batteryShutdownTemperatures => list(number()),
          :batteryThrottlingTemperatures => list(number()),
          :brand => String.t(),
          :cpuShutdownTemperatures => list(number()),
          :cpuThrottlingTemperatures => list(number()),
          :deviceBasebandVersion => String.t(),
          :gpuShutdownTemperatures => list(number()),
          :gpuThrottlingTemperatures => list(number()),
          :hardware => String.t(),
          :manufacturer => String.t(),
          :model => String.t(),
          :serialNumber => String.t(),
          :skinShutdownTemperatures => list(number()),
          :skinThrottlingTemperatures => list(number())
        }

  field(:batteryShutdownTemperatures, type: :list)
  field(:batteryThrottlingTemperatures, type: :list)
  field(:brand)
  field(:cpuShutdownTemperatures, type: :list)
  field(:cpuThrottlingTemperatures, type: :list)
  field(:deviceBasebandVersion)
  field(:gpuShutdownTemperatures, type: :list)
  field(:gpuThrottlingTemperatures, type: :list)
  field(:hardware)
  field(:manufacturer)
  field(:model)
  field(:serialNumber)
  field(:skinShutdownTemperatures, type: :list)
  field(:skinThrottlingTemperatures, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.HardwareInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
