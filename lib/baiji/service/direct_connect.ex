defmodule Baiji.DirectConnect do
  @moduledoc """
  AWS Direct Connect links your internal network to an AWS Direct Connect
  location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic
  cable. One end of the cable is connected to your router, the other to an
  AWS Direct Connect router. With this connection in place, you can create
  virtual interfaces directly to the AWS cloud (for example, to Amazon
  Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service
  (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC), bypassing
  Internet service providers in your network path. An AWS Direct Connect
  location provides access to AWS in the region it is associated with, as
  well as access to other US regions. For example, you can provision a single
  connection to any AWS Direct Connect location in the US and use it to
  access public AWS services in all US Regions and AWS GovCloud (US).
  """

  @doc """
  Creates a new public virtual interface. A virtual interface is the VLAN
  that transports AWS Direct Connect traffic. A public virtual interface
  supports sending traffic to public services of AWS such as Amazon Simple
  Storage Service (Amazon S3).

  When creating an IPv6 public virtual interface (addressFamily is 'ipv6'),
  the customer and amazon address fields should be left blank to use
  auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
  supported.
  """
  def create_public_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePublicVirtualInterface",
      method:           :post,
      input_shape:      "CreatePublicVirtualInterfaceRequest",
      output_shape:     "VirtualInterface",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates an existing connection with a link aggregation group (LAG). The
  connection is interrupted and re-established as a member of the LAG
  (connectivity to AWS will be interrupted). The connection must be hosted on
  the same AWS Direct Connect endpoint as the LAG, and its bandwidth must
  match the bandwidth for the LAG. You can reassociate a connection that's
  currently associated with a different LAG; however, if removing the
  connection will cause the original LAG to fall below its setting for
  minimum number of operational connections, the request fails.

  Any virtual interfaces that are directly associated with the connection are
  automatically re-associated with the LAG. If the connection was originally
  associated with a different LAG, the virtual interfaces remain associated
  with the original LAG.

  For interconnects, any hosted connections are automatically re-associated
  with the LAG. If the interconnect was originally associated with a
  different LAG, the hosted connections remain associated with the original
  LAG.
  """
  def associate_connection_with_lag(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateConnectionWithLag",
      method:           :post,
      input_shape:      "AssociateConnectionWithLagRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the LOA-CFA for a connection, interconnect, or link aggregation
  group (LAG).

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that is used when establishing your cross connect to AWS at the
  colocation facility. For more information, see [Requesting Cross Connects
  at AWS Direct Connect
  Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the AWS Direct Connect user guide.
  """
  def describe_loa(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLoa",
      method:           :post,
      input_shape:      "DescribeLoaRequest",
      output_shape:     "Loa",
      endpoint:         __spec__()
    }
  end

  @doc """
  Associates a virtual interface with a specified link aggregation group
  (LAG) or connection. Connectivity to AWS is temporarily interrupted as the
  virtual interface is being migrated. If the target connection or LAG has an
  associated virtual interface with a conflicting VLAN number or a
  conflicting IP address, the operation fails.

  Virtual interfaces associated with a hosted connection cannot be associated
  with a LAG; hosted connections must be migrated along with their virtual
  interfaces using `AssociateHostedConnection`.

  Hosted virtual interfaces (an interface for which the owner of the
  connection is not the owner of physical connection) can only be
  reassociated by the owner of the physical connection.
  """
  def associate_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateVirtualInterface",
      method:           :post,
      input_shape:      "AssociateVirtualInterfaceRequest",
      output_shape:     "VirtualInterface",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified tags to the specified Direct Connect resource. Each
  Direct Connect resource can have a maximum of 50 tags.

  Each tag consists of a key and an optional value. If a tag with the same
  key is already associated with the Direct Connect resource, this action
  updates its value.
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
  Deprecated in favor of `DescribeLoa`.

  Returns the LOA-CFA for an Interconnect.

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that is used when establishing your cross connect to AWS at the
  colocation facility. For more information, see [Requesting Cross Connects
  at AWS Direct Connect
  Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the AWS Direct Connect user guide.
  """
  def describe_interconnect_loa(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInterconnectLoa",
      method:           :post,
      input_shape:      "DescribeInterconnectLoaRequest",
      output_shape:     "DescribeInterconnectLoaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a BGP peer on the specified virtual interface that matches the
  specified customer address and ASN. You cannot delete the last BGP peer
  from a virtual interface.
  """
  def delete_b_g_p_peer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteBGPPeer",
      method:           :post,
      input_shape:      "DeleteBGPPeerRequest",
      output_shape:     "DeleteBGPPeerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated in favor of `AllocateHostedConnection`.

  Creates a hosted connection on an interconnect.

  Allocates a VLAN number and a specified amount of bandwidth for use by a
  hosted connection on the given interconnect.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def allocate_connection_on_interconnect(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AllocateConnectionOnInterconnect",
      method:           :post,
      input_shape:      "AllocateConnectionOnInterconnectRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a virtual interface.
  """
  def delete_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteVirtualInterface",
      method:           :post,
      input_shape:      "DeleteVirtualInterfaceRequest",
      output_shape:     "DeleteVirtualInterfaceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a link aggregation group (LAG). You cannot delete a LAG if it has
  active virtual interfaces or hosted connections.
  """
  def delete_lag(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLag",
      method:           :post,
      input_shape:      "DeleteLagRequest",
      output_shape:     "Lag",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the link aggregation groups (LAGs) in your account.

  If a LAG ID is provided, only information about the specified LAG is
  returned.
  """
  def describe_lags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLags",
      method:           :post,
      input_shape:      "DescribeLagsRequest",
      output_shape:     "Lags",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of hosted connections that have been provisioned on the
  given interconnect or link aggregation group (LAG).

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def describe_hosted_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeHostedConnections",
      method:           :post,
      input_shape:      "DescribeHostedConnectionsRequest",
      output_shape:     "Connections",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated in favor of `DescribeHostedConnections`.

  Returns a list of connections that have been provisioned on the given
  interconnect.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def describe_connections_on_interconnect(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConnectionsOnInterconnect",
      method:           :post,
      input_shape:      "DescribeConnectionsOnInterconnectRequest",
      output_shape:     "Connections",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes one or more tags from the specified Direct Connect resource.
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
  Associates a hosted connection and its virtual interfaces with a link
  aggregation group (LAG) or interconnect. If the target interconnect or LAG
  has an existing hosted connection with a conflicting VLAN number or IP
  address, the operation fails. This action temporarily interrupts the hosted
  connection's connectivity to AWS as it is being migrated.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def associate_hosted_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateHostedConnection",
      method:           :post,
      input_shape:      "AssociateHostedConnectionRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the list of AWS Direct Connect locations in the current AWS region.
  These are the locations that may be selected when calling CreateConnection
  or CreateInterconnect.
  """
  def describe_locations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeLocations",
      method:           :post,
      input_shape:      "",
      output_shape:     "Locations",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new connection between the customer network and a specific AWS
  Direct Connect location.

  A connection links your internal network to an AWS Direct Connect location
  over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end
  of the cable is connected to your router, the other to an AWS Direct
  Connect router. An AWS Direct Connect location provides access to Amazon
  Web Services in the region it is associated with. You can establish
  connections with AWS Direct Connect locations in multiple regions, but a
  connection in one region does not provide connectivity to other regions.

  You can automatically add the new connection to a link aggregation group
  (LAG) by specifying a LAG ID in the request. This ensures that the new
  connection is allocated on the same AWS Direct Connect endpoint that hosts
  the specified LAG. If there are no available ports on the endpoint, the
  request fails and no connection will be created.
  """
  def create_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateConnection",
      method:           :post,
      input_shape:      "CreateConnectionRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new link aggregation group (LAG) with the specified number of
  bundled physical connections between the customer network and a specific
  AWS Direct Connect location. A LAG is a logical interface that uses the
  Link Aggregation Control Protocol (LACP) to aggregate multiple 1 gigabit or
  10 gigabit interfaces, allowing you to treat them as a single interface.

  All connections in a LAG must use the same bandwidth (for example, 10
  Gbps), and must terminate at the same AWS Direct Connect endpoint.

  You can have up to 10 connections per LAG. Regardless of this limit, if you
  request more connections for the LAG than AWS Direct Connect can allocate
  on a single endpoint, no LAG is created.

  You can specify an existing physical connection or interconnect to include
  in the LAG (which counts towards the total number of connections). Doing so
  interrupts the current physical connection or hosted connections, and
  re-establishes them as a member of the LAG. The LAG will be created on the
  same AWS Direct Connect endpoint to which the connection terminates. Any
  virtual interfaces associated with the connection are automatically
  disassociated and re-associated with the LAG. The connection ID does not
  change.

  If the AWS account used to create a LAG is a registered AWS Direct Connect
  partner, the LAG is automatically enabled to host sub-connections. For a
  LAG owned by a partner, any associated virtual interfaces cannot be
  directly configured.
  """
  def create_lag(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLag",
      method:           :post,
      input_shape:      "CreateLagRequest",
      output_shape:     "Lag",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disassociates a connection from a link aggregation group (LAG). The
  connection is interrupted and re-established as a standalone connection
  (the connection is not deleted; to delete the connection, use the
  `DeleteConnection` request). If the LAG has associated virtual interfaces
  or hosted connections, they remain associated with the LAG. A disassociated
  connection owned by an AWS Direct Connect partner is automatically
  converted to an interconnect.

  If disassociating the connection will cause the LAG to fall below its
  setting for minimum number of operational connections, the request fails,
  except when it's the last member of the LAG. If all connections are
  disassociated, the LAG continues to exist as an empty LAG with no physical
  connections.
  """
  def disassociate_connection_from_lag(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateConnectionFromLag",
      method:           :post,
      input_shape:      "DisassociateConnectionFromLagRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of virtual private gateways owned by the AWS account.

  You can create one or more AWS Direct Connect private virtual interfaces
  linking to a virtual private gateway. A virtual private gateway can be
  managed via Amazon Virtual Private Cloud (VPC) console or the [EC2
  CreateVpnGateway](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html)
  action.
  """
  def describe_virtual_gateways(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVirtualGateways",
      method:           :post,
      input_shape:      "",
      output_shape:     "VirtualGateways",
      endpoint:         __spec__()
    }
  end

  @doc """
  Accept ownership of a public virtual interface created by another customer.

  After the virtual interface owner calls this function, the specified
  virtual interface will be created and made available for handling traffic.
  """
  def confirm_public_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmPublicVirtualInterface",
      method:           :post,
      input_shape:      "ConfirmPublicVirtualInterfaceRequest",
      output_shape:     "ConfirmPublicVirtualInterfaceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified interconnect.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def delete_interconnect(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteInterconnect",
      method:           :post,
      input_shape:      "DeleteInterconnectRequest",
      output_shape:     "DeleteInterconnectResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Displays all connections in this region.

  If a connection ID is provided, the call returns only that particular
  connection.
  """
  def describe_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConnections",
      method:           :post,
      input_shape:      "DescribeConnectionsRequest",
      output_shape:     "Connections",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of interconnects owned by the AWS account.

  If an interconnect ID is provided, it will only return this particular
  interconnect.
  """
  def describe_interconnects(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInterconnects",
      method:           :post,
      input_shape:      "DescribeInterconnectsRequest",
      output_shape:     "Interconnects",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the connection.

  Deleting a connection only stops the AWS Direct Connect port hour and data
  transfer charges. You need to cancel separately with the providers any
  services or charges for cross-connects or network circuits that connect you
  to the AWS Direct Connect location.
  """
  def delete_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteConnection",
      method:           :post,
      input_shape:      "DeleteConnectionRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Accept ownership of a private virtual interface created by another
  customer.

  After the virtual interface owner calls this function, the virtual
  interface will be created and attached to the given virtual private
  gateway, and will be available for handling traffic.
  """
  def confirm_private_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmPrivateVirtualInterface",
      method:           :post,
      input_shape:      "ConfirmPrivateVirtualInterfaceRequest",
      output_shape:     "ConfirmPrivateVirtualInterfaceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the attributes of a link aggregation group (LAG).

  You can update the following attributes:

  <ul> <li> The name of the LAG.

  </li> <li> The value for the minimum number of connections that must be
  operational for the LAG itself to be operational.

  </li> </ul> When you create a LAG, the default value for the minimum number
  of operational connections is zero (0). If you update this value, and the
  number of operational connections falls below the specified value, the LAG
  will automatically go down to avoid overutilization of the remaining
  connections. Adjusting this value should be done with care as it could
  force the LAG down if the value is set higher than the current number of
  operational connections.
  """
  def update_lag(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateLag",
      method:           :post,
      input_shape:      "UpdateLagRequest",
      output_shape:     "Lag",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provisions a public virtual interface to be owned by a different customer.

  The owner of a connection calls this function to provision a public virtual
  interface which will be owned by another AWS customer.

  Virtual interfaces created using this function must be confirmed by the
  virtual interface owner by calling ConfirmPublicVirtualInterface. Until
  this step has been completed, the virtual interface will be in 'Confirming'
  state, and will not be available for handling traffic.

  When creating an IPv6 public virtual interface (addressFamily is 'ipv6'),
  the customer and amazon address fields should be left blank to use
  auto-assigned IPv6 space. Custom IPv6 Addresses are currently not
  supported.
  """
  def allocate_public_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AllocatePublicVirtualInterface",
      method:           :post,
      input_shape:      "AllocatePublicVirtualInterfaceRequest",
      output_shape:     "VirtualInterface",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the tags associated with the specified Direct Connect resources.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      method:           :post,
      input_shape:      "DescribeTagsRequest",
      output_shape:     "DescribeTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a hosted connection on an interconnect or a link aggregation group
  (LAG).

  Allocates a VLAN number and a specified amount of bandwidth for use by a
  hosted connection on the given interconnect or LAG.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def allocate_hosted_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AllocateHostedConnection",
      method:           :post,
      input_shape:      "AllocateHostedConnectionRequest",
      output_shape:     "Connection",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new interconnect between a AWS Direct Connect partner's network
  and a specific AWS Direct Connect location.

  An interconnect is a connection which is capable of hosting other
  connections. The AWS Direct Connect partner can use an interconnect to
  provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not
  have their own connections. Like a standard connection, an interconnect
  links the AWS Direct Connect partner's network to an AWS Direct Connect
  location over a standard 1 Gbps or 10 Gbps Ethernet fiber-optic cable. One
  end is connected to the partner's router, the other to an AWS Direct
  Connect router.

  You can automatically add the new interconnect to a link aggregation group
  (LAG) by specifying a LAG ID in the request. This ensures that the new
  interconnect is allocated on the same AWS Direct Connect endpoint that
  hosts the specified LAG. If there are no available ports on the endpoint,
  the request fails and no interconnect will be created.

  For each end customer, the AWS Direct Connect partner provisions a
  connection on their interconnect by calling
  AllocateConnectionOnInterconnect. The end customer can then connect to AWS
  resources by creating a virtual interface on their connection, using the
  VLAN assigned to them by the AWS Direct Connect partner.

  <note> This is intended for use by AWS Direct Connect partners only.

  </note>
  """
  def create_interconnect(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInterconnect",
      method:           :post,
      input_shape:      "CreateInterconnectRequest",
      output_shape:     "Interconnect",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provisions a private virtual interface to be owned by another AWS customer.

  Virtual interfaces created using this action must be confirmed by the
  virtual interface owner by using the `ConfirmPrivateVirtualInterface`
  action. Until then, the virtual interface will be in 'Confirming' state,
  and will not be available for handling traffic.
  """
  def allocate_private_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AllocatePrivateVirtualInterface",
      method:           :post,
      input_shape:      "AllocatePrivateVirtualInterfaceRequest",
      output_shape:     "VirtualInterface",
      endpoint:         __spec__()
    }
  end

  @doc """
  Confirm the creation of a hosted connection on an interconnect.

  Upon creation, the hosted connection is initially in the 'Ordering' state,
  and will remain in this state until the owner calls ConfirmConnection to
  confirm creation of the hosted connection.
  """
  def confirm_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmConnection",
      method:           :post,
      input_shape:      "ConfirmConnectionRequest",
      output_shape:     "ConfirmConnectionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecated in favor of `DescribeLoa`.

  Returns the LOA-CFA for a Connection.

  The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a
  document that your APN partner or service provider uses when establishing
  your cross connect to AWS at the colocation facility. For more information,
  see [Requesting Cross Connects at AWS Direct Connect
  Locations](http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html)
  in the AWS Direct Connect user guide.
  """
  def describe_connection_loa(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeConnectionLoa",
      method:           :post,
      input_shape:      "DescribeConnectionLoaRequest",
      output_shape:     "DescribeConnectionLoaResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Displays all virtual interfaces for an AWS account. Virtual interfaces
  deleted fewer than 15 minutes before you make the request are also
  returned. If you specify a connection ID, only the virtual interfaces
  associated with the connection are returned. If you specify a virtual
  interface ID, then only a single virtual interface is returned.

  A virtual interface (VLAN) transmits the traffic between the AWS Direct
  Connect location and the customer.
  """
  def describe_virtual_interfaces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVirtualInterfaces",
      method:           :post,
      input_shape:      "DescribeVirtualInterfacesRequest",
      output_shape:     "VirtualInterfaces",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new private virtual interface. A virtual interface is the VLAN
  that transports AWS Direct Connect traffic. A private virtual interface
  supports sending traffic to a single virtual private cloud (VPC).
  """
  def create_private_virtual_interface(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePrivateVirtualInterface",
      method:           :post,
      input_shape:      "CreatePrivateVirtualInterfaceRequest",
      output_shape:     "VirtualInterface",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new BGP peer on a specified virtual interface. The BGP peer
  cannot be in the same address family (IPv4/IPv6) of an existing BGP peer on
  the virtual interface.

  You must create a BGP peer for the corresponding address family in order to
  access AWS resources that also use that address family.

  When creating a IPv6 BGP peer, the Amazon address and customer address
  fields must be left blank. IPv6 addresses are automatically assigned from
  Amazon's pool of IPv6 addresses; you cannot specify custom IPv6 addresses.

  For a public virtual interface, the Autonomous System Number (ASN) must be
  private or already whitelisted for the virtual interface.
  """
  def create_b_g_p_peer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateBGPPeer",
      method:           :post,
      input_shape:      "CreateBGPPeerRequest",
      output_shape:     "CreateBGPPeerResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "directconnect",
      target_prefix:    "OvertureService",
      endpoint_prefix:  "directconnect",
      type:             :json,
      version:          "2012-10-25",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ConfirmPublicVirtualInterfaceRequest" => %{"members" => %{"virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "required" => ["virtualInterfaceId"], "type" => "structure"}, "InterconnectList" => %{"member" => %{"shape" => "Interconnect"}, "type" => "list"}, "NewPublicVirtualInterface" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "routeFilterPrefixes" => %{"shape" => "RouteFilterPrefixList"}, "virtualInterfaceName" => %{"shape" => "VirtualInterfaceName"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["virtualInterfaceName", "vlan", "asn"], "type" => "structure"}, "DeleteLagRequest" => %{"members" => %{"lagId" => %{"shape" => "LagId"}}, "required" => ["lagId"], "type" => "structure"}, "ResourceTagList" => %{"member" => %{"shape" => "ResourceTag"}, "type" => "list"}, "TagKeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "VirtualGatewayState" => %{"type" => "string"}, "CreatePrivateVirtualInterfaceRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "newPrivateVirtualInterface" => %{"shape" => "NewPrivateVirtualInterface"}}, "required" => ["connectionId", "newPrivateVirtualInterface"], "type" => "structure"}, "AwsDevice" => %{"type" => "string"}, "LagName" => %{"type" => "string"}, "DescribeHostedConnectionsRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}}, "required" => ["connectionId"], "type" => "structure"}, "AssociateHostedConnectionRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "parentConnectionId" => %{"shape" => "ConnectionId"}}, "required" => ["connectionId", "parentConnectionId"], "type" => "structure"}, "RouterConfig" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "LagState" => %{"enum" => ["requested", "pending", "available", "down", "deleting", "deleted"], "type" => "string"}, "DeleteVirtualInterfaceResponse" => %{"members" => %{"virtualInterfaceState" => %{"shape" => "VirtualInterfaceState"}}, "type" => "structure"}, "Interconnect" => %{"members" => %{"awsDevice" => %{"shape" => "AwsDevice"}, "bandwidth" => %{"shape" => "Bandwidth"}, "interconnectId" => %{"shape" => "InterconnectId"}, "interconnectName" => %{"shape" => "InterconnectName"}, "interconnectState" => %{"shape" => "InterconnectState"}, "lagId" => %{"shape" => "LagId"}, "loaIssueTime" => %{"shape" => "LoaIssueTime"}, "location" => %{"shape" => "LocationCode"}, "region" => %{"shape" => "Region"}}, "type" => "structure"}, "Count" => %{"type" => "integer"}, "ConnectionState" => %{"enum" => ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected"], "type" => "string"}, "NewBGPPeer" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "customerAddress" => %{"shape" => "CustomerAddress"}}, "type" => "structure"}, "DescribeInterconnectLoaRequest" => %{"members" => %{"interconnectId" => %{"shape" => "InterconnectId"}, "loaContentType" => %{"shape" => "LoaContentType"}, "providerName" => %{"shape" => "ProviderName"}}, "required" => ["interconnectId"], "type" => "structure"}, "CIDR" => %{"type" => "string"}, "ConnectionId" => %{"type" => "string"}, "BGPPeerList" => %{"member" => %{"shape" => "BGPPeer"}, "type" => "list"}, "BGPAuthKey" => %{"type" => "string"}, "DescribeInterconnectLoaResponse" => %{"members" => %{"loa" => %{"shape" => "Loa"}}, "type" => "structure"}, "ConfirmPublicVirtualInterfaceResponse" => %{"members" => %{"virtualInterfaceState" => %{"shape" => "VirtualInterfaceState"}}, "type" => "structure"}, "UpdateLagRequest" => %{"members" => %{"lagId" => %{"shape" => "LagId"}, "lagName" => %{"shape" => "LagName"}, "minimumLinks" => %{"shape" => "Count"}}, "required" => ["lagId"], "type" => "structure"}, "LoaContentType" => %{"enum" => ["application/pdf"], "type" => "string"}, "LoaContent" => %{"type" => "blob"}, "ConfirmPrivateVirtualInterfaceResponse" => %{"members" => %{"virtualInterfaceState" => %{"shape" => "VirtualInterfaceState"}}, "type" => "structure"}, "DeleteBGPPeerResponse" => %{"members" => %{"virtualInterface" => %{"shape" => "VirtualInterface"}}, "type" => "structure"}, "AssociateVirtualInterfaceRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "required" => ["virtualInterfaceId", "connectionId"], "type" => "structure"}, "LocationCode" => %{"type" => "string"}, "DescribeInterconnectsRequest" => %{"members" => %{"interconnectId" => %{"shape" => "InterconnectId"}}, "type" => "structure"}, "DeleteBGPPeerRequest" => %{"members" => %{"asn" => %{"shape" => "ASN"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "type" => "structure"}, "ConnectionName" => %{"type" => "string"}, "Region" => %{"type" => "string"}, "DuplicateTagKeysException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DirectConnectServerException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CreateBGPPeerRequest" => %{"members" => %{"newBGPPeer" => %{"shape" => "NewBGPPeer"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "type" => "structure"}, "ConfirmPrivateVirtualInterfaceRequest" => %{"members" => %{"virtualGatewayId" => %{"shape" => "VirtualGatewayId"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "required" => ["virtualInterfaceId", "virtualGatewayId"], "type" => "structure"}, "BGPStatus" => %{"enum" => ["up", "down"], "type" => "string"}, "LocationList" => %{"member" => %{"shape" => "Location"}, "type" => "list"}, "CreateLagRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "connectionsBandwidth" => %{"shape" => "Bandwidth"}, "lagName" => %{"shape" => "LagName"}, "location" => %{"shape" => "LocationCode"}, "numberOfConnections" => %{"shape" => "Count"}}, "required" => ["numberOfConnections", "location", "connectionsBandwidth", "lagName"], "type" => "structure"}, "NewPublicVirtualInterfaceAllocation" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "routeFilterPrefixes" => %{"shape" => "RouteFilterPrefixList"}, "virtualInterfaceName" => %{"shape" => "VirtualInterfaceName"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["virtualInterfaceName", "vlan", "asn"], "type" => "structure"}, "DeleteInterconnectResponse" => %{"members" => %{"interconnectState" => %{"shape" => "InterconnectState"}}, "type" => "structure"}, "ResourceTag" => %{"members" => %{"resourceArn" => %{"shape" => "ResourceArn"}, "tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "VLAN" => %{"type" => "integer"}, "Lags" => %{"members" => %{"lags" => %{"shape" => "LagList"}}, "type" => "structure"}, "VirtualInterfaces" => %{"members" => %{"virtualInterfaces" => %{"shape" => "VirtualInterfaceList"}}, "type" => "structure"}, "UntagResourceRequest" => %{"members" => %{"resourceArn" => %{"shape" => "ResourceArn"}, "tagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["resourceArn", "tagKeys"], "type" => "structure"}, "ResourceArnList" => %{"member" => %{"shape" => "ResourceArn"}, "type" => "list"}, "VirtualInterfaceType" => %{"type" => "string"}, "Tag" => %{"members" => %{"key" => %{"shape" => "TagKey"}, "value" => %{"shape" => "TagValue"}}, "required" => ["key"], "type" => "structure"}, "Lag" => %{"members" => %{"allowsHostedConnections" => %{"shape" => "BooleanFlag"}, "awsDevice" => %{"shape" => "AwsDevice"}, "connections" => %{"shape" => "ConnectionList"}, "connectionsBandwidth" => %{"shape" => "Bandwidth"}, "lagId" => %{"shape" => "LagId"}, "lagName" => %{"shape" => "LagName"}, "lagState" => %{"shape" => "LagState"}, "location" => %{"shape" => "LocationCode"}, "minimumLinks" => %{"shape" => "Count"}, "numberOfConnections" => %{"shape" => "Count"}, "ownerAccount" => %{"shape" => "OwnerAccount"}, "region" => %{"shape" => "Region"}}, "type" => "structure"}, "InterconnectName" => %{"type" => "string"}, "OwnerAccount" => %{"type" => "string"}, "InterconnectState" => %{"enum" => ["requested", "pending", "available", "down", "deleting", "deleted"], "type" => "string"}, "RouteFilterPrefix" => %{"members" => %{"cidr" => %{"shape" => "CIDR"}}, "type" => "structure"}, "ConfirmConnectionRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}}, "required" => ["connectionId"], "type" => "structure"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "min" => 1, "type" => "list"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "AddressFamily" => %{"enum" => ["ipv4", "ipv6"], "type" => "string"}, "NewPrivateVirtualInterface" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "virtualGatewayId" => %{"shape" => "VirtualGatewayId"}, "virtualInterfaceName" => %{"shape" => "VirtualInterfaceName"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["virtualInterfaceName", "vlan", "asn", "virtualGatewayId"], "type" => "structure"}, "VirtualInterfaceId" => %{"type" => "string"}, "AllocatePrivateVirtualInterfaceRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "newPrivateVirtualInterfaceAllocation" => %{"shape" => "NewPrivateVirtualInterfaceAllocation"}, "ownerAccount" => %{"shape" => "OwnerAccount"}}, "required" => ["connectionId", "ownerAccount", "newPrivateVirtualInterfaceAllocation"], "type" => "structure"}, "DescribeConnectionLoaResponse" => %{"members" => %{"loa" => %{"shape" => "Loa"}}, "type" => "structure"}, "VirtualGatewayId" => %{"type" => "string"}, "BGPPeer" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "bgpPeerState" => %{"shape" => "BGPPeerState"}, "bgpStatus" => %{"shape" => "BGPStatus"}, "customerAddress" => %{"shape" => "CustomerAddress"}}, "type" => "structure"}, "DescribeTagsRequest" => %{"members" => %{"resourceArns" => %{"shape" => "ResourceArnList"}}, "required" => ["resourceArns"], "type" => "structure"}, "AllocateHostedConnectionRequest" => %{"members" => %{"bandwidth" => %{"shape" => "Bandwidth"}, "connectionId" => %{"shape" => "ConnectionId"}, "connectionName" => %{"shape" => "ConnectionName"}, "ownerAccount" => %{"shape" => "OwnerAccount"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["connectionId", "ownerAccount", "bandwidth", "connectionName", "vlan"], "type" => "structure"}, "InterconnectId" => %{"type" => "string"}, "UntagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "DescribeTagsResponse" => %{"members" => %{"resourceTags" => %{"shape" => "ResourceTagList"}}, "type" => "structure"}, "Location" => %{"members" => %{"locationCode" => %{"shape" => "LocationCode"}, "locationName" => %{"shape" => "LocationName"}}, "type" => "structure"}, "LoaIssueTime" => %{"type" => "timestamp"}, "DescribeLoaRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "loaContentType" => %{"shape" => "LoaContentType"}, "providerName" => %{"shape" => "ProviderName"}}, "required" => ["connectionId"], "type" => "structure"}, "BGPPeerState" => %{"enum" => ["verifying", "pending", "available", "deleting", "deleted"], "type" => "string"}, "ResourceArn" => %{"type" => "string"}, "PartnerName" => %{"type" => "string"}, "NewPrivateVirtualInterfaceAllocation" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "virtualInterfaceName" => %{"shape" => "VirtualInterfaceName"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["virtualInterfaceName", "vlan", "asn"], "type" => "structure"}, "TagResourceRequest" => %{"members" => %{"resourceArn" => %{"shape" => "ResourceArn"}, "tags" => %{"shape" => "TagList"}}, "required" => ["resourceArn", "tags"], "type" => "structure"}, "AllocatePublicVirtualInterfaceRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "newPublicVirtualInterfaceAllocation" => %{"shape" => "NewPublicVirtualInterfaceAllocation"}, "ownerAccount" => %{"shape" => "OwnerAccount"}}, "required" => ["connectionId", "ownerAccount", "newPublicVirtualInterfaceAllocation"], "type" => "structure"}, "LagId" => %{"type" => "string"}, "AmazonAddress" => %{"type" => "string"}, "Loa" => %{"members" => %{"loaContent" => %{"shape" => "LoaContent"}, "loaContentType" => %{"shape" => "LoaContentType"}}, "type" => "structure"}, "DescribeLagsRequest" => %{"members" => %{"lagId" => %{"shape" => "LagId"}}, "type" => "structure"}, "VirtualInterfaceList" => %{"member" => %{"shape" => "VirtualInterface"}, "type" => "list"}, "AssociateConnectionWithLagRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "lagId" => %{"shape" => "LagId"}}, "required" => ["connectionId", "lagId"], "type" => "structure"}, "DirectConnectClientException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ConnectionList" => %{"member" => %{"shape" => "Connection"}, "type" => "list"}, "Locations" => %{"members" => %{"locations" => %{"shape" => "LocationList"}}, "type" => "structure"}, "VirtualGateway" => %{"members" => %{"virtualGatewayId" => %{"shape" => "VirtualGatewayId"}, "virtualGatewayState" => %{"shape" => "VirtualGatewayState"}}, "type" => "structure"}, "VirtualGateways" => %{"members" => %{"virtualGateways" => %{"shape" => "VirtualGatewayList"}}, "type" => "structure"}, "DeleteInterconnectRequest" => %{"members" => %{"interconnectId" => %{"shape" => "InterconnectId"}}, "required" => ["interconnectId"], "type" => "structure"}, "RouteFilterPrefixList" => %{"member" => %{"shape" => "RouteFilterPrefix"}, "type" => "list"}, "ASN" => %{"type" => "integer"}, "CreateInterconnectRequest" => %{"members" => %{"bandwidth" => %{"shape" => "Bandwidth"}, "interconnectName" => %{"shape" => "InterconnectName"}, "lagId" => %{"shape" => "LagId"}, "location" => %{"shape" => "LocationCode"}}, "required" => ["interconnectName", "bandwidth", "location"], "type" => "structure"}, "CreateConnectionRequest" => %{"members" => %{"bandwidth" => %{"shape" => "Bandwidth"}, "connectionName" => %{"shape" => "ConnectionName"}, "lagId" => %{"shape" => "LagId"}, "location" => %{"shape" => "LocationCode"}}, "required" => ["location", "bandwidth", "connectionName"], "type" => "structure"}, "DeleteConnectionRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}}, "required" => ["connectionId"], "type" => "structure"}, "LocationName" => %{"type" => "string"}, "ProviderName" => %{"type" => "string"}, "TooManyTagsException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "CustomerAddress" => %{"type" => "string"}, "TagResourceResponse" => %{"members" => %{}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "VirtualInterface" => %{"members" => %{"addressFamily" => %{"shape" => "AddressFamily"}, "amazonAddress" => %{"shape" => "AmazonAddress"}, "asn" => %{"shape" => "ASN"}, "authKey" => %{"shape" => "BGPAuthKey"}, "bgpPeers" => %{"shape" => "BGPPeerList"}, "connectionId" => %{"shape" => "ConnectionId"}, "customerAddress" => %{"shape" => "CustomerAddress"}, "customerRouterConfig" => %{"shape" => "RouterConfig"}, "location" => %{"shape" => "LocationCode"}, "ownerAccount" => %{"shape" => "OwnerAccount"}, "routeFilterPrefixes" => %{"shape" => "RouteFilterPrefixList"}, "virtualGatewayId" => %{"shape" => "VirtualGatewayId"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}, "virtualInterfaceName" => %{"shape" => "VirtualInterfaceName"}, "virtualInterfaceState" => %{"shape" => "VirtualInterfaceState"}, "virtualInterfaceType" => %{"shape" => "VirtualInterfaceType"}, "vlan" => %{"shape" => "VLAN"}}, "type" => "structure"}, "VirtualGatewayList" => %{"member" => %{"shape" => "VirtualGateway"}, "type" => "list"}, "DescribeConnectionsOnInterconnectRequest" => %{"members" => %{"interconnectId" => %{"shape" => "InterconnectId"}}, "required" => ["interconnectId"], "type" => "structure"}, "Bandwidth" => %{"type" => "string"}, "CreateBGPPeerResponse" => %{"members" => %{"virtualInterface" => %{"shape" => "VirtualInterface"}}, "type" => "structure"}, "ConfirmConnectionResponse" => %{"members" => %{"connectionState" => %{"shape" => "ConnectionState"}}, "type" => "structure"}, "Interconnects" => %{"members" => %{"interconnects" => %{"shape" => "InterconnectList"}}, "type" => "structure"}, "VirtualInterfaceState" => %{"enum" => ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected"], "type" => "string"}, "Connection" => %{"members" => %{"awsDevice" => %{"shape" => "AwsDevice"}, "bandwidth" => %{"shape" => "Bandwidth"}, "connectionId" => %{"shape" => "ConnectionId"}, "connectionName" => %{"shape" => "ConnectionName"}, "connectionState" => %{"shape" => "ConnectionState"}, "lagId" => %{"shape" => "LagId"}, "loaIssueTime" => %{"shape" => "LoaIssueTime"}, "location" => %{"shape" => "LocationCode"}, "ownerAccount" => %{"shape" => "OwnerAccount"}, "partnerName" => %{"shape" => "PartnerName"}, "region" => %{"shape" => "Region"}, "vlan" => %{"shape" => "VLAN"}}, "type" => "structure"}, "LagList" => %{"member" => %{"shape" => "Lag"}, "type" => "list"}, "DeleteVirtualInterfaceRequest" => %{"members" => %{"virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "required" => ["virtualInterfaceId"], "type" => "structure"}, "DescribeVirtualInterfacesRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "virtualInterfaceId" => %{"shape" => "VirtualInterfaceId"}}, "type" => "structure"}, "Connections" => %{"members" => %{"connections" => %{"shape" => "ConnectionList"}}, "type" => "structure"}, "AllocateConnectionOnInterconnectRequest" => %{"members" => %{"bandwidth" => %{"shape" => "Bandwidth"}, "connectionName" => %{"shape" => "ConnectionName"}, "interconnectId" => %{"shape" => "InterconnectId"}, "ownerAccount" => %{"shape" => "OwnerAccount"}, "vlan" => %{"shape" => "VLAN"}}, "required" => ["bandwidth", "connectionName", "ownerAccount", "interconnectId", "vlan"], "type" => "structure"}, "VirtualInterfaceName" => %{"type" => "string"}, "DescribeConnectionLoaRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "loaContentType" => %{"shape" => "LoaContentType"}, "providerName" => %{"shape" => "ProviderName"}}, "required" => ["connectionId"], "type" => "structure"}, "BooleanFlag" => %{"type" => "boolean"}, "DescribeConnectionsRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}}, "type" => "structure"}, "DisassociateConnectionFromLagRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "lagId" => %{"shape" => "LagId"}}, "required" => ["connectionId", "lagId"], "type" => "structure"}, "CreatePublicVirtualInterfaceRequest" => %{"members" => %{"connectionId" => %{"shape" => "ConnectionId"}, "newPublicVirtualInterface" => %{"shape" => "NewPublicVirtualInterface"}}, "required" => ["connectionId", "newPublicVirtualInterface"], "type" => "structure"}}
  end
end