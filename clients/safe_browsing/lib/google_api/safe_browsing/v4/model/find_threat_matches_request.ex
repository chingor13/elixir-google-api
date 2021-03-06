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

defmodule GoogleApi.SafeBrowsing.V4.Model.FindThreatMatchesRequest do
  @moduledoc """
  Request to check entries against lists.

  ## Attributes

  *   `client` (*type:* `GoogleApi.SafeBrowsing.V4.Model.ClientInfo.t`, *default:* `nil`) - The client metadata.
  *   `threatInfo` (*type:* `GoogleApi.SafeBrowsing.V4.Model.ThreatInfo.t`, *default:* `nil`) - The lists and entries to be checked for matches.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :client => GoogleApi.SafeBrowsing.V4.Model.ClientInfo.t(),
          :threatInfo => GoogleApi.SafeBrowsing.V4.Model.ThreatInfo.t()
        }

  field(:client, as: GoogleApi.SafeBrowsing.V4.Model.ClientInfo)
  field(:threatInfo, as: GoogleApi.SafeBrowsing.V4.Model.ThreatInfo)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.FindThreatMatchesRequest do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.FindThreatMatchesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.FindThreatMatchesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
