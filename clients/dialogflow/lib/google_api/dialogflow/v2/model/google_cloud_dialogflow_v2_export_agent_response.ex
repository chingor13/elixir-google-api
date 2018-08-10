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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ExportAgentResponse do
  @moduledoc """
  The response message for Agents.ExportAgent.

  ## Attributes

  - agentContent (binary()): The exported agent.  Example for how to export an agent to a zip file via a command line: &lt;pre&gt;curl \\   &#39;https://dialogflow.googleapis.com/v2/projects/&amp;lt;project_name&amp;gt;/agent:export&#39;\\   -X POST \\   -H &#39;Authorization: Bearer &#39;$(gcloud auth print-access-token) \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   --compressed \\   --data-binary &#39;{}&#39; \\ | grep agentContent | sed -e &#39;s/.*\&quot;agentContent\&quot;: \&quot;\\([^\&quot;]*\\)\&quot;.*/\\1/&#39; \\ | base64 --decode &gt; &amp;lt;agent zip file&amp;gt;&lt;/pre&gt; Defaults to: `null`.
  - agentUri (String.t): The URI to a file containing the exported agent. This field is populated only if &#x60;agent_uri&#x60; is specified in &#x60;ExportAgentRequest&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentContent => any(),
          :agentUri => any()
        }

  field(:agentContent)
  field(:agentUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ExportAgentResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ExportAgentResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ExportAgentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
