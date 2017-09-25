defmodule Baiji.Shield do
  @moduledoc """
  AWS Shield Advanced

  This is the *AWS Shield Advanced API Reference*. This guide is for
  developers who need detailed information about the AWS Shield Advanced API
  actions, data types, and errors. For detailed information about AWS WAF and
  AWS Shield Advanced features and an overview of how to use the AWS WAF and
  AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  
  @doc """
  Enables AWS Shield Advanced for a specific AWS resource. The resource can
  be an Amazon CloudFront distribution, Elastic Load Balancing load balancer,
  or an Amazon Route 53 hosted zone.
  """
  def create_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateProtection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Activates AWS Shield Advanced for an account.
  """
  def create_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes an AWS Shield Advanced `Protection`.
  """
  def delete_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteProtection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Removes AWS Shield Advanced from an account.
  """
  def delete_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes the details of a DDoS attack.
  """
  def describe_attack(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeAttack",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the details of a `Protection` object.
  """
  def describe_protection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProtection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Provides details about the AWS Shield Advanced subscription for an account.
  """
  def describe_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeSubscription",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified
  time period.
  """
  def list_attacks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListAttacks",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all `Protection` objects for the account.
  """
  def list_protections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListProtections",
      type:     :json,
      method:   :post
    }
  end
  
end