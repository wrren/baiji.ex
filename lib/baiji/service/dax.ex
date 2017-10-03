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
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateCluster",
      method:           :post,
      input_shape:      "CreateClusterRequest",
      output_shape:     "CreateClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new parameter group. A parameter group is a collection of
  parameters that you apply to all of the nodes in a DAX cluster.
  """
  def create_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateParameterGroup",
      method:           :post,
      input_shape:      "CreateParameterGroupRequest",
      output_shape:     "CreateParameterGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new subnet group.
  """
  def create_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSubnetGroup",
      method:           :post,
      input_shape:      "CreateSubnetGroupRequest",
      output_shape:     "CreateSubnetGroupResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DecreaseReplicationFactor",
      method:           :post,
      input_shape:      "DecreaseReplicationFactorRequest",
      output_shape:     "DecreaseReplicationFactorResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteCluster",
      method:           :post,
      input_shape:      "DeleteClusterRequest",
      output_shape:     "DeleteClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified parameter group. You cannot delete a parameter group
  if it is associated with any DAX clusters.
  """
  def delete_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteParameterGroup",
      method:           :post,
      input_shape:      "DeleteParameterGroupRequest",
      output_shape:     "DeleteParameterGroupResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSubnetGroup",
      method:           :post,
      input_shape:      "DeleteSubnetGroupRequest",
      output_shape:     "DeleteSubnetGroupResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeClusters",
      method:           :post,
      input_shape:      "DescribeClustersRequest",
      output_shape:     "DescribeClustersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the default system parameter information for the DAX caching
  software.
  """
  def describe_default_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDefaultParameters",
      method:           :post,
      input_shape:      "DescribeDefaultParametersRequest",
      output_shape:     "DescribeDefaultParametersResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      method:           :post,
      input_shape:      "DescribeEventsRequest",
      output_shape:     "DescribeEventsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of parameter group descriptions. If a parameter group name
  is specified, the list will contain only the descriptions for that group.
  """
  def describe_parameter_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeParameterGroups",
      method:           :post,
      input_shape:      "DescribeParameterGroupsRequest",
      output_shape:     "DescribeParameterGroupsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the detailed parameter list for a particular parameter group.
  """
  def describe_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeParameters",
      method:           :post,
      input_shape:      "DescribeParametersRequest",
      output_shape:     "DescribeParametersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of subnet group descriptions. If a subnet group name is
  specified, the list will contain only the description of that group.
  """
  def describe_subnet_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeSubnetGroups",
      method:           :post,
      input_shape:      "DescribeSubnetGroupsRequest",
      output_shape:     "DescribeSubnetGroupsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds one or more nodes to a DAX cluster.
  """
  def increase_replication_factor(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "IncreaseReplicationFactor",
      method:           :post,
      input_shape:      "IncreaseReplicationFactorRequest",
      output_shape:     "IncreaseReplicationFactorResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all of the tags for a DAX cluster. You can call `ListTags` up to 10
  times per second, per account.
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTags",
      method:           :post,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Reboots a single node of a DAX cluster. The reboot action takes place as
  soon as possible. During the reboot, the node status is set to REBOOTING.
  """
  def reboot_node(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RebootNode",
      method:           :post,
      input_shape:      "RebootNodeRequest",
      output_shape:     "RebootNodeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates a set of tags with a DAX resource. You can call `TagResource` up
  to 5 times per second, per account.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :post,
      input_shape:      "TagResourceRequest",
      output_shape:     "TagResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the association of tags from a DAX resource. You can call
  `UntagResource` up to 5 times per second, per account.
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :post,
      input_shape:      "UntagResourceRequest",
      output_shape:     "UntagResourceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the settings for a DAX cluster. You can use this action to change
  one or more cluster configuration parameters by specifying the parameters
  and the new values.
  """
  def update_cluster(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateCluster",
      method:           :post,
      input_shape:      "UpdateClusterRequest",
      output_shape:     "UpdateClusterResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the parameters of a parameter group. You can modify up to 20
  parameters in a single request by submitting a list parameter name and
  value pairs.
  """
  def update_parameter_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateParameterGroup",
      method:           :post,
      input_shape:      "UpdateParameterGroupRequest",
      output_shape:     "UpdateParameterGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies an existing subnet group.
  """
  def update_subnet_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateSubnetGroup",
      method:           :post,
      input_shape:      "UpdateSubnetGroupRequest",
      output_shape:     "UpdateSubnetGroupResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "dax",
      target_prefix:    "AmazonDAXV3",
      endpoint_prefix:  "dax",
      type:             :json,
      version:          "2017-04-19",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"KeyList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "SourceType" => %{"enum" => ["CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"], "type" => "string"}, "SubnetList" => %{"member" => %{"shape" => "Subnet"}, "type" => "list"}, "SubnetGroupAlreadyExistsFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Subnet" => %{"members" => %{"SubnetAvailabilityZone" => %{"shape" => "String"}, "SubnetIdentifier" => %{"shape" => "String"}}, "type" => "structure"}, "CreateSubnetGroupRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "SubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["SubnetGroupName", "SubnetIds"], "type" => "structure"}, "CreateParameterGroupRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "Parameter" => %{"members" => %{"AllowedValues" => %{"shape" => "String"}, "ChangeType" => %{"shape" => "ChangeType"}, "DataType" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IsModifiable" => %{"shape" => "IsModifiable"}, "NodeTypeSpecificValues" => %{"shape" => "NodeTypeSpecificValueList"}, "ParameterName" => %{"shape" => "String"}, "ParameterType" => %{"shape" => "ParameterType"}, "ParameterValue" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "type" => "structure"}, "ParameterType" => %{"enum" => ["DEFAULT", "NODE_TYPE_SPECIFIC"], "type" => "string"}, "RebootNodeRequest" => %{"members" => %{"ClusterName" => %{"shape" => "String"}, "NodeId" => %{"shape" => "String"}}, "required" => ["ClusterName", "NodeId"], "type" => "structure"}, "UpdateSubnetGroupResponse" => %{"members" => %{"SubnetGroup" => %{"shape" => "SubnetGroup"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "ClusterQuotaForCustomerExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "EventList" => %{"member" => %{"shape" => "Event"}, "type" => "list"}, "DeleteClusterResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ListTagsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "SecurityGroupMembership" => %{"members" => %{"SecurityGroupIdentifier" => %{"shape" => "String"}, "Status" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeClustersRequest" => %{"members" => %{"ClusterNames" => %{"shape" => "ClusterNameList"}, "MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeParameterGroupsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "ParameterGroups" => %{"shape" => "ParameterGroupList"}}, "type" => "structure"}, "DeleteClusterRequest" => %{"members" => %{"ClusterName" => %{"shape" => "String"}}, "required" => ["ClusterName"], "type" => "structure"}, "UpdateParameterGroupResponse" => %{"members" => %{"ParameterGroup" => %{"shape" => "ParameterGroup"}}, "type" => "structure"}, "SecurityGroupIdentifierList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "InvalidParameterValueException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "DescribeDefaultParametersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteParameterGroupRequest" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "ParameterGroupAlreadyExistsFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeEventsResponse" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "InsufficientClusterCapacityFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "AvailabilityZoneList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ListTagsRequest" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "ResourceName" => %{"shape" => "String"}}, "required" => ["ResourceName"], "type" => "structure"}, "NodeIdentifierList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DescribeEventsRequest" => %{"members" => %{"Duration" => %{"shape" => "IntegerOptional"}, "EndTime" => %{"shape" => "TStamp"}, "MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}, "SourceName" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}, "StartTime" => %{"shape" => "TStamp"}}, "type" => "structure"}, "UpdateParameterGroupRequest" => %{"members" => %{"ParameterGroupName" => %{"shape" => "String"}, "ParameterNameValues" => %{"shape" => "ParameterNameValueList"}}, "required" => ["ParameterGroupName", "ParameterNameValues"], "type" => "structure"}, "DeleteParameterGroupResponse" => %{"members" => %{"DeletionMessage" => %{"shape" => "String"}}, "type" => "structure"}, "CreateClusterRequest" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZoneList"}, "ClusterName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IamRoleArn" => %{"shape" => "String"}, "NodeType" => %{"shape" => "String"}, "NotificationTopicArn" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "ReplicationFactor" => %{"shape" => "Integer"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdentifierList"}, "SubnetGroupName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ClusterName", "NodeType", "ReplicationFactor", "IamRoleArn"], "type" => "structure"}, "UpdateClusterResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "ClusterAlreadyExistsFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "RebootNodeResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "SubnetGroupQuotaExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeParametersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}, "Source" => %{"shape" => "String"}}, "required" => ["ParameterGroupName"], "type" => "structure"}, "NodeQuotaForClusterExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UntagResourceRequest" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "TagKeys" => %{"shape" => "KeyList"}}, "required" => ["ResourceName", "TagKeys"], "type" => "structure"}, "NodeList" => %{"member" => %{"shape" => "Node"}, "type" => "list"}, "DescribeDefaultParametersResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParameterList"}}, "type" => "structure"}, "NodeTypeSpecificValueList" => %{"member" => %{"shape" => "NodeTypeSpecificValue"}, "type" => "list"}, "NodeTypeSpecificValue" => %{"members" => %{"NodeType" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "ParameterGroupNameList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "ParameterGroupQuotaExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Endpoint" => %{"members" => %{"Address" => %{"shape" => "String"}, "Port" => %{"shape" => "Integer"}}, "type" => "structure"}, "NodeNotFoundFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "SubnetIdentifierList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "IncreaseReplicationFactorResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "SecurityGroupMembershipList" => %{"member" => %{"shape" => "SecurityGroupMembership"}, "type" => "list"}, "ParameterNameValue" => %{"members" => %{"ParameterName" => %{"shape" => "String"}, "ParameterValue" => %{"shape" => "String"}}, "type" => "structure"}, "ParameterGroupList" => %{"member" => %{"shape" => "ParameterGroup"}, "type" => "list"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "SubnetGroupNameList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "CreateClusterResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "TStamp" => %{"type" => "timestamp"}, "DescribeParametersResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Parameters" => %{"shape" => "ParameterList"}}, "type" => "structure"}, "DeleteSubnetGroupResponse" => %{"members" => %{"DeletionMessage" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeSubnetGroupsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "SubnetGroups" => %{"shape" => "SubnetGroupList"}}, "type" => "structure"}, "ParameterNameValueList" => %{"member" => %{"shape" => "ParameterNameValue"}, "type" => "list"}, "SubnetInUse" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "InvalidSubnet" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "SubnetGroupNotFoundFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TagQuotaPerResourceExceeded" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UntagResourceResponse" => %{"members" => %{"Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "DecreaseReplicationFactorResponse" => %{"members" => %{"Cluster" => %{"shape" => "Cluster"}}, "type" => "structure"}, "SubnetGroup" => %{"members" => %{"Description" => %{"shape" => "String"}, "SubnetGroupName" => %{"shape" => "String"}, "Subnets" => %{"shape" => "SubnetList"}, "VpcId" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidClusterStateFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeSubnetGroupsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}, "SubnetGroupNames" => %{"shape" => "SubnetGroupNameList"}}, "type" => "structure"}, "TagResourceRequest" => %{"members" => %{"ResourceName" => %{"shape" => "String"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["ResourceName", "Tags"], "type" => "structure"}, "InvalidVPCNetworkStateFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "UpdateSubnetGroupRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "SubnetGroupName" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "SubnetIdentifierList"}}, "required" => ["SubnetGroupName"], "type" => "structure"}, "InvalidParameterGroupStateFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DeleteSubnetGroupRequest" => %{"members" => %{"SubnetGroupName" => %{"shape" => "String"}}, "required" => ["SubnetGroupName"], "type" => "structure"}, "CreateSubnetGroupResponse" => %{"members" => %{"SubnetGroup" => %{"shape" => "SubnetGroup"}}, "type" => "structure"}, "AwsQueryErrorMessage" => %{"type" => "string"}, "ClusterNotFoundFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Cluster" => %{"members" => %{"ActiveNodes" => %{"shape" => "IntegerOptional"}, "ClusterArn" => %{"shape" => "String"}, "ClusterDiscoveryEndpoint" => %{"shape" => "Endpoint"}, "ClusterName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "IamRoleArn" => %{"shape" => "String"}, "NodeIdsToRemove" => %{"shape" => "NodeIdentifierList"}, "NodeType" => %{"shape" => "String"}, "Nodes" => %{"shape" => "NodeList"}, "NotificationConfiguration" => %{"shape" => "NotificationConfiguration"}, "ParameterGroup" => %{"shape" => "ParameterGroupStatus"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "SecurityGroups" => %{"shape" => "SecurityGroupMembershipList"}, "Status" => %{"shape" => "String"}, "SubnetGroup" => %{"shape" => "String"}, "TotalNodes" => %{"shape" => "IntegerOptional"}}, "type" => "structure"}, "ParameterGroup" => %{"members" => %{"Description" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "SubnetQuotaExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CreateParameterGroupResponse" => %{"members" => %{"ParameterGroup" => %{"shape" => "ParameterGroup"}}, "type" => "structure"}, "InvalidParameterCombinationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "AwsQueryErrorMessage"}}, "type" => "structure"}, "SubnetGroupList" => %{"member" => %{"shape" => "SubnetGroup"}, "type" => "list"}, "Node" => %{"members" => %{"AvailabilityZone" => %{"shape" => "String"}, "Endpoint" => %{"shape" => "Endpoint"}, "NodeCreateTime" => %{"shape" => "TStamp"}, "NodeId" => %{"shape" => "String"}, "NodeStatus" => %{"shape" => "String"}, "ParameterGroupStatus" => %{"shape" => "String"}}, "type" => "structure"}, "TagResourceResponse" => %{"members" => %{"Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "NodeQuotaForCustomerExceededFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ClusterList" => %{"member" => %{"shape" => "Cluster"}, "type" => "list"}, "ParameterGroupStatus" => %{"members" => %{"NodeIdsToReboot" => %{"shape" => "NodeIdentifierList"}, "ParameterApplyStatus" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}}, "type" => "structure"}, "Event" => %{"members" => %{"Date" => %{"shape" => "TStamp"}, "Message" => %{"shape" => "String"}, "SourceName" => %{"shape" => "String"}, "SourceType" => %{"shape" => "SourceType"}}, "type" => "structure"}, "ParameterList" => %{"member" => %{"shape" => "Parameter"}, "type" => "list"}, "SubnetGroupInUseFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DecreaseReplicationFactorRequest" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZoneList"}, "ClusterName" => %{"shape" => "String"}, "NewReplicationFactor" => %{"shape" => "Integer"}, "NodeIdsToRemove" => %{"shape" => "NodeIdentifierList"}}, "required" => ["ClusterName", "NewReplicationFactor"], "type" => "structure"}, "IntegerOptional" => %{"type" => "integer"}, "ChangeType" => %{"enum" => ["IMMEDIATE", "REQUIRES_REBOOT"], "type" => "string"}, "ClusterNameList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "InvalidARNFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "NotificationConfiguration" => %{"members" => %{"TopicArn" => %{"shape" => "String"}, "TopicStatus" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeParameterGroupsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "IntegerOptional"}, "NextToken" => %{"shape" => "String"}, "ParameterGroupNames" => %{"shape" => "ParameterGroupNameList"}}, "type" => "structure"}, "IncreaseReplicationFactorRequest" => %{"members" => %{"AvailabilityZones" => %{"shape" => "AvailabilityZoneList"}, "ClusterName" => %{"shape" => "String"}, "NewReplicationFactor" => %{"shape" => "Integer"}}, "required" => ["ClusterName", "NewReplicationFactor"], "type" => "structure"}, "IsModifiable" => %{"enum" => ["TRUE", "FALSE", "CONDITIONAL"], "type" => "string"}, "ParameterGroupNotFoundFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DescribeClustersResponse" => %{"members" => %{"Clusters" => %{"shape" => "ClusterList"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateClusterRequest" => %{"members" => %{"ClusterName" => %{"shape" => "String"}, "Description" => %{"shape" => "String"}, "NotificationTopicArn" => %{"shape" => "String"}, "NotificationTopicStatus" => %{"shape" => "String"}, "ParameterGroupName" => %{"shape" => "String"}, "PreferredMaintenanceWindow" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "SecurityGroupIdentifierList"}}, "required" => ["ClusterName"], "type" => "structure"}, "TagNotFoundFault" => %{"exception" => true, "members" => %{}, "type" => "structure"}}
  end
end