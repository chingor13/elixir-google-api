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

defmodule GoogleApi.Composer.V1beta1.Model.EnvironmentConfig do
  @moduledoc """
  Configuration information for an environment.

  ## Attributes

  - airflowUri (String.t): The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow web interface](/composer/docs/how-to/accessing/airflow-web-interface)). Defaults to: `null`.
  - dagGcsPrefix (String.t): Output only. The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using \&quot;/\&quot;-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix. Defaults to: `null`.
  - gkeCluster (String.t): Output only. The Kubernetes Engine cluster used to run this environment. Defaults to: `null`.
  - nodeConfig (NodeConfig): The configuration used for the Kubernetes Engine cluster. Defaults to: `null`.
  - nodeCount (integer()): The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. Defaults to: `null`.
  - softwareConfig (SoftwareConfig): The configuration settings for software inside the environment. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airflowUri => any(),
          :dagGcsPrefix => any(),
          :gkeCluster => any(),
          :nodeConfig => GoogleApi.Composer.V1beta1.Model.NodeConfig.t(),
          :nodeCount => any(),
          :softwareConfig => GoogleApi.Composer.V1beta1.Model.SoftwareConfig.t()
        }

  field(:airflowUri)
  field(:dagGcsPrefix)
  field(:gkeCluster)
  field(:nodeConfig, as: GoogleApi.Composer.V1beta1.Model.NodeConfig)
  field(:nodeCount)
  field(:softwareConfig, as: GoogleApi.Composer.V1beta1.Model.SoftwareConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.EnvironmentConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.EnvironmentConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.EnvironmentConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
