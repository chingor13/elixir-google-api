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

defmodule GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  @moduledoc """
  Response of getting recaptcha param.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `identitytoolkit#GetRecaptchaParamResponse`) - The fixed string "identitytoolkit#GetRecaptchaParamResponse".
  *   `recaptchaSiteKey` (*type:* `String.t`, *default:* `nil`) - Site key registered at recaptcha.
  *   `recaptchaStoken` (*type:* `String.t`, *default:* `nil`) - The stoken field for the recaptcha widget, used to request captcha challenge.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :recaptchaSiteKey => String.t(),
          :recaptchaStoken => String.t()
        }

  field(:kind)
  field(:recaptchaSiteKey)
  field(:recaptchaStoken)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.GetRecaptchaParamResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
