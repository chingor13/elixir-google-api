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

defmodule GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsRequest do
  @moduledoc """
  The request for FirestoreAdmin.ImportDocuments.

  ## Attributes

  *   `collectionIds` (*type:* `list(String.t)`, *default:* `nil`) - Which collection ids to import. Unspecified means all collections included
      in the import.
  *   `inputUriPrefix` (*type:* `String.t`, *default:* `nil`) - Location of the exported files.
      This must match the output_uri_prefix of an ExportDocumentsResponse from
      an export that has completed successfully.
      See:
      google.firestore.admin.v1beta1.ExportDocumentsResponse.output_uri_prefix.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionIds => list(String.t()),
          :inputUriPrefix => String.t()
        }

  field(:collectionIds, type: :list)
  field(:inputUriPrefix)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
