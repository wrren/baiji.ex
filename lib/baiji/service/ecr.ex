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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchCheckLayerAvailability",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchDeleteImage",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Gets detailed information for specified images within a specified
  repository. Images are specified with either `imageTag` or `imageDigest`.
  """
  def batch_get_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "BatchGetImage",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CompleteLayerUpload",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Creates an image repository.
  """
  def create_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateRepository",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Deletes an existing image repository. If a repository contains images, you
  must use the `force` option to delete it.
  """
  def delete_repository(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRepository",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Deletes the repository policy from a specified repository.
  """
  def delete_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRepositoryPolicy",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeImages",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Describes image repositories in a registry.
  """
  def describe_repositories(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeRepositories",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAuthorizationToken",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetDownloadUrlForLayer",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the repository policy for a specified repository.
  """
  def get_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetRepositoryPolicy",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "InitiateLayerUpload",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListImages",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutImage",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
  @doc """
  Applies a repository policy on a specified repository to control access
  permissions.
  """
  def set_repository_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetRepositoryPolicy",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
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
      service:        "ecr",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UploadLayerPart",
      
      target_prefix:  "AmazonEC2ContainerRegistry_V20150921",
      
      type:           :json,
      version:        "2015-09-21",
      method:         :post
    }
  end
  
end