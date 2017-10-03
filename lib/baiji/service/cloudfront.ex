defmodule Baiji.CloudFront do
  @moduledoc """
  Amazon CloudFront

  This is the *Amazon CloudFront API Reference*. This guide is for developers
  who need detailed information about the CloudFront API actions, data types,
  and errors. For detailed information about CloudFront features and their
  associated API calls, see the *Amazon CloudFront Developer Guide*.
  """
  
  @doc """
  Creates a new origin access identity. If you're using Amazon S3 for your
  origin, you can use an origin access identity to require users to access
  your content using a CloudFront URL instead of the Amazon S3 URL. For more
  information about how to use origin access identities, see [Serving Private
  Content through
  CloudFront](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront",
      input:            input,
      options:          options,
      action:           "CreateCloudFrontOriginAccessIdentity",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateCloudFrontOriginAccessIdentityRequest",
      output_shape:     "CreateCloudFrontOriginAccessIdentityResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new web distribution. Send a `POST` request to the `/*CloudFront
  API version*/distribution`/`distribution ID` resource.
  """
  def create_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution",
      input:            input,
      options:          options,
      action:           "CreateDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateDistributionRequest",
      output_shape:     "CreateDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new distribution with tags.
  """
  def create_distribution_with_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution?WithTags",
      input:            input,
      options:          options,
      action:           "CreateDistributionWithTags",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateDistributionWithTagsRequest",
      output_shape:     "CreateDistributionWithTagsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new invalidation.
  """
  def create_invalidation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{DistributionId}/invalidation",
      input:            input,
      options:          options,
      action:           "CreateInvalidation",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateInvalidationRequest",
      output_shape:     "CreateInvalidationResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new RMTP distribution. An RTMP distribution is similar to a web
  distribution, but an RTMP distribution streams media files using the Adobe
  Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.

  To create a new web distribution, submit a `POST` request to the
  *CloudFront API version*/distribution resource. The request body must
  include a document with a *StreamingDistributionConfig* element. The
  response echoes the `StreamingDistributionConfig` element and returns other
  information about the RTMP distribution.

  To get the status of your request, use the *GET StreamingDistribution* API
  action. When the value of `Enabled` is `true` and the value of `Status` is
  `Deployed`, your distribution is ready. A distribution usually deploys in
  less than 15 minutes.

  For more information about web distributions, see [Working with RTMP
  Distributions](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html)
  in the *Amazon CloudFront Developer Guide*.

  <important> Beginning with the 2012-05-05 version of the CloudFront API, we
  made substantial changes to the format of the XML document that you include
  in the request body when you create or update a web distribution or an RTMP
  distribution, and when you invalidate objects. With previous versions of
  the API, we discovered that it was too easy to accidentally delete one or
  more values for an element that accepts multiple values, for example,
  CNAMEs and trusted signers. Our changes for the 2012-05-05 release are
  intended to prevent these accidental deletions and to notify you when
  there's a mismatch between the number of values you say you're specifying
  in the `Quantity` element and the number of values specified.

  </important>
  """
  def create_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution",
      input:            input,
      options:          options,
      action:           "CreateStreamingDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateStreamingDistributionRequest",
      output_shape:     "CreateStreamingDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new streaming distribution with tags.
  """
  def create_streaming_distribution_with_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution?WithTags",
      input:            input,
      options:          options,
      action:           "CreateStreamingDistributionWithTags",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "CreateStreamingDistributionWithTagsRequest",
      output_shape:     "CreateStreamingDistributionWithTagsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete an origin access identity.
  """
  def delete_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteCloudFrontOriginAccessIdentity",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :delete,
      input_shape:      "DeleteCloudFrontOriginAccessIdentityRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete a distribution.
  """
  def delete_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :delete,
      input_shape:      "DeleteDistributionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete a streaming distribution. To delete an RTMP distribution using the
  CloudFront API, perform the following steps.

  **To delete an RTMP distribution using the CloudFront API**:

  <ol> <li> Disable the RTMP distribution.

  </li> <li> Submit a `GET Streaming Distribution Config` request to get the
  current configuration and the `Etag` header for the distribution.

  </li> <li> Update the XML document that was returned in the response to
  your `GET Streaming Distribution Config` request to change the value of
  `Enabled` to `false`.

  </li> <li> Submit a `PUT Streaming Distribution Config` request to update
  the configuration for your distribution. In the request body, include the
  XML document that you updated in Step 3. Then set the value of the HTTP
  `If-Match` header to the value of the `ETag` header that CloudFront
  returned when you submitted the `GET Streaming Distribution Config` request
  in Step 2.

  </li> <li> Review the response to the `PUT Streaming Distribution Config`
  request to confirm that the distribution was successfully disabled.

  </li> <li> Submit a `GET Streaming Distribution Config` request to confirm
  that your changes have propagated. When propagation is complete, the value
  of `Status` is `Deployed`.

  </li> <li> Submit a `DELETE Streaming Distribution` request. Set the value
  of the HTTP `If-Match` header to the value of the `ETag` header that
  CloudFront returned when you submitted the `GET Streaming Distribution
  Config` request in Step 2.

  </li> <li> Review the response to your `DELETE Streaming Distribution`
  request to confirm that the distribution was successfully deleted.

  </li> </ol> For information about deleting a distribution using the
  CloudFront console, see [Deleting a
  Distribution](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def delete_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution/{Id}",
      input:            input,
      options:          options,
      action:           "DeleteStreamingDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :delete,
      input_shape:      "DeleteStreamingDistributionRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront/{Id}",
      input:            input,
      options:          options,
      action:           "GetCloudFrontOriginAccessIdentity",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetCloudFrontOriginAccessIdentityRequest",
      output_shape:     "GetCloudFrontOriginAccessIdentityResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the configuration information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront/{Id}/config",
      input:            input,
      options:          options,
      action:           "GetCloudFrontOriginAccessIdentityConfig",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetCloudFrontOriginAccessIdentityConfigRequest",
      output_shape:     "GetCloudFrontOriginAccessIdentityConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the information about a distribution.
  """
  def get_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{Id}",
      input:            input,
      options:          options,
      action:           "GetDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetDistributionRequest",
      output_shape:     "GetDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the configuration information about a distribution.
  """
  def get_distribution_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{Id}/config",
      input:            input,
      options:          options,
      action:           "GetDistributionConfig",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetDistributionConfigRequest",
      output_shape:     "GetDistributionConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the information about an invalidation.
  """
  def get_invalidation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{DistributionId}/invalidation/{Id}",
      input:            input,
      options:          options,
      action:           "GetInvalidation",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetInvalidationRequest",
      output_shape:     "GetInvalidationResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets information about a specified RTMP distribution, including the
  distribution configuration.
  """
  def get_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution/{Id}",
      input:            input,
      options:          options,
      action:           "GetStreamingDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetStreamingDistributionRequest",
      output_shape:     "GetStreamingDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get the configuration information about a streaming distribution.
  """
  def get_streaming_distribution_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution/{Id}/config",
      input:            input,
      options:          options,
      action:           "GetStreamingDistributionConfig",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "GetStreamingDistributionConfigRequest",
      output_shape:     "GetStreamingDistributionConfigResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists origin access identities.
  """
  def list_cloud_front_origin_access_identities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront",
      input:            input,
      options:          options,
      action:           "ListCloudFrontOriginAccessIdentities",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListCloudFrontOriginAccessIdentitiesRequest",
      output_shape:     "ListCloudFrontOriginAccessIdentitiesResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  List distributions.
  """
  def list_distributions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution",
      input:            input,
      options:          options,
      action:           "ListDistributions",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListDistributionsRequest",
      output_shape:     "ListDistributionsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  List the distributions that are associated with a specified AWS WAF web
  ACL.
  """
  def list_distributions_by_web_a_c_l_id(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distributionsByWebACLId/{WebACLId}",
      input:            input,
      options:          options,
      action:           "ListDistributionsByWebACLId",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListDistributionsByWebACLIdRequest",
      output_shape:     "ListDistributionsByWebACLIdResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists invalidation batches.
  """
  def list_invalidations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{DistributionId}/invalidation",
      input:            input,
      options:          options,
      action:           "ListInvalidations",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListInvalidationsRequest",
      output_shape:     "ListInvalidationsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  List streaming distributions.
  """
  def list_streaming_distributions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution",
      input:            input,
      options:          options,
      action:           "ListStreamingDistributions",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListStreamingDistributionsRequest",
      output_shape:     "ListStreamingDistributionsResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  List tags for a CloudFront resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/tagging",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :get,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Add tags to a CloudFront resource.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/tagging?Operation=Tag",
      input:            input,
      options:          options,
      action:           "TagResource",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "TagResourceRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Remove tags from a CloudFront resource.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/tagging?Operation=Untag",
      input:            input,
      options:          options,
      action:           "UntagResource",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :post,
      input_shape:      "UntagResourceRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Update an origin access identity.
  """
  def update_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/origin-access-identity/cloudfront/{Id}/config",
      input:            input,
      options:          options,
      action:           "UpdateCloudFrontOriginAccessIdentity",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :put,
      input_shape:      "UpdateCloudFrontOriginAccessIdentityRequest",
      output_shape:     "UpdateCloudFrontOriginAccessIdentityResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the configuration for a web distribution. Perform the following
  steps.

  For information about updating a distribution using the CloudFront console,
  see [Creating or Updating a Web Distribution Using the CloudFront Console
  ](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html)
  in the *Amazon CloudFront Developer Guide*.

  **To update a web distribution using the CloudFront API**

  <ol> <li> Submit a `GetDistributionConfig` request to get the current
  configuration and an `Etag` header for the distribution.

  <note> If you update the distribution again, you need to get a new `Etag`
  header.

  </note> </li> <li> Update the XML document that was returned in the
  response to your `GetDistributionConfig` request to include the desired
  changes. You can't change the value of `CallerReference`. If you try to
  change this value, CloudFront returns an `IllegalUpdate` error.

  <important> The new configuration replaces the existing configuration; the
  values that you specify in an `UpdateDistribution` request are not merged
  into the existing configuration. When you add, delete, or replace values in
  an element that allows multiple values (for example, `CNAME`), you must
  specify all of the values that you want to appear in the updated
  distribution. In addition, you must update the corresponding `Quantity`
  element.

  </important> </li> <li> Submit an `UpdateDistribution` request to update
  the configuration for your distribution:

  <ul> <li> In the request body, include the XML document that you updated in
  Step 2. The request body must include an XML document with a
  `DistributionConfig` element.

  </li> <li> Set the value of the HTTP `If-Match` header to the value of the
  `ETag` header that CloudFront returned when you submitted the
  `GetDistributionConfig` request in Step 1.

  </li> </ul> </li> <li> Review the response to the `UpdateDistribution`
  request to confirm that the configuration was successfully updated.

  </li> <li> Optional: Submit a `GetDistribution` request to confirm that
  your changes have propagated. When propagation is complete, the value of
  `Status` is `Deployed`.

  <important> Beginning with the 2012-05-05 version of the CloudFront API, we
  made substantial changes to the format of the XML document that you include
  in the request body when you create or update a distribution. With previous
  versions of the API, we discovered that it was too easy to accidentally
  delete one or more values for an element that accepts multiple values, for
  example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release
  are intended to prevent these accidental deletions and to notify you when
  there's a mismatch between the number of values you say you're specifying
  in the `Quantity` element and the number of values you're actually
  specifying.

  </important> </li> </ol>
  """
  def update_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/distribution/{Id}/config",
      input:            input,
      options:          options,
      action:           "UpdateDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :put,
      input_shape:      "UpdateDistributionRequest",
      output_shape:     "UpdateDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Update a streaming distribution.
  """
  def update_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudfront",
      endpoint:         "/2017-03-25/streaming-distribution/{Id}/config",
      input:            input,
      options:          options,
      action:           "UpdateStreamingDistribution",
      
      endpoint_prefix:  "cloudfront",
      type:             :rest_xml,
      version:          "2017-03-25",
      method:           :put,
      input_shape:      "UpdateStreamingDistributionRequest",
      output_shape:     "UpdateStreamingDistributionResult",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"S3OriginConfig" => %{"members" => %{"OriginAccessIdentity" => %{"shape" => "string"}}, "required" => ["OriginAccessIdentity"], "type" => "structure"}, "ListDistributionsByWebACLIdRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "string"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "string"}, "WebACLId" => %{"location" => "uri", "locationName" => "WebACLId", "shape" => "string"}}, "required" => ["WebACLId"], "type" => "structure"}, "Paths" => %{"members" => %{"Items" => %{"shape" => "PathList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "TagKeys" => %{"members" => %{"Items" => %{"shape" => "TagKeyList"}}, "type" => "structure"}, "CreateDistributionResult" => %{"members" => %{"Distribution" => %{"shape" => "Distribution"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}}, "payload" => "Distribution", "type" => "structure"}, "DistributionSummary" => %{"members" => %{"ARN" => %{"shape" => "string"}, "Aliases" => %{"shape" => "Aliases"}, "CacheBehaviors" => %{"shape" => "CacheBehaviors"}, "Comment" => %{"shape" => "string"}, "CustomErrorResponses" => %{"shape" => "CustomErrorResponses"}, "DefaultCacheBehavior" => %{"shape" => "DefaultCacheBehavior"}, "DomainName" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "HttpVersion" => %{"shape" => "HttpVersion"}, "Id" => %{"shape" => "string"}, "IsIPV6Enabled" => %{"shape" => "boolean"}, "LastModifiedTime" => %{"shape" => "timestamp"}, "Origins" => %{"shape" => "Origins"}, "PriceClass" => %{"shape" => "PriceClass"}, "Restrictions" => %{"shape" => "Restrictions"}, "Status" => %{"shape" => "string"}, "ViewerCertificate" => %{"shape" => "ViewerCertificate"}, "WebACLId" => %{"shape" => "string"}}, "required" => ["Id", "ARN", "Status", "LastModifiedTime", "DomainName", "Aliases", "Origins", "DefaultCacheBehavior", "CacheBehaviors", "CustomErrorResponses", "Comment", "PriceClass", "Enabled", "ViewerCertificate", "Restrictions", "WebACLId", "HttpVersion", "IsIPV6Enabled"], "type" => "structure"}, "NoSuchStreamingDistribution" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetCloudFrontOriginAccessIdentityConfigRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "StreamingDistributionNotDisabled" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidGeoRestrictionParameter" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "Signer" => %{"members" => %{"AwsAccountNumber" => %{"shape" => "string"}, "KeyPairIds" => %{"shape" => "KeyPairIds"}}, "type" => "structure"}, "CookieNames" => %{"members" => %{"Items" => %{"shape" => "CookieNameList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "TooManyInvalidationsInProgress" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CreateStreamingDistributionWithTagsResult" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}, "StreamingDistribution" => %{"shape" => "StreamingDistribution"}}, "payload" => "StreamingDistribution", "type" => "structure"}, "TagKeyList" => %{"member" => %{"locationName" => "Key", "shape" => "TagKey"}, "type" => "list"}, "CreateDistributionWithTagsResult" => %{"members" => %{"Distribution" => %{"shape" => "Distribution"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}}, "payload" => "Distribution", "type" => "structure"}, "StreamingDistributionList" => %{"members" => %{"IsTruncated" => %{"shape" => "boolean"}, "Items" => %{"shape" => "StreamingDistributionSummaryList"}, "Marker" => %{"shape" => "string"}, "MaxItems" => %{"shape" => "integer"}, "NextMarker" => %{"shape" => "string"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Marker", "MaxItems", "IsTruncated", "Quantity"], "type" => "structure"}, "HeaderList" => %{"member" => %{"locationName" => "Name", "shape" => "string"}, "type" => "list"}, "UpdateStreamingDistributionRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}, "StreamingDistributionConfig" => %{"locationName" => "StreamingDistributionConfig", "shape" => "StreamingDistributionConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "StreamingDistributionConfig", "required" => ["StreamingDistributionConfig", "Id"], "type" => "structure"}, "MinimumProtocolVersion" => %{"enum" => ["SSLv3", "TLSv1"], "type" => "string"}, "DefaultCacheBehavior" => %{"members" => %{"AllowedMethods" => %{"shape" => "AllowedMethods"}, "Compress" => %{"shape" => "boolean"}, "DefaultTTL" => %{"shape" => "long"}, "ForwardedValues" => %{"shape" => "ForwardedValues"}, "LambdaFunctionAssociations" => %{"shape" => "LambdaFunctionAssociations"}, "MaxTTL" => %{"shape" => "long"}, "MinTTL" => %{"shape" => "long"}, "SmoothStreaming" => %{"shape" => "boolean"}, "TargetOriginId" => %{"shape" => "string"}, "TrustedSigners" => %{"shape" => "TrustedSigners"}, "ViewerProtocolPolicy" => %{"shape" => "ViewerProtocolPolicy"}}, "required" => ["TargetOriginId", "ForwardedValues", "TrustedSigners", "ViewerProtocolPolicy", "MinTTL"], "type" => "structure"}, "InvalidTTLOrder" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "DistributionSummaryList" => %{"member" => %{"locationName" => "DistributionSummary", "shape" => "DistributionSummary"}, "type" => "list"}, "CookieNameList" => %{"member" => %{"locationName" => "Name", "shape" => "string"}, "type" => "list"}, "CreateStreamingDistributionWithTagsRequest" => %{"members" => %{"StreamingDistributionConfigWithTags" => %{"locationName" => "StreamingDistributionConfigWithTags", "shape" => "StreamingDistributionConfigWithTags", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "StreamingDistributionConfigWithTags", "required" => ["StreamingDistributionConfigWithTags"], "type" => "structure"}, "StreamingDistributionAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "StreamingDistributionSummary" => %{"members" => %{"ARN" => %{"shape" => "string"}, "Aliases" => %{"shape" => "Aliases"}, "Comment" => %{"shape" => "string"}, "DomainName" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "Id" => %{"shape" => "string"}, "LastModifiedTime" => %{"shape" => "timestamp"}, "PriceClass" => %{"shape" => "PriceClass"}, "S3Origin" => %{"shape" => "S3Origin"}, "Status" => %{"shape" => "string"}, "TrustedSigners" => %{"shape" => "TrustedSigners"}}, "required" => ["Id", "ARN", "Status", "LastModifiedTime", "DomainName", "S3Origin", "Aliases", "TrustedSigners", "Comment", "PriceClass", "Enabled"], "type" => "structure"}, "CloudFrontOriginAccessIdentityConfig" => %{"members" => %{"CallerReference" => %{"shape" => "string"}, "Comment" => %{"shape" => "string"}}, "required" => ["CallerReference", "Comment"], "type" => "structure"}, "CustomErrorResponse" => %{"members" => %{"ErrorCachingMinTTL" => %{"shape" => "long"}, "ErrorCode" => %{"shape" => "integer"}, "ResponseCode" => %{"shape" => "string"}, "ResponsePagePath" => %{"shape" => "string"}}, "required" => ["ErrorCode"], "type" => "structure"}, "NoSuchInvalidation" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "ListStreamingDistributionsRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "string"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "string"}}, "type" => "structure"}, "Invalidation" => %{"members" => %{"CreateTime" => %{"shape" => "timestamp"}, "Id" => %{"shape" => "string"}, "InvalidationBatch" => %{"shape" => "InvalidationBatch"}, "Status" => %{"shape" => "string"}}, "required" => ["Id", "Status", "CreateTime", "InvalidationBatch"], "type" => "structure"}, "InvalidForwardCookies" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "TooManyDistributionsWithLambdaAssociations" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidArgument" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetInvalidationResult" => %{"members" => %{"Invalidation" => %{"shape" => "Invalidation"}}, "payload" => "Invalidation", "type" => "structure"}, "InvalidLocationCode" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "DistributionList" => %{"members" => %{"IsTruncated" => %{"shape" => "boolean"}, "Items" => %{"shape" => "DistributionSummaryList"}, "Marker" => %{"shape" => "string"}, "MaxItems" => %{"shape" => "integer"}, "NextMarker" => %{"shape" => "string"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Marker", "MaxItems", "IsTruncated", "Quantity"], "type" => "structure"}, "ListCloudFrontOriginAccessIdentitiesResult" => %{"members" => %{"CloudFrontOriginAccessIdentityList" => %{"shape" => "CloudFrontOriginAccessIdentityList"}}, "payload" => "CloudFrontOriginAccessIdentityList", "type" => "structure"}, "ActiveTrustedSigners" => %{"members" => %{"Enabled" => %{"shape" => "boolean"}, "Items" => %{"shape" => "SignerList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Enabled", "Quantity"], "type" => "structure"}, "Restrictions" => %{"members" => %{"GeoRestriction" => %{"shape" => "GeoRestriction"}}, "required" => ["GeoRestriction"], "type" => "structure"}, "Headers" => %{"members" => %{"Items" => %{"shape" => "HeaderList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "TooManyCacheBehaviors" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "S3Origin" => %{"members" => %{"DomainName" => %{"shape" => "string"}, "OriginAccessIdentity" => %{"shape" => "string"}}, "required" => ["DomainName", "OriginAccessIdentity"], "type" => "structure"}, "TrustedSigners" => %{"members" => %{"Enabled" => %{"shape" => "boolean"}, "Items" => %{"shape" => "AwsAccountNumberList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Enabled", "Quantity"], "type" => "structure"}, "CloudFrontOriginAccessIdentityList" => %{"members" => %{"IsTruncated" => %{"shape" => "boolean"}, "Items" => %{"shape" => "CloudFrontOriginAccessIdentitySummaryList"}, "Marker" => %{"shape" => "string"}, "MaxItems" => %{"shape" => "integer"}, "NextMarker" => %{"shape" => "string"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Marker", "MaxItems", "IsTruncated", "Quantity"], "type" => "structure"}, "InvalidRequiredProtocol" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidationSummaryList" => %{"member" => %{"locationName" => "InvalidationSummary", "shape" => "InvalidationSummary"}, "type" => "list"}, "ListTagsForResourceResult" => %{"members" => %{"Tags" => %{"shape" => "Tags"}}, "payload" => "Tags", "required" => ["Tags"], "type" => "structure"}, "TooManyHeadersInForwardedValues" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "boolean" => %{"type" => "boolean"}, "CreateCloudFrontOriginAccessIdentityRequest" => %{"members" => %{"CloudFrontOriginAccessIdentityConfig" => %{"locationName" => "CloudFrontOriginAccessIdentityConfig", "shape" => "CloudFrontOriginAccessIdentityConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "CloudFrontOriginAccessIdentityConfig", "required" => ["CloudFrontOriginAccessIdentityConfig"], "type" => "structure"}, "GetDistributionRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "CreateDistributionWithTagsRequest" => %{"members" => %{"DistributionConfigWithTags" => %{"locationName" => "DistributionConfigWithTags", "shape" => "DistributionConfigWithTags", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "DistributionConfigWithTags", "required" => ["DistributionConfigWithTags"], "type" => "structure"}, "PreconditionFailed" => %{"error" => %{"httpStatusCode" => 412}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "QueryStringCacheKeys" => %{"members" => %{"Items" => %{"shape" => "QueryStringCacheKeysList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "InvalidLambdaFunctionAssociation" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "OriginCustomHeader" => %{"members" => %{"HeaderName" => %{"shape" => "string"}, "HeaderValue" => %{"shape" => "string"}}, "required" => ["HeaderName", "HeaderValue"], "type" => "structure"}, "Method" => %{"enum" => ["GET", "HEAD", "POST", "PUT", "PATCH", "OPTIONS", "DELETE"], "type" => "string"}, "ListTagsForResourceRequest" => %{"members" => %{"Resource" => %{"location" => "querystring", "locationName" => "Resource", "shape" => "ResourceARN"}}, "required" => ["Resource"], "type" => "structure"}, "TooManyTrustedSigners" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "Distribution" => %{"members" => %{"ARN" => %{"shape" => "string"}, "ActiveTrustedSigners" => %{"shape" => "ActiveTrustedSigners"}, "DistributionConfig" => %{"shape" => "DistributionConfig"}, "DomainName" => %{"shape" => "string"}, "Id" => %{"shape" => "string"}, "InProgressInvalidationBatches" => %{"shape" => "integer"}, "LastModifiedTime" => %{"shape" => "timestamp"}, "Status" => %{"shape" => "string"}}, "required" => ["Id", "ARN", "Status", "LastModifiedTime", "InProgressInvalidationBatches", "DomainName", "ActiveTrustedSigners", "DistributionConfig"], "type" => "structure"}, "CloudFrontOriginAccessIdentitySummary" => %{"members" => %{"Comment" => %{"shape" => "string"}, "Id" => %{"shape" => "string"}, "S3CanonicalUserId" => %{"shape" => "string"}}, "required" => ["Id", "S3CanonicalUserId", "Comment"], "type" => "structure"}, "SslProtocol" => %{"enum" => ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"], "type" => "string"}, "CustomErrorResponses" => %{"members" => %{"Items" => %{"shape" => "CustomErrorResponseList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "NoSuchCloudFrontOriginAccessIdentity" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidViewerCertificate" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetInvalidationRequest" => %{"members" => %{"DistributionId" => %{"location" => "uri", "locationName" => "DistributionId", "shape" => "string"}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["DistributionId", "Id"], "type" => "structure"}, "CloudFrontOriginAccessIdentity" => %{"members" => %{"CloudFrontOriginAccessIdentityConfig" => %{"shape" => "CloudFrontOriginAccessIdentityConfig"}, "Id" => %{"shape" => "string"}, "S3CanonicalUserId" => %{"shape" => "string"}}, "required" => ["Id", "S3CanonicalUserId"], "type" => "structure"}, "InconsistentQuantities" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CustomOriginConfig" => %{"members" => %{"HTTPPort" => %{"shape" => "integer"}, "HTTPSPort" => %{"shape" => "integer"}, "OriginKeepaliveTimeout" => %{"shape" => "integer"}, "OriginProtocolPolicy" => %{"shape" => "OriginProtocolPolicy"}, "OriginReadTimeout" => %{"shape" => "integer"}, "OriginSslProtocols" => %{"shape" => "OriginSslProtocols"}}, "required" => ["HTTPPort", "HTTPSPort", "OriginProtocolPolicy"], "type" => "structure"}, "LocationList" => %{"member" => %{"locationName" => "Location", "shape" => "string"}, "type" => "list"}, "ItemSelection" => %{"enum" => ["none", "whitelist", "all"], "type" => "string"}, "ListInvalidationsRequest" => %{"members" => %{"DistributionId" => %{"location" => "uri", "locationName" => "DistributionId", "shape" => "string"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "string"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "string"}}, "required" => ["DistributionId"], "type" => "structure"}, "UpdateDistributionResult" => %{"members" => %{"Distribution" => %{"shape" => "Distribution"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "Distribution", "type" => "structure"}, "QueryStringCacheKeysList" => %{"member" => %{"locationName" => "Name", "shape" => "string"}, "type" => "list"}, "IllegalUpdate" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "ResourceARN" => %{"pattern" => "arn:aws:cloudfront::[0-9]+:.*", "type" => "string"}, "LoggingConfig" => %{"members" => %{"Bucket" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "IncludeCookies" => %{"shape" => "boolean"}, "Prefix" => %{"shape" => "string"}}, "required" => ["Enabled", "IncludeCookies", "Bucket", "Prefix"], "type" => "structure"}, "Origins" => %{"members" => %{"Items" => %{"shape" => "OriginList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "InvalidErrorCode" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "TooManyOrigins" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "LambdaFunctionAssociationList" => %{"member" => %{"locationName" => "LambdaFunctionAssociation", "shape" => "LambdaFunctionAssociation"}, "type" => "list"}, "TooManyCookieNamesInWhiteList" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetStreamingDistributionRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "UntagResourceRequest" => %{"members" => %{"Resource" => %{"location" => "querystring", "locationName" => "Resource", "shape" => "ResourceARN"}, "TagKeys" => %{"locationName" => "TagKeys", "shape" => "TagKeys", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "TagKeys", "required" => ["Resource", "TagKeys"], "type" => "structure"}, "GetCloudFrontOriginAccessIdentityConfigResult" => %{"members" => %{"CloudFrontOriginAccessIdentityConfig" => %{"shape" => "CloudFrontOriginAccessIdentityConfig"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "CloudFrontOriginAccessIdentityConfig", "type" => "structure"}, "CacheBehavior" => %{"members" => %{"AllowedMethods" => %{"shape" => "AllowedMethods"}, "Compress" => %{"shape" => "boolean"}, "DefaultTTL" => %{"shape" => "long"}, "ForwardedValues" => %{"shape" => "ForwardedValues"}, "LambdaFunctionAssociations" => %{"shape" => "LambdaFunctionAssociations"}, "MaxTTL" => %{"shape" => "long"}, "MinTTL" => %{"shape" => "long"}, "PathPattern" => %{"shape" => "string"}, "SmoothStreaming" => %{"shape" => "boolean"}, "TargetOriginId" => %{"shape" => "string"}, "TrustedSigners" => %{"shape" => "TrustedSigners"}, "ViewerProtocolPolicy" => %{"shape" => "ViewerProtocolPolicy"}}, "required" => ["PathPattern", "TargetOriginId", "ForwardedValues", "TrustedSigners", "ViewerProtocolPolicy", "MinTTL"], "type" => "structure"}, "TooManyCloudFrontOriginAccessIdentities" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CacheBehaviors" => %{"members" => %{"Items" => %{"shape" => "CacheBehaviorList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "TooManyDistributionCNAMEs" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "Tags" => %{"members" => %{"Items" => %{"shape" => "TagList"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "InvalidOrigin" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "NoSuchOrigin" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "OriginProtocolPolicy" => %{"enum" => ["http-only", "match-viewer", "https-only"], "type" => "string"}, "AccessDenied" => %{"error" => %{"httpStatusCode" => 403}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CustomErrorResponseList" => %{"member" => %{"locationName" => "CustomErrorResponse", "shape" => "CustomErrorResponse"}, "type" => "list"}, "string" => %{"type" => "string"}, "MissingBody" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "timestamp" => %{"type" => "timestamp"}, "CNAMEAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "LambdaFunctionAssociations" => %{"members" => %{"Items" => %{"shape" => "LambdaFunctionAssociationList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "long" => %{"type" => "long"}, "InvalidationList" => %{"members" => %{"IsTruncated" => %{"shape" => "boolean"}, "Items" => %{"shape" => "InvalidationSummaryList"}, "Marker" => %{"shape" => "string"}, "MaxItems" => %{"shape" => "integer"}, "NextMarker" => %{"shape" => "string"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Marker", "MaxItems", "IsTruncated", "Quantity"], "type" => "structure"}, "TagList" => %{"member" => %{"locationName" => "Tag", "shape" => "Tag"}, "type" => "list"}, "TrustedSignerDoesNotExist" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "ListCloudFrontOriginAccessIdentitiesRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "string"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "string"}}, "type" => "structure"}, "DistributionAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidResponseCode" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "PriceClass" => %{"enum" => ["PriceClass_100", "PriceClass_200", "PriceClass_All"], "type" => "string"}, "UpdateStreamingDistributionResult" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "StreamingDistribution" => %{"shape" => "StreamingDistribution"}}, "payload" => "StreamingDistribution", "type" => "structure"}, "ViewerProtocolPolicy" => %{"enum" => ["allow-all", "https-only", "redirect-to-https"], "type" => "string"}, "StreamingLoggingConfig" => %{"members" => %{"Bucket" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "Prefix" => %{"shape" => "string"}}, "required" => ["Enabled", "Bucket", "Prefix"], "type" => "structure"}, "Origin" => %{"members" => %{"CustomHeaders" => %{"shape" => "CustomHeaders"}, "CustomOriginConfig" => %{"shape" => "CustomOriginConfig"}, "DomainName" => %{"shape" => "string"}, "Id" => %{"shape" => "string"}, "OriginPath" => %{"shape" => "string"}, "S3OriginConfig" => %{"shape" => "S3OriginConfig"}}, "required" => ["Id", "DomainName"], "type" => "structure"}, "BatchTooLarge" => %{"error" => %{"httpStatusCode" => 413}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CacheBehaviorList" => %{"member" => %{"locationName" => "CacheBehavior", "shape" => "CacheBehavior"}, "type" => "list"}, "TooManyCertificates" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "SSLSupportMethod" => %{"enum" => ["sni-only", "vip"], "type" => "string"}, "CreateInvalidationResult" => %{"members" => %{"Invalidation" => %{"shape" => "Invalidation"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}}, "payload" => "Invalidation", "type" => "structure"}, "TooManyDistributions" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CreateStreamingDistributionResult" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}, "StreamingDistribution" => %{"shape" => "StreamingDistribution"}}, "payload" => "StreamingDistribution", "type" => "structure"}, "StreamingDistribution" => %{"members" => %{"ARN" => %{"shape" => "string"}, "ActiveTrustedSigners" => %{"shape" => "ActiveTrustedSigners"}, "DomainName" => %{"shape" => "string"}, "Id" => %{"shape" => "string"}, "LastModifiedTime" => %{"shape" => "timestamp"}, "Status" => %{"shape" => "string"}, "StreamingDistributionConfig" => %{"shape" => "StreamingDistributionConfig"}}, "required" => ["Id", "ARN", "Status", "DomainName", "ActiveTrustedSigners", "StreamingDistributionConfig"], "type" => "structure"}, "LambdaFunctionAssociation" => %{"members" => %{"EventType" => %{"shape" => "EventType"}, "LambdaFunctionARN" => %{"shape" => "string"}}, "type" => "structure"}, "OriginCustomHeadersList" => %{"member" => %{"locationName" => "OriginCustomHeader", "shape" => "OriginCustomHeader"}, "type" => "list"}, "InvalidRelativePath" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetStreamingDistributionConfigResult" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "StreamingDistributionConfig" => %{"shape" => "StreamingDistributionConfig"}}, "payload" => "StreamingDistributionConfig", "type" => "structure"}, "TooManyLambdaFunctionAssociations" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetDistributionConfigRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "GeoRestriction" => %{"members" => %{"Items" => %{"shape" => "LocationList"}, "Quantity" => %{"shape" => "integer"}, "RestrictionType" => %{"shape" => "GeoRestrictionType"}}, "required" => ["RestrictionType", "Quantity"], "type" => "structure"}, "UpdateCloudFrontOriginAccessIdentityResult" => %{"members" => %{"CloudFrontOriginAccessIdentity" => %{"shape" => "CloudFrontOriginAccessIdentity"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "CloudFrontOriginAccessIdentity", "type" => "structure"}, "TagResourceRequest" => %{"members" => %{"Resource" => %{"location" => "querystring", "locationName" => "Resource", "shape" => "ResourceARN"}, "Tags" => %{"locationName" => "Tags", "shape" => "Tags", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "Tags", "required" => ["Resource", "Tags"], "type" => "structure"}, "InvalidTagging" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "UpdateDistributionRequest" => %{"members" => %{"DistributionConfig" => %{"locationName" => "DistributionConfig", "shape" => "DistributionConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}}, "payload" => "DistributionConfig", "required" => ["DistributionConfig", "Id"], "type" => "structure"}, "CertificateSource" => %{"enum" => ["cloudfront", "iam", "acm"], "type" => "string"}, "DeleteDistributionRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "StreamingDistributionConfig" => %{"members" => %{"Aliases" => %{"shape" => "Aliases"}, "CallerReference" => %{"shape" => "string"}, "Comment" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "Logging" => %{"shape" => "StreamingLoggingConfig"}, "PriceClass" => %{"shape" => "PriceClass"}, "S3Origin" => %{"shape" => "S3Origin"}, "TrustedSigners" => %{"shape" => "TrustedSigners"}}, "required" => ["CallerReference", "S3Origin", "Comment", "TrustedSigners", "Enabled"], "type" => "structure"}, "ListInvalidationsResult" => %{"members" => %{"InvalidationList" => %{"shape" => "InvalidationList"}}, "payload" => "InvalidationList", "type" => "structure"}, "HttpVersion" => %{"enum" => ["http1.1", "http2"], "type" => "string"}, "ListStreamingDistributionsResult" => %{"members" => %{"StreamingDistributionList" => %{"shape" => "StreamingDistributionList"}}, "payload" => "StreamingDistributionList", "type" => "structure"}, "OriginSslProtocols" => %{"members" => %{"Items" => %{"shape" => "SslProtocolsList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity", "Items"], "type" => "structure"}, "InvalidOriginAccessIdentity" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "KeyPairIdList" => %{"member" => %{"locationName" => "KeyPairId", "shape" => "string"}, "type" => "list"}, "TooManyQueryStringParameters" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetStreamingDistributionConfigRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "SignerList" => %{"member" => %{"locationName" => "Signer", "shape" => "Signer"}, "type" => "list"}, "CreateInvalidationRequest" => %{"members" => %{"DistributionId" => %{"location" => "uri", "locationName" => "DistributionId", "shape" => "string"}, "InvalidationBatch" => %{"locationName" => "InvalidationBatch", "shape" => "InvalidationBatch", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "InvalidationBatch", "required" => ["DistributionId", "InvalidationBatch"], "type" => "structure"}, "InvalidQueryStringParameters" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetCloudFrontOriginAccessIdentityRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "KeyPairIds" => %{"members" => %{"Items" => %{"shape" => "KeyPairIdList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "AwsAccountNumberList" => %{"member" => %{"locationName" => "AwsAccountNumber", "shape" => "string"}, "type" => "list"}, "DistributionConfigWithTags" => %{"members" => %{"DistributionConfig" => %{"shape" => "DistributionConfig"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["DistributionConfig", "Tags"], "type" => "structure"}, "ListDistributionsByWebACLIdResult" => %{"members" => %{"DistributionList" => %{"shape" => "DistributionList"}}, "payload" => "DistributionList", "type" => "structure"}, "GetStreamingDistributionResult" => %{"members" => %{"ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "StreamingDistribution" => %{"shape" => "StreamingDistribution"}}, "payload" => "StreamingDistribution", "type" => "structure"}, "CreateDistributionRequest" => %{"members" => %{"DistributionConfig" => %{"locationName" => "DistributionConfig", "shape" => "DistributionConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "DistributionConfig", "required" => ["DistributionConfig"], "type" => "structure"}, "NoSuchDistribution" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "ForwardedValues" => %{"members" => %{"Cookies" => %{"shape" => "CookiePreference"}, "Headers" => %{"shape" => "Headers"}, "QueryString" => %{"shape" => "boolean"}, "QueryStringCacheKeys" => %{"shape" => "QueryStringCacheKeys"}}, "required" => ["QueryString", "Cookies"], "type" => "structure"}, "TooManyStreamingDistributionCNAMEs" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidDefaultRootObject" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CloudFrontOriginAccessIdentitySummaryList" => %{"member" => %{"locationName" => "CloudFrontOriginAccessIdentitySummary", "shape" => "CloudFrontOriginAccessIdentitySummary"}, "type" => "list"}, "CreateStreamingDistributionRequest" => %{"members" => %{"StreamingDistributionConfig" => %{"locationName" => "StreamingDistributionConfig", "shape" => "StreamingDistributionConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}}, "payload" => "StreamingDistributionConfig", "required" => ["StreamingDistributionConfig"], "type" => "structure"}, "InvalidHeadersForS3Origin" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "AliasList" => %{"member" => %{"locationName" => "CNAME", "shape" => "string"}, "type" => "list"}, "DeleteStreamingDistributionRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "GetDistributionConfigResult" => %{"members" => %{"DistributionConfig" => %{"shape" => "DistributionConfig"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "DistributionConfig", "type" => "structure"}, "CookiePreference" => %{"members" => %{"Forward" => %{"shape" => "ItemSelection"}, "WhitelistedNames" => %{"shape" => "CookieNames"}}, "required" => ["Forward"], "type" => "structure"}, "EventType" => %{"enum" => ["viewer-request", "viewer-response", "origin-request", "origin-response"], "type" => "string"}, "InvalidOriginReadTimeout" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "PathList" => %{"member" => %{"locationName" => "Path", "shape" => "string"}, "type" => "list"}, "AllowedMethods" => %{"members" => %{"CachedMethods" => %{"shape" => "CachedMethods"}, "Items" => %{"shape" => "MethodsList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity", "Items"], "type" => "structure"}, "CachedMethods" => %{"members" => %{"Items" => %{"shape" => "MethodsList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity", "Items"], "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "UpdateCloudFrontOriginAccessIdentityRequest" => %{"members" => %{"CloudFrontOriginAccessIdentityConfig" => %{"locationName" => "CloudFrontOriginAccessIdentityConfig", "shape" => "CloudFrontOriginAccessIdentityConfig", "xmlNamespace" => %{"uri" => "http://cloudfront.amazonaws.com/doc/2017-03-25/"}}, "Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}}, "payload" => "CloudFrontOriginAccessIdentityConfig", "required" => ["CloudFrontOriginAccessIdentityConfig", "Id"], "type" => "structure"}, "InvalidProtocolSettings" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CloudFrontOriginAccessIdentityInUse" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "CloudFrontOriginAccessIdentityAlreadyExists" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "ListDistributionsResult" => %{"members" => %{"DistributionList" => %{"shape" => "DistributionList"}}, "payload" => "DistributionList", "type" => "structure"}, "DistributionNotDisabled" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "ListDistributionsRequest" => %{"members" => %{"Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "string"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "string"}}, "type" => "structure"}, "StreamingDistributionConfigWithTags" => %{"members" => %{"StreamingDistributionConfig" => %{"shape" => "StreamingDistributionConfig"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["StreamingDistributionConfig", "Tags"], "type" => "structure"}, "CustomHeaders" => %{"members" => %{"Items" => %{"shape" => "OriginCustomHeadersList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "Aliases" => %{"members" => %{"Items" => %{"shape" => "AliasList"}, "Quantity" => %{"shape" => "integer"}}, "required" => ["Quantity"], "type" => "structure"}, "DeleteCloudFrontOriginAccessIdentityRequest" => %{"members" => %{"Id" => %{"location" => "uri", "locationName" => "Id", "shape" => "string"}, "IfMatch" => %{"location" => "header", "locationName" => "If-Match", "shape" => "string"}}, "required" => ["Id"], "type" => "structure"}, "DistributionConfig" => %{"members" => %{"Aliases" => %{"shape" => "Aliases"}, "CacheBehaviors" => %{"shape" => "CacheBehaviors"}, "CallerReference" => %{"shape" => "string"}, "Comment" => %{"shape" => "string"}, "CustomErrorResponses" => %{"shape" => "CustomErrorResponses"}, "DefaultCacheBehavior" => %{"shape" => "DefaultCacheBehavior"}, "DefaultRootObject" => %{"shape" => "string"}, "Enabled" => %{"shape" => "boolean"}, "HttpVersion" => %{"shape" => "HttpVersion"}, "IsIPV6Enabled" => %{"shape" => "boolean"}, "Logging" => %{"shape" => "LoggingConfig"}, "Origins" => %{"shape" => "Origins"}, "PriceClass" => %{"shape" => "PriceClass"}, "Restrictions" => %{"shape" => "Restrictions"}, "ViewerCertificate" => %{"shape" => "ViewerCertificate"}, "WebACLId" => %{"shape" => "string"}}, "required" => ["CallerReference", "Origins", "DefaultCacheBehavior", "Comment", "Enabled"], "type" => "structure"}, "ViewerCertificate" => %{"members" => %{"ACMCertificateArn" => %{"shape" => "string"}, "Certificate" => %{"deprecated" => true, "shape" => "string"}, "CertificateSource" => %{"deprecated" => true, "shape" => "CertificateSource"}, "CloudFrontDefaultCertificate" => %{"shape" => "boolean"}, "IAMCertificateId" => %{"shape" => "string"}, "MinimumProtocolVersion" => %{"shape" => "MinimumProtocolVersion"}, "SSLSupportMethod" => %{"shape" => "SSLSupportMethod"}}, "type" => "structure"}, "GetDistributionResult" => %{"members" => %{"Distribution" => %{"shape" => "Distribution"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "Distribution", "type" => "structure"}, "OriginList" => %{"member" => %{"locationName" => "Origin", "shape" => "Origin"}, "min" => 1, "type" => "list"}, "TooManyStreamingDistributions" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidationSummary" => %{"members" => %{"CreateTime" => %{"shape" => "timestamp"}, "Id" => %{"shape" => "string"}, "Status" => %{"shape" => "string"}}, "required" => ["Id", "CreateTime", "Status"], "type" => "structure"}, "GeoRestrictionType" => %{"enum" => ["blacklist", "whitelist", "none"], "type" => "string"}, "TooManyOriginCustomHeaders" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "MethodsList" => %{"member" => %{"locationName" => "Method", "shape" => "Method"}, "type" => "list"}, "InvalidationBatch" => %{"members" => %{"CallerReference" => %{"shape" => "string"}, "Paths" => %{"shape" => "Paths"}}, "required" => ["Paths", "CallerReference"], "type" => "structure"}, "integer" => %{"type" => "integer"}, "InvalidWebACLId" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "InvalidIfMatchVersion" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "GetCloudFrontOriginAccessIdentityResult" => %{"members" => %{"CloudFrontOriginAccessIdentity" => %{"shape" => "CloudFrontOriginAccessIdentity"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}}, "payload" => "CloudFrontOriginAccessIdentity", "type" => "structure"}, "CreateCloudFrontOriginAccessIdentityResult" => %{"members" => %{"CloudFrontOriginAccessIdentity" => %{"shape" => "CloudFrontOriginAccessIdentity"}, "ETag" => %{"location" => "header", "locationName" => "ETag", "shape" => "string"}, "Location" => %{"location" => "header", "locationName" => "Location", "shape" => "string"}}, "payload" => "CloudFrontOriginAccessIdentity", "type" => "structure"}, "InvalidOriginKeepaliveTimeout" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "NoSuchResource" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "StreamingDistributionSummaryList" => %{"member" => %{"locationName" => "StreamingDistributionSummary", "shape" => "StreamingDistributionSummary"}, "type" => "list"}, "InvalidMinimumProtocolVersion" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Message" => %{"shape" => "string"}}, "type" => "structure"}, "SslProtocolsList" => %{"member" => %{"locationName" => "SslProtocol", "shape" => "SslProtocol"}, "type" => "list"}}
  end
end