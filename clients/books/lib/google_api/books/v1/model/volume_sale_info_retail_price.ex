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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice do
  @moduledoc """
  The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.)

  ## Attributes

  - amount (float()): Amount in the currency listed below. (In LITE projection.) Defaults to `nil`.
  - currencyCode (String.t): An ISO 4217, three-letter currency code. (In LITE projection.) Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => float(),
          :currencyCode => String.t()
        }

  field(:amount)
  field(:currencyCode)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
