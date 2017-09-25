defmodule Baiji.DAX do
  @moduledoc """
  DAX is a managed caching service engineered for Amazon DynamoDB. DAX
  dramatically speeds up database reads by caching frequently-accessed data
  from DynamoDB, so applications can access that data with sub-millisecond
  latency. You can create a DAX cluster easily, using the AWS Management
  Console. With a few simple modifications to your code, your application can
  begin taking advantage of the DAX cluster and realize significant
  improvements in read performance.
  """
  
  @doc """
  Creates a DAX cluster. All nodes in the cluster run the same DAX caching
  software.
  """
  def create_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateCluster",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new parameter group. A parameter group is a collection of
  parameters that you apply to all of the nodes in a DAX cluster.
  """
  def create_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateParameterGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new subnet group.
  """
  def create_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes one or more nodes from a DAX cluster.

  <note> You cannot use `DecreaseReplicationFactor` to remove the last node
  in a DAX cluster. If you need to do this, use `DeleteCluster` instead.

  </note>
  """
  def decrease_replication_factor(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DecreaseReplicationFactor",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes all
  associated nodes, node endpoints and the DAX cluster itself. When you
  receive a successful response from this action, DAX immediately begins
  deleting the cluster; you cannot cancel or revert this action.
  """
  def delete_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteCluster",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified parameter group. You cannot delete a parameter group
  if it is associated with any DAX clusters.
  """
  def delete_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteParameterGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a subnet group.

  <note> You cannot delete a subnet group if it is associated with any DAX
  clusters.

  </note>
  """
  def delete_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns information about all provisioned DAX clusters if no cluster
  identifier is specified, or about a specific DAX cluster if a cluster
  identifier is supplied.

  If the cluster is in the CREATING state, only cluster level information
  will be displayed until all of the nodes are successfully provisioned.

  If the cluster is in the DELETING state, only cluster level information
  will be displayed.

  If nodes are currently being added to the DAX cluster, node endpoint
  information and creation time for the additional nodes will not be
  displayed until they are completely provisioned. When the DAX cluster state
  is *available*, the cluster is ready for use.

  If nodes are currently being removed from the DAX cluster, no endpoint
  information for the removed nodes is displayed.
  """
  def describe_clusters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeClusters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the default system parameter information for the DAX caching
  software.
  """
  def describe_default_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeDefaultParameters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns events related to DAX clusters and parameter groups. You can obtain
  events specific to a particular DAX cluster or parameter group by providing
  the name as a parameter.

  By default, only the events occurring within the last hour are returned;
  however, you can retrieve up to 14 days' worth of events if necessary.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEvents",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of parameter group descriptions. If a parameter group name
  is specified, the list will contain only the descriptions for that group.
  """
  def describe_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeParameterGroups",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns the detailed parameter list for a particular parameter group.
  """
  def describe_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeParameters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list of subnet group descriptions. If a subnet group name is
  specified, the list will contain only the description of that group.
  """
  def describe_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSubnetGroups",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Adds one or more nodes to a DAX cluster.
  """
  def increase_replication_factor(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "IncreaseReplicationFactor",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  List all of the tags for a DAX cluster. You can call `ListTags` up to 10
  times per second, per account.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTags",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Reboots a single node of a DAX cluster. The reboot action takes place as
  soon as possible. During the reboot, the node status is set to REBOOTING.
  """
  def reboot_node(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RebootNode",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associates a set of tags with a DAX resource. You can call `TagResource` up
  to 5 times per second, per account.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TagResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes the association of tags from a DAX resource. You can call
  `UntagResource` up to 5 times per second, per account.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UntagResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the settings for a DAX cluster. You can use this action to change
  one or more cluster configuration parameters by specifying the parameters
  and the new values.
  """
  def update_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateCluster",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies the parameters of a parameter group. You can modify up to 20
  parameters in a single request by submitting a list parameter name and
  value pairs.
  """
  def update_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateParameterGroup",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Modifies an existing subnet group.
  """
  def update_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateSubnetGroup",
      type:     :json,
      method:   :post
    }
  end
  
end