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

defmodule GoogleApi.Translate.V2.Model.LanguagesResource do
  @moduledoc """


  ## Attributes

  - language (String.t): Supported language code, generally consisting of its ISO 639-1
  identifier. (E.g. 'en', 'ja'). In certain cases, BCP-47 codes including
  language + region identifiers are returned (e.g. 'zh-TW' and 'zh-CH') Defaults to `nil`.
  - name (String.t): Human readable name of the language localized to the target language. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :language => String.t(),
          :name => String.t()
        }

  field(:language)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V2.Model.LanguagesResource do
  def decode(value, options) do
    GoogleApi.Translate.V2.Model.LanguagesResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V2.Model.LanguagesResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
