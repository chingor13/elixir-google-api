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

defmodule GoogleApi.SiteVerification.V1.Api.WebResource do
  @moduledoc """
  API calls for all endpoints tagged `WebResource`.
  """

  alias GoogleApi.SiteVerification.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Relinquish ownership of a website or domain.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - The id of a verified site or domain.
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

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_delete(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def site_verification_web_resource_delete(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:delete)
      |> Request.url("/webResource/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Get the most current data for a website or domain.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - The id of a verified site or domain.
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

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_get(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:get)
      |> Request.url("/webResource/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}]
    )
  end

  @doc """
  Get a verification token for placing on a website or domain.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_get_token(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_get_token(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/token", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceGettokenResponse{}
        ]
    )
  end

  @doc """
  Attempt verification of a website or domain.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `verification_method` (*type:* `String.t`) - The method to use for verifying a site or domain.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_insert(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_insert(
        connection,
        verification_method,
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
      |> Request.url("/webResource", %{})
      |> Request.add_param(:query, :verificationMethod, verification_method)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}]
    )
  end

  @doc """
  Get the list of your verified websites and domains.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
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

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceListResponse.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_list(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:get)
      |> Request.url("/webResource", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceListResponse{}]
    )
  end

  @doc """
  Modify the list of owners for your website or domain. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - The id of a verified site or domain.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_patch(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:patch)
      |> Request.url("/webResource/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}]
    )
  end

  @doc """
  Modify the list of owners for your website or domain.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SiteVerification.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - The id of a verified site or domain.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec site_verification_web_resource_update(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource.t()}
          | {:error, Tesla.Env.t()}
  def site_verification_web_resource_update(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:put)
      |> Request.url("/webResource/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SiteVerification.V1.Model.SiteVerificationWebResourceResource{}]
    )
  end
end
