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

defmodule GoogleApi.Monitoring.V3.Model.Distribution do
  @moduledoc """
  Distribution contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets.The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths.Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the mean and sum_of_squared_deviation fields meaningless.

  ## Attributes

  *   `bucketCounts` (*type:* `list(String.t)`, *default:* `nil`) - Required in the Stackdriver Monitoring API v3. The values for each bucket specified in bucket_options. The sum of the values in bucketCounts must equal the value in the count field of the Distribution object. The order of the bucket counts follows the numbering schemes described for the three bucket types. The underflow bucket has number 0; the finite buckets, if any, have numbers 1 through N-2; and the overflow bucket has number N-1. The size of bucket_counts must not be greater than N. If the size is less than N, then the remaining buckets are assigned values of zero.
  *   `bucketOptions` (*type:* `GoogleApi.Monitoring.V3.Model.BucketOptions.t`, *default:* `nil`) - Required in the Stackdriver Monitoring API v3. Defines the histogram bucket boundaries.
  *   `count` (*type:* `String.t`, *default:* `nil`) - The number of values in the population. Must be non-negative. This value must equal the sum of the values in bucket_counts if a histogram is provided.
  *   `exemplars` (*type:* `list(GoogleApi.Monitoring.V3.Model.Exemplar.t)`, *default:* `nil`) - Must be in increasing order of value field.
  *   `mean` (*type:* `float()`, *default:* `nil`) - The arithmetic mean of the values in the population. If count is zero then this field must be zero.
  *   `range` (*type:* `GoogleApi.Monitoring.V3.Model.Range.t`, *default:* `nil`) - If specified, contains the range of the population values. The field must not be present if the count is zero. This field is presently ignored by the Stackdriver Monitoring API v3.
  *   `sumOfSquaredDeviation` (*type:* `float()`, *default:* `nil`) - The sum of squared deviations from the mean of the values in the population. For values x_i this is:
      Sum[i=1..n]((x_i - mean)^2)
      Knuth, "The Art of Computer Programming", Vol. 2, page 323, 3rd edition describes Welford's method for accumulating this sum in one pass.If count is zero then this field must be zero.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketCounts => list(String.t()),
          :bucketOptions => GoogleApi.Monitoring.V3.Model.BucketOptions.t(),
          :count => String.t(),
          :exemplars => list(GoogleApi.Monitoring.V3.Model.Exemplar.t()),
          :mean => float(),
          :range => GoogleApi.Monitoring.V3.Model.Range.t(),
          :sumOfSquaredDeviation => float()
        }

  field(:bucketCounts, type: :list)
  field(:bucketOptions, as: GoogleApi.Monitoring.V3.Model.BucketOptions)
  field(:count)
  field(:exemplars, as: GoogleApi.Monitoring.V3.Model.Exemplar, type: :list)
  field(:mean)
  field(:range, as: GoogleApi.Monitoring.V3.Model.Range)
  field(:sumOfSquaredDeviation)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Distribution do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Distribution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Distribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
