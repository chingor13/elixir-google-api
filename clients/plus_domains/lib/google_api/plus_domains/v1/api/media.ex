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

defmodule GoogleApi.PlusDomains.V1.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.PlusDomains.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Shut down. See https://developers.google.com/+/api-shutdown for more details.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PlusDomains.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - The ID of the user to create the activity on behalf of.
  *   `collection` (*type:* `String.t`) - 
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.PlusDomains.V1.Model.Media.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PlusDomains.V1.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec plus_domains_media_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.PlusDomains.V1.Model.Media.t()} | {:error, Tesla.Env.t()}
  def plus_domains_media_insert(
        connection,
        user_id,
        collection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/plusDomains/v1/people/{userId}/media/{collection}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "collection" => URI.encode(collection, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Media{}])
  end

  @doc """
  Shut down. See https://developers.google.com/+/api-shutdown for more details.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PlusDomains.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - The ID of the user to create the activity on behalf of.
  *   `collection` (*type:* `String.t`) - 
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "resumable".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.PlusDomains.V1.Model.Media.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec plus_domains_media_insert_resumable(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def plus_domains_media_insert_resumable(
        connection,
        user_id,
        collection,
        upload_type,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resumable/upload/plusDomains/v1/people/{userId}/media/{collection}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "collection" => URI.encode(collection, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Shut down. See https://developers.google.com/+/api-shutdown for more details.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PlusDomains.V1.Connection.t`) - Connection to server
  *   `user_id` (*type:* `String.t`) - The ID of the user to create the activity on behalf of.
  *   `collection` (*type:* `String.t`) - 
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.PlusDomains.V1.Model.Media.t`) - object metadata
  *   `data` (*type:* `String.t`) - Path to file
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PlusDomains.V1.Model.Media{}}` on success
  *   `{:error, info}` on failure
  """
  @spec plus_domains_media_insert_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          GoogleApi.PlusDomains.V1.Model.Media.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.PlusDomains.V1.Model.Media.t()} | {:error, Tesla.Env.t()}
  def plus_domains_media_insert_simple(
        connection,
        user_id,
        collection,
        upload_type,
        metadata,
        data,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/plusDomains/v1/people/{userId}/media/{collection}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "collection" => URI.encode(collection, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Media{}])
  end
end
