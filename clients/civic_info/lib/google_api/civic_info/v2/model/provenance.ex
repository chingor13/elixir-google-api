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

defmodule GoogleApi.CivicInfo.V2.Model.Provenance do
  @moduledoc """


  ## Attributes

  *   `collidedSegmentSource` (*type:* `GoogleApi.CivicInfo.V2.Model.StreetSegmentList.t`, *default:* `nil`) - 
  *   `ctclContestUuid` (*type:* `String.t`, *default:* `nil`) - 
  *   `ctclOfficeUuid` (*type:* `String.t`, *default:* `nil`) - 
  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - 
  *   `precinctId` (*type:* `String.t`, *default:* `nil`) - 
  *   `precinctSplitId` (*type:* `String.t`, *default:* `nil`) - 
  *   `tsStreetSegmentId` (*type:* `String.t`, *default:* `nil`) - 
  *   `vip5PrecinctId` (*type:* `String.t`, *default:* `nil`) - 
  *   `vip5StreetSegmentId` (*type:* `String.t`, *default:* `nil`) - 
  *   `vipStreetSegmentId` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collidedSegmentSource => GoogleApi.CivicInfo.V2.Model.StreetSegmentList.t(),
          :ctclContestUuid => String.t(),
          :ctclOfficeUuid => String.t(),
          :datasetId => String.t(),
          :precinctId => String.t(),
          :precinctSplitId => String.t(),
          :tsStreetSegmentId => String.t(),
          :vip5PrecinctId => String.t(),
          :vip5StreetSegmentId => String.t(),
          :vipStreetSegmentId => String.t()
        }

  field(:collidedSegmentSource, as: GoogleApi.CivicInfo.V2.Model.StreetSegmentList)
  field(:ctclContestUuid)
  field(:ctclOfficeUuid)
  field(:datasetId)
  field(:precinctId)
  field(:precinctSplitId)
  field(:tsStreetSegmentId)
  field(:vip5PrecinctId)
  field(:vip5StreetSegmentId)
  field(:vipStreetSegmentId)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Provenance do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Provenance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Provenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
