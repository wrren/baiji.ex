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
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront",
      input:          input,
      options:        options,
      action:         "CreateCloudFrontOriginAccessIdentity",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Creates a new web distribution. Send a `POST` request to the `/*CloudFront
  API version*/distribution`/`distribution ID` resource.
  """
  def create_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution",
      input:          input,
      options:        options,
      action:         "CreateDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Create a new distribution with tags.
  """
  def create_distribution_with_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution?WithTags",
      input:          input,
      options:        options,
      action:         "CreateDistributionWithTags",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Create a new invalidation.
  """
  def create_invalidation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{DistributionId}/invalidation",
      input:          input,
      options:        options,
      action:         "CreateInvalidation",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
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
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution",
      input:          input,
      options:        options,
      action:         "CreateStreamingDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Create a new streaming distribution with tags.
  """
  def create_streaming_distribution_with_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution?WithTags",
      input:          input,
      options:        options,
      action:         "CreateStreamingDistributionWithTags",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Delete an origin access identity.
  """
  def delete_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront/{Id}",
      input:          input,
      options:        options,
      action:         "DeleteCloudFrontOriginAccessIdentity",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :delete
    }
  end
  
  @doc """
  Delete a distribution.
  """
  def delete_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{Id}",
      input:          input,
      options:        options,
      action:         "DeleteDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :delete
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
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution/{Id}",
      input:          input,
      options:        options,
      action:         "DeleteStreamingDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :delete
    }
  end
  
  @doc """
  Get the information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront/{Id}",
      input:          input,
      options:        options,
      action:         "GetCloudFrontOriginAccessIdentity",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Get the configuration information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront/{Id}/config",
      input:          input,
      options:        options,
      action:         "GetCloudFrontOriginAccessIdentityConfig",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Get the information about a distribution.
  """
  def get_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{Id}",
      input:          input,
      options:        options,
      action:         "GetDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Get the configuration information about a distribution.
  """
  def get_distribution_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{Id}/config",
      input:          input,
      options:        options,
      action:         "GetDistributionConfig",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Get the information about an invalidation.
  """
  def get_invalidation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{DistributionId}/invalidation/{Id}",
      input:          input,
      options:        options,
      action:         "GetInvalidation",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Gets information about a specified RTMP distribution, including the
  distribution configuration.
  """
  def get_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution/{Id}",
      input:          input,
      options:        options,
      action:         "GetStreamingDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Get the configuration information about a streaming distribution.
  """
  def get_streaming_distribution_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution/{Id}/config",
      input:          input,
      options:        options,
      action:         "GetStreamingDistributionConfig",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Lists origin access identities.
  """
  def list_cloud_front_origin_access_identities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront",
      input:          input,
      options:        options,
      action:         "ListCloudFrontOriginAccessIdentities",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  List distributions.
  """
  def list_distributions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution",
      input:          input,
      options:        options,
      action:         "ListDistributions",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  List the distributions that are associated with a specified AWS WAF web
  ACL.
  """
  def list_distributions_by_web_a_c_l_id(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distributionsByWebACLId/{WebACLId}",
      input:          input,
      options:        options,
      action:         "ListDistributionsByWebACLId",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Lists invalidation batches.
  """
  def list_invalidations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{DistributionId}/invalidation",
      input:          input,
      options:        options,
      action:         "ListInvalidations",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  List streaming distributions.
  """
  def list_streaming_distributions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution",
      input:          input,
      options:        options,
      action:         "ListStreamingDistributions",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  List tags for a CloudFront resource.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/tagging",
      input:          input,
      options:        options,
      action:         "ListTagsForResource",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :get
    }
  end
  
  @doc """
  Add tags to a CloudFront resource.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/tagging?Operation=Tag",
      input:          input,
      options:        options,
      action:         "TagResource",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Remove tags from a CloudFront resource.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/tagging?Operation=Untag",
      input:          input,
      options:        options,
      action:         "UntagResource",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :post
    }
  end
  
  @doc """
  Update an origin access identity.
  """
  def update_cloud_front_origin_access_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/origin-access-identity/cloudfront/{Id}/config",
      input:          input,
      options:        options,
      action:         "UpdateCloudFrontOriginAccessIdentity",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :put
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
      service:        "cloudfront",
      endpoint:       "/2017-03-25/distribution/{Id}/config",
      input:          input,
      options:        options,
      action:         "UpdateDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :put
    }
  end
  
  @doc """
  Update a streaming distribution.
  """
  def update_streaming_distribution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "cloudfront",
      endpoint:       "/2017-03-25/streaming-distribution/{Id}/config",
      input:          input,
      options:        options,
      action:         "UpdateStreamingDistribution",
      
      type:           :rest_xml,
      version:        "2017-03-25",
      method:         :put
    }
  end
  
end