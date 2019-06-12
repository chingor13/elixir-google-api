# Copyright 2019 Google Inc.
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

defmodule GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  @moduledoc """
  Provides a user-facing message with locale info. The maximum message length is 4096 characters.

  ## Attributes

  - defaultMessage (String.t): The default message displayed if no localized message is specified or the user's locale doesn't match with any of the localized messages. A default message must be provided if any localized messages are provided. Defaults to `nil`.
  - localizedMessages (map()): A map containing <locale, message> pairs, where locale is a well-formed BCP 47 language (https://www.w3.org/International/articles/language-tags/) code, such as en-US, es-ES, or fr. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultMessage => String.t(),
          :localizedMessages => map()
        }

  field(:defaultMessage)
  field(:localizedMessages, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
