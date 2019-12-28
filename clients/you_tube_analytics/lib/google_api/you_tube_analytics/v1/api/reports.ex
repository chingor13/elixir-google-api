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

defmodule GoogleApi.YouTubeAnalytics.V1.Api.Reports do
  @moduledoc """
  API calls for all endpoints tagged `Reports`.
  """

  alias GoogleApi.YouTubeAnalytics.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieve your YouTube Analytics reports.

  ## Parameters

  - connection (GoogleApi.YouTubeAnalytics.V1.Connection): Connection to server
  - ids (String.t): Identifies the YouTube channel or content owner for which you are retrieving YouTube Analytics data. - To request data for a YouTube user, set the ids parameter value to channel&#x3D;&#x3D;CHANNEL_ID, where CHANNEL_ID specifies the unique YouTube channel ID. - To request data for a YouTube CMS content owner, set the ids parameter value to contentOwner&#x3D;&#x3D;OWNER_NAME, where OWNER_NAME is the CMS name of the content owner.
  - start_date (String.t): The start date for fetching YouTube Analytics data. The value should be in YYYY-MM-DD format.
  - end_date (String.t): The end date for fetching YouTube Analytics data. The value should be in YYYY-MM-DD format.
  - metrics (String.t): A comma-separated list of YouTube Analytics metrics, such as views or likes,dislikes. See the Available Reports document for a list of the reports that you can retrieve and the metrics available in each report, and see the Metrics document for definitions of those metrics.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :currency (String.t): The currency to which financial metrics should be converted. The default is US Dollar (USD). If the result contains no financial metrics, this flag will be ignored. Responds with an error if the specified currency is not recognized.
    - :dimensions (String.t): A comma-separated list of YouTube Analytics dimensions, such as views or ageGroup,gender. See the Available Reports document for a list of the reports that you can retrieve and the dimensions used for those reports. Also see the Dimensions document for definitions of those dimensions.
    - :filters (String.t): A list of filters that should be applied when retrieving YouTube Analytics data. The Available Reports document identifies the dimensions that can be used to filter each report, and the Dimensions document defines those dimensions. If a request uses multiple filters, join them together with a semicolon (;), and the returned result table will satisfy both filters. For example, a filters parameter value of video&#x3D;&#x3D;dMH0bHeiRNg;country&#x3D;&#x3D;IT restricts the result set to include data for the given video in Italy.
    - :include-historical-channel-data (boolean()): If set to true historical data (i.e. channel data from before the linking of the channel to the content owner) will be retrieved.
    - :max-results (integer()): The maximum number of rows to include in the response.
    - :sort (String.t): A comma-separated list of dimensions or metrics that determine the sort order for YouTube Analytics data. By default the sort order is ascending. The &#39;-&#39; prefix causes descending sort order.
    - :start-index (integer()): An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter (one-based, inclusive).

  ## Returns

  {:ok, %GoogleApi.YouTubeAnalytics.V1.Model.ResultTable{}} on success
  {:error, info} on failure
  """
  @spec youtube_analytics_reports_query(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.YouTubeAnalytics.V1.Model.ResultTable.t()} | {:error, Tesla.Env.t()}
  def youtube_analytics_reports_query(
        connection,
        ids,
        start_date,
        end_date,
        metrics,
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
      :currency => :query,
      :dimensions => :query,
      :filters => :query,
      :"include-historical-channel-data" => :query,
      :"max-results" => :query,
      :sort => :query,
      :"start-index" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/reports")
      |> Request.add_param(:query, :ids, ids)
      |> Request.add_param(:query, :"start-date", start_date)
      |> Request.add_param(:query, :"end-date", end_date)
      |> Request.add_param(:query, :metrics, metrics)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.YouTubeAnalytics.V1.Model.ResultTable{}])
  end
end