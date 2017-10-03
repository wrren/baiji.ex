defmodule Baiji.CloudHSMV2 do
  @moduledoc """
  For more information about AWS CloudHSM, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/).
  """
  
  @doc """
  Creates a new AWS CloudHSM cluster.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Creates a new hardware security module (HSM) in the specified AWS CloudHSM
  cluster.
  """
  def create_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateHsm",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified AWS CloudHSM cluster. Before you can delete a
  cluster, you must delete all HSMs in the cluster. To see if the cluster
  contains any HSMs, use `DescribeClusters`. To delete an HSM, use
  `DeleteHsm`.
  """
  def delete_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCluster",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified HSM. To specify an HSM, you can use its identifier
  (ID), the IP address of the HSM's elastic network interface (ENI), or the
  ID of the HSM's ENI. You need to specify only one of these values. To find
  these values, use `DescribeClusters`.
  """
  def delete_hsm(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteHsm",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Gets information about backups of AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the backups. When the response contains only a subset
  of backups, it includes a `NextToken` value. Use this value in a subsequent
  `DescribeBackups` request to get more backups. When you receive a response
  with no `NextToken` (or an empty or null value), that means there are no
  more backups to get.
  """
  def describe_backups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBackups",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Gets information about AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the clusters. When the response contains only a subset
  of clusters, it includes a `NextToken` value. Use this value in a
  subsequent `DescribeClusters` request to get more clusters. When you
  receive a response with no `NextToken` (or an empty or null value), that
  means there are no more clusters to get.
  """
  def describe_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeClusters",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued
  by your issuing certificate authority (CA) and the CA's root certificate.
  Before you can claim a cluster, you must sign the cluster's certificate
  signing request (CSR) with your issuing CA. To get the cluster's CSR, use
  `DescribeClusters`.
  """
  def initialize_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "InitializeCluster",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Gets a list of tags for the specified AWS CloudHSM cluster.

  This is a paginated operation, which means that each response might contain
  only a subset of all the tags. When the response contains only a subset of
  tags, it includes a `NextToken` value. Use this value in a subsequent
  `ListTags` request to get more tags. When you receive a response with no
  `NextToken` (or an empty or null value), that means there are no more tags
  to get.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTags",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TagResource",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
  @doc """
  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cloudhsmv2",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UntagResource",
      
      target_prefix:    "BaldrApiService",
      
      endpoint_prefix:  "cloudhsmv2",
      type:             :json,
      version:          "2017-04-28",
      method:           :post
    }
  end
  
end