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

defmodule GoogleApi.People.V1.Model.ContactGroupMembership do
  @moduledoc """
  A Google contact group membership.

  ## Attributes

  *   `contactGroupId` (*type:* `String.t`, *default:* `nil`) - The read-only contact group ID for the contact group membership.
  *   `contactGroupResourceName` (*type:* `String.t`, *default:* `nil`) - The resource name for the contact group, assigned by the server. An ASCII
      string, in the form of `contactGroups/`<var>contact_group_id</var>.
      Only contact_group_resource_name can be used for modifying memberships.
      Any contact group membership can be removed, but only user group or
      "myContacts" or "starred" system groups memberships can be added. A
      contact must always have at least one contact group membership.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactGroupId => String.t(),
          :contactGroupResourceName => String.t()
        }

  field(:contactGroupId)
  field(:contactGroupResourceName)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.ContactGroupMembership do
  def decode(value, options) do
    GoogleApi.People.V1.Model.ContactGroupMembership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.ContactGroupMembership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
