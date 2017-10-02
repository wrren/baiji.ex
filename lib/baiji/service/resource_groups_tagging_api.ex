defmodule Baiji.ResourceGroupsTaggingApi do
  @moduledoc """
  Resource Groups Tagging API

  This guide describes the API operations for the resource groups tagging.

  A tag is a label that you assign to an AWS resource. A tag consists of a
  key and a value, both of which you define. For example, if you have two
  Amazon EC2 instances, you might assign both a tag key of "Stack." But the
  value of "Stack" might be "Testing" for one and "Production" for the other.

  Tagging can help you organize your resources and enables you to simplify
  resource management, access management and cost allocation. For more
  information about tagging, see [Working with Tag
  Editor](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html)
  and [Working with Resource
  Groups](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/resource-groups.html).
  For more information about permissions you need to use the resource groups
  tagging APIs, see [Obtaining Permissions for Resource Groups
  ](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-resource-groups.html)
  and [Obtaining Permissions for Tagging
  ](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html).

  You can use the resource groups tagging APIs to complete the following
  tasks:

  <ul> <li> Tag and untag supported resources located in the specified region
  for the AWS account

  </li> <li> Use tag-based filters to search for resources located in the
  specified region for the AWS account

  </li> <li> List all existing tag keys in the specified region for the AWS
  account

  </li> <li> List all existing values for the specified key in the specified
  region for the AWS account

  </li> </ul> Not all resources can have tags. For a lists of resources that
  you can tag, see [Supported
  Resources](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html)
  in the *AWS Resource Groups and Tag Editor User Guide*.

  To make full use of the resource groups tagging APIs, you might need
  additional IAM permissions, including permission to access the resources of
  individual services as well as permission to view and apply tags to those
  resources. For more information, see [Obtaining Permissions for
  Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
  in the *AWS Resource Groups and Tag Editor User Guide*.
  """
  
  @doc """
  Returns all the tagged resources that are associated with the specified
  tags (keys and values) located in the specified region for the AWS account.
  The tags and the resource types that you specify in the request are known
  as *filters*. The response includes all tags that are associated with the
  requested resources. If no filter is provided, this action returns a
  paginated resource list with the associated tags.
  """
  def get_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "resourcegroupstaggingapi",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetResources",
      
      target_prefix:  "ResourceGroupsTaggingAPI_20170126",
      
      type:           :json,
      version:        "2017-01-26",
      method:         :post
    }
  end
  
  @doc """
  Returns all tag keys in the specified region for the AWS account.
  """
  def get_tag_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "resourcegroupstaggingapi",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTagKeys",
      
      target_prefix:  "ResourceGroupsTaggingAPI_20170126",
      
      type:           :json,
      version:        "2017-01-26",
      method:         :post
    }
  end
  
  @doc """
  Returns all tag values for the specified key in the specified region for
  the AWS account.
  """
  def get_tag_values(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "resourcegroupstaggingapi",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTagValues",
      
      target_prefix:  "ResourceGroupsTaggingAPI_20170126",
      
      type:           :json,
      version:        "2017-01-26",
      method:         :post
    }
  end
  
  @doc """
  Applies one or more tags to the specified resources. Note the following:

  <ul> <li> Not all resources can have tags. For a list of resources that
  support tagging, see [Supported
  Resources](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html)
  in the *AWS Resource Groups and Tag Editor User Guide*.

  </li> <li> Each resource can have up to 50 tags. For other limits, see [Tag
  Restrictions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions)
  in the *Amazon EC2 User Guide for Linux Instances*.

  </li> <li> You can only tag resources that are located in the specified
  region for the AWS account.

  </li> <li> To add tags to a resource, you need the necessary permissions
  for the service that the resource belongs to as well as permissions for
  adding tags. For more information, see [Obtaining Permissions for
  Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
  in the *AWS Resource Groups and Tag Editor User Guide*.

  </li> </ul>
  """
  def tag_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "resourcegroupstaggingapi",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "TagResources",
      
      target_prefix:  "ResourceGroupsTaggingAPI_20170126",
      
      type:           :json,
      version:        "2017-01-26",
      method:         :post
    }
  end
  
  @doc """
  Removes the specified tags from the specified resources. When you specify a
  tag key, the action removes both that key and its associated value. The
  operation succeeds even if you attempt to remove tags from a resource that
  were already removed. Note the following:

  <ul> <li> To remove tags from a resource, you need the necessary
  permissions for the service that the resource belongs to as well as
  permissions for removing tags. For more information, see [Obtaining
  Permissions for
  Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
  in the *AWS Resource Groups and Tag Editor User Guide*.

  </li> <li> You can only tag resources that are located in the specified
  region for the AWS account.

  </li> </ul>
  """
  def untag_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "resourcegroupstaggingapi",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UntagResources",
      
      target_prefix:  "ResourceGroupsTaggingAPI_20170126",
      
      type:           :json,
      version:        "2017-01-26",
      method:         :post
    }
  end
  
end