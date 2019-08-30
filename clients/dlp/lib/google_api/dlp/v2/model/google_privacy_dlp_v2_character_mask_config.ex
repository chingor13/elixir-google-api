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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig do
  @moduledoc """
  Partially mask a string by replacing a given number of characters with a
  fixed character. Masking can start from the beginning or end of the string.
  This can be used on data of any type (numbers, longs, and so on) and when
  de-identifying structured data we'll attempt to preserve the original data's
  type. (This allows you to take a long like 123 and modify it to a string like
  **3.

  ## Attributes

  - charactersToIgnore (list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharsToIgnore.t)): When masking a string, items in this list will be skipped when replacing.
  For example, if your string is 555-555-5555 and you ask us to skip `-` and
  mask 5 chars with * we would produce ***-*55-5555. Defaults to `nil`.
  - maskingCharacter (String.t): Character to mask the sensitive values&mdash;for example, "*" for an
  alphabetic string such as name, or "0" for a numeric string such as ZIP
  code or credit card number. String must have length 1. If not supplied, we
  will default to "*" for strings, 0 for digits. Defaults to `nil`.
  - numberToMask (integer()): Number of characters to mask. If not set, all matching chars will be
  masked. Skipped characters do not count towards this tally. Defaults to `nil`.
  - reverseOrder (boolean()): Mask characters in reverse order. For example, if `masking_character` is
  '0', number_to_mask is 14, and `reverse_order` is false, then
  1234-5678-9012-3456 -> 00000000000000-3456
  If `masking_character` is '*', `number_to_mask` is 3, and `reverse_order`
  is true, then 12345 -> 12*** Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :charactersToIgnore => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharsToIgnore.t()),
          :maskingCharacter => String.t(),
          :numberToMask => integer(),
          :reverseOrder => boolean()
        }

  field(:charactersToIgnore,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharsToIgnore,
    type: :list
  )

  field(:maskingCharacter)
  field(:numberToMask)
  field(:reverseOrder)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CharacterMaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
