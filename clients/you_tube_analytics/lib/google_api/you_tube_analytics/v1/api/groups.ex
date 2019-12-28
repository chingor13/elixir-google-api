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

defmodule GoogleApi.YouTubeAnalytics.V1.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias GoogleApi.YouTubeAnalytics.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes a group.

  ## Parameters

  - connection (GoogleApi.YouTubeAnalytics.V1.Connection): Connection to server
  - id (String.t): The id parameter specifies the YouTube group ID for the group that is being deleted.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_analytics_groups_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_delete(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/groups")
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Creates a group.

  ## Parameters

  - connection (GoogleApi.YouTubeAnalytics.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :body (Group): 

  ## Returns

  {:ok, %GoogleApi.YouTubeAnalytics.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec youtube_analytics_groups_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/groups")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V1.Model.Group{}])
  end

  @doc """
  Returns a collection of groups that match the API request parameters. For example, you can retrieve all groups that the authenticated user owns, or you can retrieve one or more groups by their unique IDs.

  ## Parameters

  - connection (GoogleApi.YouTubeAnalytics.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :id (String.t): The id parameter specifies a comma-separated list of the YouTube group ID(s) for the resource(s) that are being retrieved. In a group resource, the id property specifies the group&#39;s YouTube group ID.
    - :mine (boolean()): Set this parameter&#39;s value to true to instruct the API to only return groups owned by the authenticated user.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :pageToken (String.t): The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identifies the next page that can be retrieved.

  ## Returns

  {:ok, %GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_analytics_groups_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :id => :query,
      :mine => :query,
      :onBehalfOfContentOwner => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/groups")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V1.Model.GroupListResponse{}])
  end

  @doc """
  Modifies a group. For example, you could change a group&#39;s title.

  ## Parameters

  - connection (GoogleApi.YouTubeAnalytics.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
    - :body (Group): 

  ## Returns

  {:ok, %GoogleApi.YouTubeAnalytics.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec youtube_analytics_groups_update(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.YouTubeAnalytics.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_groups_update(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/groups")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V1.Model.Group{}])
  end
end