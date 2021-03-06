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

defmodule GoogleApi.People.V1.Model.Membership do
  @moduledoc """
  A person's membership in a group. Only contact group memberships can be
  modified.

  ## Attributes

  *   `contactGroupMembership` (*type:* `GoogleApi.People.V1.Model.ContactGroupMembership.t`, *default:* `nil`) - The contact group membership.
  *   `domainMembership` (*type:* `GoogleApi.People.V1.Model.DomainMembership.t`, *default:* `nil`) - The read-only domain membership.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the membership.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactGroupMembership => GoogleApi.People.V1.Model.ContactGroupMembership.t(),
          :domainMembership => GoogleApi.People.V1.Model.DomainMembership.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t()
        }

  field(:contactGroupMembership, as: GoogleApi.People.V1.Model.ContactGroupMembership)
  field(:domainMembership, as: GoogleApi.People.V1.Model.DomainMembership)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Membership do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Membership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Membership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
