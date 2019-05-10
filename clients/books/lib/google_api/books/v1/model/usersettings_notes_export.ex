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

defmodule GoogleApi.Books.V1.Model.UsersettingsNotesExport do
  @moduledoc """
  User settings in sub-objects, each for different purposes.

  ## Attributes

  - folderName (String.t):  Defaults to `nil`.
  - isEnabled (boolean()):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :folderName => String.t(),
          :isEnabled => boolean()
        }

  field(:folderName)
  field(:isEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.UsersettingsNotesExport do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.UsersettingsNotesExport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.UsersettingsNotesExport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
