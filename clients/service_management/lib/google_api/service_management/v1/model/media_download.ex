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

defmodule GoogleApi.ServiceManagement.V1.Model.MediaDownload do
  @moduledoc """
  Defines the Media configuration for a service in case of a download. Use this only for Scotty Requests. Do not use this for media support using Bytestream, add instead [][google.bytestream.RestByteStream] as an API to your configuration for Bytestream methods.

  ## Attributes

  - completeNotification (boolean()): A boolean that determines whether a notification for the completion of a download should be sent to the backend. Defaults to: `null`.
  - downloadService (String.t): DO NOT USE FIELDS BELOW THIS LINE UNTIL THIS WARNING IS REMOVED.  Specify name of the download service if one is used for download. Defaults to: `null`.
  - dropzone (String.t): Name of the Scotty dropzone to use for the current API. Defaults to: `null`.
  - enabled (boolean()): Whether download is enabled. Defaults to: `null`.
  - maxDirectDownloadSize (String.t): Optional maximum acceptable size for direct download. The size is specified in bytes. Defaults to: `null`.
  - useDirectDownload (boolean()): A boolean that determines if direct download from ESF should be used for download of this media. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completeNotification => any(),
          :downloadService => any(),
          :dropzone => any(),
          :enabled => any(),
          :maxDirectDownloadSize => any(),
          :useDirectDownload => any()
        }

  field(:completeNotification)
  field(:downloadService)
  field(:dropzone)
  field(:enabled)
  field(:maxDirectDownloadSize)
  field(:useDirectDownload)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MediaDownload do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.MediaDownload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MediaDownload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end