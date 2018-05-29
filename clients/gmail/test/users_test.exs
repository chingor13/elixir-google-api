# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Gmail.UsersTest do
  use GoogleApi.Gmail.V1.TestHelper
  alias GoogleApi.Gmail.V1.Connection
  alias GoogleApi.Gmail.V1.Api.Users

  test "create draft" do
    conn = Connection.new(token())

    # assert {:ok, draft} =
    #          gmail_users_drafts_create_simple(
    #            conn,
    #            "me",
    #            "multipart",
    #            %Draft{},

    #          )
  end

  test "list messages" do
    conn = Connection.new(token())

    assert {:ok, resp} = Users.gmail_users_messages_list(conn, "me", fields: "messages(historyId,id,internalDate,labelIds,payload(body,headers,mimeType,partId,parts),raw,sizeEstimate,snippet,threadId),nextPageToken,resultSizeEstimate")
    resp.messages
    |> Enum.each(fn (message) -> IO.inspect(message) end)
  end

  defp token do
    t = System.get_env("AUTH_TOKEN")
    assert t, "Please set the AUTH_TOKEN environment variable"
    t
  end
end