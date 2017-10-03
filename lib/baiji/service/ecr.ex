defmodule Baiji.ECR do
  @moduledoc """
  Amazon EC2 Container Registry (Amazon ECR) is a managed AWS Docker registry
  service. Customers can use the familiar Docker CLI to push, pull, and
  manage images. Amazon ECR provides a secure, scalable, and reliable
  registry. Amazon ECR supports private Docker repositories with
  resource-based permissions using AWS IAM so that specific users or Amazon
  EC2 instances can access repositories and images. Developers can use the
  Docker CLI to author and manage images.
  """

  @doc """
  Check the availability of multiple image layers in a specified registry and
  repository.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def batch_check_layer_availability(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchCheckLayerAvailability",
      method:           :post,
      input_shape:      "BatchCheckLayerAvailabilityRequest",
      output_shape:     "BatchCheckLayerAvailabilityResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a list of specified images within a specified repository. Images
  are specified with either `imageTag` or `imageDigest`.

  You can remove a tag from an image by specifying the image's tag in your
  request. When you remove the last tag from an image, the image is deleted
  from your repository.

  You can completely delete an image (and all of its tags) by specifying the
  image's digest in your request.
  """
  def batch_delete_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchDeleteImage",
      method:           :post,
      input_shape:      "BatchDeleteImageRequest",
      output_shape:     "BatchDeleteImageResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets detailed information for specified images within a specified
  repository. Images are specified with either `imageTag` or `imageDigest`.
  """
  def batch_get_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchGetImage",
      method:           :post,
      input_shape:      "BatchGetImageRequest",
      output_shape:     "BatchGetImageResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Inform Amazon ECR that the image layer upload for a specified registry,
  repository name, and upload ID, has completed. You can optionally provide a
  `sha256` digest of the image layer for data validation purposes.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def complete_layer_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CompleteLayerUpload",
      method:           :post,
      input_shape:      "CompleteLayerUploadRequest",
      output_shape:     "CompleteLayerUploadResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an image repository.
  """
  def create_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateRepository",
      method:           :post,
      input_shape:      "CreateRepositoryRequest",
      output_shape:     "CreateRepositoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing image repository. If a repository contains images, you
  must use the `force` option to delete it.
  """
  def delete_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRepository",
      method:           :post,
      input_shape:      "DeleteRepositoryRequest",
      output_shape:     "DeleteRepositoryResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the repository policy from a specified repository.
  """
  def delete_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRepositoryPolicy",
      method:           :post,
      input_shape:      "DeleteRepositoryPolicyRequest",
      output_shape:     "DeleteRepositoryPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns metadata about the images in a repository, including image size,
  image tags, and creation date.

  <note> Beginning with Docker version 1.9, the Docker client compresses
  image layers before pushing them to a V2 Docker registry. The output of the
  `docker images` command shows the uncompressed image size, so it may return
  a larger image size than the image sizes returned by `DescribeImages`.

  </note>
  """
  def describe_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeImages",
      method:           :post,
      input_shape:      "DescribeImagesRequest",
      output_shape:     "DescribeImagesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes image repositories in a registry.
  """
  def describe_repositories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeRepositories",
      method:           :post,
      input_shape:      "DescribeRepositoriesRequest",
      output_shape:     "DescribeRepositoriesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a token that is valid for a specified registry for 12 hours. This
  command allows you to use the `docker` CLI to push and pull images with
  Amazon ECR. If you do not specify a registry, the default registry is
  assumed.

  The `authorizationToken` returned for each registry specified is a base64
  encoded string that can be decoded and used in a `docker login` command to
  authenticate to a registry. The AWS CLI offers an `aws ecr get-login`
  command that simplifies the login process.
  """
  def get_authorization_token(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAuthorizationToken",
      method:           :post,
      input_shape:      "GetAuthorizationTokenRequest",
      output_shape:     "GetAuthorizationTokenResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the pre-signed Amazon S3 download URL corresponding to an image
  layer. You can only get URLs for image layers that are referenced in an
  image.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def get_download_url_for_layer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDownloadUrlForLayer",
      method:           :post,
      input_shape:      "GetDownloadUrlForLayerRequest",
      output_shape:     "GetDownloadUrlForLayerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the repository policy for a specified repository.
  """
  def get_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRepositoryPolicy",
      method:           :post,
      input_shape:      "GetRepositoryPolicyRequest",
      output_shape:     "GetRepositoryPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Notify Amazon ECR that you intend to upload an image layer.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def initiate_layer_upload(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "InitiateLayerUpload",
      method:           :post,
      input_shape:      "InitiateLayerUploadRequest",
      output_shape:     "InitiateLayerUploadResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all the image IDs for a given repository.

  You can filter images based on whether or not they are tagged by setting
  the `tagStatus` parameter to `TAGGED` or `UNTAGGED`. For example, you can
  filter your results to return only `UNTAGGED` images and then pipe that
  result to a `BatchDeleteImage` operation to delete them. Or, you can filter
  your results to return only `TAGGED` images to list all of the tags in your
  repository.
  """
  def list_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListImages",
      method:           :post,
      input_shape:      "ListImagesRequest",
      output_shape:     "ListImagesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or updates the image manifest and tags associated with an image.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def put_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutImage",
      method:           :post,
      input_shape:      "PutImageRequest",
      output_shape:     "PutImageResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Applies a repository policy on a specified repository to control access
  permissions.
  """
  def set_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetRepositoryPolicy",
      method:           :post,
      input_shape:      "SetRepositoryPolicyRequest",
      output_shape:     "SetRepositoryPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads an image layer part to Amazon ECR.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def upload_layer_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UploadLayerPart",
      method:           :post,
      input_shape:      "UploadLayerPartRequest",
      output_shape:     "UploadLayerPartResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "ecr",
      target_prefix:    "AmazonEC2ContainerRegistry_V20150921",
      endpoint_prefix:  "ecr",
      type:             :json,
      version:          "2015-09-21",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"UploadLayerPartResponse" => %{"members" => %{"lastByteReceived" => %{"shape" => "PartSize"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}, "uploadId" => %{"shape" => "UploadId"}}, "type" => "structure"}, "CompleteLayerUploadRequest" => %{"members" => %{"layerDigests" => %{"shape" => "LayerDigestList"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}, "uploadId" => %{"shape" => "UploadId"}}, "required" => ["repositoryName", "uploadId", "layerDigests"], "type" => "structure"}, "RegistryId" => %{"pattern" => "[0-9]{12}", "type" => "string"}, "Url" => %{"type" => "string"}, "PutImageRequest" => %{"members" => %{"imageManifest" => %{"shape" => "ImageManifest"}, "imageTag" => %{"shape" => "ImageTag"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "imageManifest"], "type" => "structure"}, "UploadLayerPartRequest" => %{"members" => %{"layerPartBlob" => %{"shape" => "LayerPartBlob"}, "partFirstByte" => %{"shape" => "PartSize"}, "partLastByte" => %{"shape" => "PartSize"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}, "uploadId" => %{"shape" => "UploadId"}}, "required" => ["repositoryName", "uploadId", "partFirstByte", "partLastByte", "layerPartBlob"], "type" => "structure"}, "DescribeImagesRequest" => %{"members" => %{"filter" => %{"shape" => "DescribeImagesFilter"}, "imageIds" => %{"shape" => "ImageIdentifierList"}, "maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "DescribeRepositoriesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "repositories" => %{"shape" => "RepositoryList"}}, "type" => "structure"}, "ListImagesRequest" => %{"members" => %{"filter" => %{"shape" => "ListImagesFilter"}, "maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchDeleteImageResponse" => %{"members" => %{"failures" => %{"shape" => "ImageFailureList"}, "imageIds" => %{"shape" => "ImageIdentifierList"}}, "type" => "structure"}, "DeleteRepositoryResponse" => %{"members" => %{"repository" => %{"shape" => "Repository"}}, "type" => "structure"}, "BatchedOperationLayerDigestList" => %{"max" => 100, "member" => %{"shape" => "BatchedOperationLayerDigest"}, "min" => 1, "type" => "list"}, "ImageIdentifierList" => %{"max" => 100, "member" => %{"shape" => "ImageIdentifier"}, "min" => 1, "type" => "list"}, "ProxyEndpoint" => %{"type" => "string"}, "Layer" => %{"members" => %{"layerAvailability" => %{"shape" => "LayerAvailability"}, "layerDigest" => %{"shape" => "LayerDigest"}, "layerSize" => %{"shape" => "LayerSizeInBytes"}, "mediaType" => %{"shape" => "MediaType"}}, "type" => "structure"}, "ImageDetail" => %{"members" => %{"imageDigest" => %{"shape" => "ImageDigest"}, "imagePushedAt" => %{"shape" => "PushTimestamp"}, "imageSizeInBytes" => %{"shape" => "ImageSizeInBytes"}, "imageTags" => %{"shape" => "ImageTagList"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "InitiateLayerUploadResponse" => %{"members" => %{"partSize" => %{"shape" => "PartSize"}, "uploadId" => %{"shape" => "UploadId"}}, "type" => "structure"}, "ImageAlreadyExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "CreationTimestamp" => %{"type" => "timestamp"}, "LayerFailure" => %{"members" => %{"failureCode" => %{"shape" => "LayerFailureCode"}, "failureReason" => %{"shape" => "LayerFailureReason"}, "layerDigest" => %{"shape" => "BatchedOperationLayerDigest"}}, "type" => "structure"}, "LayerPartBlob" => %{"type" => "blob"}, "DescribeImagesResponse" => %{"members" => %{"imageDetails" => %{"shape" => "ImageDetailList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "RepositoryNotEmptyException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ImageDigest" => %{"type" => "string"}, "GetDownloadUrlForLayerResponse" => %{"members" => %{"downloadUrl" => %{"shape" => "Url"}, "layerDigest" => %{"shape" => "LayerDigest"}}, "type" => "structure"}, "RepositoryAlreadyExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "SetRepositoryPolicyResponse" => %{"members" => %{"policyText" => %{"shape" => "RepositoryPolicyText"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "GetAuthorizationTokenResponse" => %{"members" => %{"authorizationData" => %{"shape" => "AuthorizationDataList"}}, "type" => "structure"}, "MediaType" => %{"pattern" => "\\w{1,127}\\/[-+.\\w]{1,127}", "type" => "string"}, "EmptyUploadException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ImageList" => %{"member" => %{"shape" => "Image"}, "type" => "list"}, "ImageDetailList" => %{"member" => %{"shape" => "ImageDetail"}, "type" => "list"}, "ImageIdentifier" => %{"members" => %{"imageDigest" => %{"shape" => "ImageDigest"}, "imageTag" => %{"shape" => "ImageTag"}}, "type" => "structure"}, "GetRepositoryPolicyResponse" => %{"members" => %{"policyText" => %{"shape" => "RepositoryPolicyText"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "SetRepositoryPolicyRequest" => %{"members" => %{"force" => %{"shape" => "ForceFlag"}, "policyText" => %{"shape" => "RepositoryPolicyText"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "policyText"], "type" => "structure"}, "InitiateLayerUploadRequest" => %{"members" => %{"registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "MaxResults" => %{"max" => 100, "min" => 1, "type" => "integer"}, "UploadNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "PutImageResponse" => %{"members" => %{"image" => %{"shape" => "Image"}}, "type" => "structure"}, "ImageFailureList" => %{"member" => %{"shape" => "ImageFailure"}, "type" => "list"}, "LayersNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ImageNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "Arn" => %{"type" => "string"}, "BatchDeleteImageRequest" => %{"members" => %{"imageIds" => %{"shape" => "ImageIdentifierList"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "imageIds"], "type" => "structure"}, "ExpirationTimestamp" => %{"type" => "timestamp"}, "ListImagesFilter" => %{"members" => %{"tagStatus" => %{"shape" => "TagStatus"}}, "type" => "structure"}, "DeleteRepositoryRequest" => %{"members" => %{"force" => %{"shape" => "ForceFlag"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "RepositoryNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "AuthorizationData" => %{"members" => %{"authorizationToken" => %{"shape" => "Base64"}, "expiresAt" => %{"shape" => "ExpirationTimestamp"}, "proxyEndpoint" => %{"shape" => "ProxyEndpoint"}}, "type" => "structure"}, "Image" => %{"members" => %{"imageId" => %{"shape" => "ImageIdentifier"}, "imageManifest" => %{"shape" => "ImageManifest"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "RepositoryName" => %{"max" => 256, "min" => 2, "pattern" => "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", "type" => "string"}, "ImageFailureReason" => %{"type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "Repository" => %{"members" => %{"createdAt" => %{"shape" => "CreationTimestamp"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryArn" => %{"shape" => "Arn"}, "repositoryName" => %{"shape" => "RepositoryName"}, "repositoryUri" => %{"shape" => "Url"}}, "type" => "structure"}, "DescribeRepositoriesRequest" => %{"members" => %{"maxResults" => %{"shape" => "MaxResults"}, "nextToken" => %{"shape" => "NextToken"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryNames" => %{"shape" => "RepositoryNameList"}}, "type" => "structure"}, "InvalidLayerException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "BatchedOperationLayerDigest" => %{"max" => 1000, "min" => 0, "type" => "string"}, "LayerDigest" => %{"pattern" => "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", "type" => "string"}, "RepositoryPolicyNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "RepositoryPolicyText" => %{"max" => 10240, "min" => 0, "type" => "string"}, "LayerFailureCode" => %{"enum" => ["InvalidLayerDigest", "MissingLayerDigest"], "type" => "string"}, "ImageManifest" => %{"type" => "string"}, "PushTimestamp" => %{"type" => "timestamp"}, "PartSize" => %{"min" => 0, "type" => "long"}, "DeleteRepositoryPolicyResponse" => %{"members" => %{"policyText" => %{"shape" => "RepositoryPolicyText"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "type" => "structure"}, "GetDownloadUrlForLayerRequest" => %{"members" => %{"layerDigest" => %{"shape" => "LayerDigest"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "layerDigest"], "type" => "structure"}, "LayerFailureReason" => %{"type" => "string"}, "MediaTypeList" => %{"max" => 100, "member" => %{"shape" => "MediaType"}, "min" => 1, "type" => "list"}, "LayerDigestList" => %{"max" => 100, "member" => %{"shape" => "LayerDigest"}, "min" => 1, "type" => "list"}, "ExceptionMessage" => %{"type" => "string"}, "DescribeImagesFilter" => %{"members" => %{"tagStatus" => %{"shape" => "TagStatus"}}, "type" => "structure"}, "ListImagesResponse" => %{"members" => %{"imageIds" => %{"shape" => "ImageIdentifierList"}, "nextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "GetAuthorizationTokenRegistryIdList" => %{"max" => 10, "member" => %{"shape" => "RegistryId"}, "min" => 1, "type" => "list"}, "ImageTag" => %{"type" => "string"}, "TagStatus" => %{"enum" => ["TAGGED", "UNTAGGED"], "type" => "string"}, "DeleteRepositoryPolicyRequest" => %{"members" => %{"registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "CreateRepositoryResponse" => %{"members" => %{"repository" => %{"shape" => "Repository"}}, "type" => "structure"}, "LayerAlreadyExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "LayerList" => %{"member" => %{"shape" => "Layer"}, "type" => "list"}, "LayerSizeInBytes" => %{"type" => "long"}, "BatchCheckLayerAvailabilityRequest" => %{"members" => %{"layerDigests" => %{"shape" => "BatchedOperationLayerDigestList"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "layerDigests"], "type" => "structure"}, "LayerPartTooSmallException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "LayerAvailability" => %{"enum" => ["AVAILABLE", "UNAVAILABLE"], "type" => "string"}, "Base64" => %{"pattern" => "^\\S+$", "type" => "string"}, "LayerFailureList" => %{"member" => %{"shape" => "LayerFailure"}, "type" => "list"}, "CreateRepositoryRequest" => %{"members" => %{"repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}, "ImageFailureCode" => %{"enum" => ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag"], "type" => "string"}, "RepositoryList" => %{"member" => %{"shape" => "Repository"}, "type" => "list"}, "AuthorizationDataList" => %{"member" => %{"shape" => "AuthorizationData"}, "type" => "list"}, "LayerInaccessibleException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "RepositoryNameList" => %{"max" => 100, "member" => %{"shape" => "RepositoryName"}, "min" => 1, "type" => "list"}, "CompleteLayerUploadResponse" => %{"members" => %{"layerDigest" => %{"shape" => "LayerDigest"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}, "uploadId" => %{"shape" => "UploadId"}}, "type" => "structure"}, "BatchGetImageResponse" => %{"members" => %{"failures" => %{"shape" => "ImageFailureList"}, "images" => %{"shape" => "ImageList"}}, "type" => "structure"}, "BatchCheckLayerAvailabilityResponse" => %{"members" => %{"failures" => %{"shape" => "LayerFailureList"}, "layers" => %{"shape" => "LayerList"}}, "type" => "structure"}, "ImageFailure" => %{"members" => %{"failureCode" => %{"shape" => "ImageFailureCode"}, "failureReason" => %{"shape" => "ImageFailureReason"}, "imageId" => %{"shape" => "ImageIdentifier"}}, "type" => "structure"}, "ForceFlag" => %{"type" => "boolean"}, "GetAuthorizationTokenRequest" => %{"members" => %{"registryIds" => %{"shape" => "GetAuthorizationTokenRegistryIdList"}}, "type" => "structure"}, "BatchGetImageRequest" => %{"members" => %{"acceptedMediaTypes" => %{"shape" => "MediaTypeList"}, "imageIds" => %{"shape" => "ImageIdentifierList"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName", "imageIds"], "type" => "structure"}, "UploadId" => %{"pattern" => "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", "type" => "string"}, "InvalidLayerPartException" => %{"exception" => true, "members" => %{"lastValidByteReceived" => %{"shape" => "PartSize"}, "message" => %{"shape" => "ExceptionMessage"}, "registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}, "uploadId" => %{"shape" => "UploadId"}}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "ServerException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "ExceptionMessage"}}, "type" => "structure"}, "ImageSizeInBytes" => %{"type" => "long"}, "ImageTagList" => %{"member" => %{"shape" => "ImageTag"}, "type" => "list"}, "GetRepositoryPolicyRequest" => %{"members" => %{"registryId" => %{"shape" => "RegistryId"}, "repositoryName" => %{"shape" => "RepositoryName"}}, "required" => ["repositoryName"], "type" => "structure"}}
  end
end