defmodule Baiji.Appstream do
  @moduledoc """
  Amazon AppStream 2.0

  API documentation for Amazon AppStream 2.0.
  """
  
  @doc """
  Associate a fleet to a stack.
  """
  def associate_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociateFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a directory configuration with the given parameters.
  """
  def create_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateDirectoryConfig",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new fleet.
  """
  def create_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new stack.
  """
  def create_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateStack",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a URL to start an AppStream 2.0 streaming session for a user. By
  default, the URL is valid only for 1 minute from the time that it is
  generated.
  """
  def create_streaming_u_r_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateStreamingURL",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the directory configuration with the given parameters.
  """
  def delete_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteDirectoryConfig",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes a fleet.
  """
  def delete_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the stack. After this operation completes, the environment can no
  longer be activated, and any reservations made for the stack are released.
  """
  def delete_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteStack",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a list describing the specified directory configurations.
  """
  def describe_directory_configs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeDirectoryConfigs",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  If fleet names are provided, this operation describes the specified fleets;
  otherwise, all the fleets in the account are described.
  """
  def describe_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeFleets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes the images. If a list of names is not provided, all images in
  your account are returned. This operation does not return a paginated
  result.
  """
  def describe_images(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeImages",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes the streaming sessions for a stack and a fleet. If a user ID is
  provided, this operation returns streaming sessions for only that user. To
  retrieve the next set of items, pass this value for the `nextToken`
  parameter in a subsequent call to this operation. If an authentication type
  is not provided, the operation defaults to users authenticated using a
  streaming URL.
  """
  def describe_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSessions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  If stack names are not provided, this operation describes the specified
  stacks; otherwise, all stacks in the account are described. To retrieve the
  next set of items, pass the `nextToken` value in a subsequent call to this
  operation.
  """
  def describe_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeStacks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Disassociates a fleet from a stack.
  """
  def disassociate_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  This operation immediately stops a streaming session.
  """
  def expire_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ExpireSession",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all fleets associated with the stack.
  """
  def list_associated_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListAssociatedFleets",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all stacks to which the specified fleet is associated.
  """
  def list_associated_stacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListAssociatedStacks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Starts a fleet.
  """
  def start_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StartFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Stops a fleet.
  """
  def stop_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "StopFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates the directory configuration with the given parameters.
  """
  def update_directory_config(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateDirectoryConfig",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an existing fleet. All the attributes except the fleet name can be
  updated in the **STOPPED** state. When a fleet is in the **RUNNING** state,
  only `DisplayName` and `ComputeCapacity` can be updated. A fleet cannot be
  updated in a status of **STARTING** or **STOPPING**.
  """
  def update_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateFleet",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates the specified fields in the stack with the specified name.
  """
  def update_stack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateStack",
      type:     :json,
      method:   :post
    }
  end
  
end