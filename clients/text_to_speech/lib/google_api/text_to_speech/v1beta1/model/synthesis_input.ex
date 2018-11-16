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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  @moduledoc """
  Contains text input to be synthesized. Either &#x60;text&#x60; or &#x60;ssml&#x60; must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 characters.

  ## Attributes

  - ssml (String.t): The SSML document to be synthesized. The SSML document must be valid and well-formed. Otherwise the RPC will fail and return google.rpc.Code.INVALID_ARGUMENT. For more information, see [SSML](/speech/text-to-speech/docs/ssml). Defaults to: `null`.
  - text (String.t): The raw text to be synthesized. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ssml => any(),
          :text => any()
        }

  field(:ssml)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1beta1.Model.SynthesisInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end