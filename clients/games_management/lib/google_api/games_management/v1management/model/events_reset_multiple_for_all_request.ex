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

defmodule GoogleApi.GamesManagement.V1management.Model.EventsResetMultipleForAllRequest do
  @moduledoc """
  This is a JSON template for multiple events reset all request.

  ## Attributes

  - event_ids (List[String]): The IDs of events to reset. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#eventsResetMultipleForAllRequest. Defaults to: `null`.
  """

  defstruct [
    :"event_ids",
    :"kind"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.EventsResetMultipleForAllRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.EventsResetMultipleForAllRequest do
  def encode(value, options) do
    GoogleApi.GamesManagement.V1management.Deserializer.serialize_non_nil(value, options)
  end
end
