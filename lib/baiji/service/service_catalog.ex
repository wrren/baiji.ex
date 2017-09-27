defmodule Baiji.ServiceCatalog do
  @moduledoc """
  AWS Service Catalog

  **Overview**

  [AWS Service Catalog](https://aws.amazon.com/servicecatalog/) allows
  organizations to create and manage catalogs of IT services that are
  approved for use on AWS. This documentation provides reference material for
  the AWS Service Catalog end user API. To get the most out of this
  documentation, be familiar with the terminology discussed in [AWS Service
  Catalog
  Concepts](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).

  *Additional Resources*

  <ul> <li> [AWS Service Catalog Administrator
  Guide](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html)

  </li> <li> [AWS Service Catalog User
  Guide](http://docs.aws.amazon.com/servicecatalog/latest/userguide/introduction.html)

  </li> </ul>
  """
  
  @doc """
  Lists detailed TagOptions information.
  """
  def list_tag_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTagOptions",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Requests termination of an existing ProvisionedProduct object. If there are
  `Tags` associated with the object, they are terminated when the
  ProvisionedProduct object is terminated.

  This operation does not delete any records associated with the
  ProvisionedProduct object.

  You can check the status of this request using the `DescribeRecord`
  operation.
  """
  def terminate_provisioned_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "TerminateProvisionedProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Describes a TagOption.
  """
  def describe_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeTagOption",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an existing product.
  """
  def update_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists the account IDs that have been authorized sharing of the specified
  portfolio.
  """
  def list_portfolio_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPortfolioAccess",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Requests a *provision* of a specified product. A *provisioned product* is a
  resourced instance for a product. For example, provisioning a
  CloudFormation-template-backed product results in launching a
  CloudFormation stack and all the underlying resources that come with it.

  You can check the status of this request using the `DescribeRecord`
  operation. The error "Parameter validation failed: Missing required
  parameter in Tags[*N*]:*Value*" indicates that your request contains a tag
  which has a tag key but no corresponding tag value (value is empty or
  null). Your call may have included values returned from a
  `DescribeProvisioningParameters` call that resulted in a TagOption key with
  an empty list. This happens when TagOption keys are in conflict. For more
  information, see `DescribeProvisioningParameters`.
  """
  def provision_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ProvisionProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Disassociates a TagOption from a resource.
  """
  def disassociate_tag_option_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateTagOptionFromResource",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new product.
  """
  def create_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a paginated list of all the ProvisionedProduct objects that are
  currently available (not terminated).
  """
  def scan_provisioned_products(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ScanProvisionedProducts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new TagOption.
  """
  def create_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateTagOption",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a specified product, run with administrator
  access.
  """
  def describe_product_as_admin(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProductAsAdmin",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified portfolio share.
  """
  def delete_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeletePortfolioShare",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProduct` except that
  it takes as input `ProductViewId` instead of `ProductId`.
  """
  def describe_product_view(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProductView",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified constraint.
  """
  def delete_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteConstraint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified provisioning artifact. This operation does not work
  on a provisioning artifact associated with a product that has been shared
  with you, or on the last provisioning artifact associated with a product (a
  product must have at least one provisioning artifact).
  """
  def delete_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteProvisioningArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all principal ARNs associated with the specified portfolio.
  """
  def list_principals_for_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPrincipalsForPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associates the specified principal ARN with the specified portfolio.
  """
  def associate_principal_with_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociatePrincipalWithPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Disassociates the specified product from the specified portfolio.
  """
  def disassociate_product_from_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociateProductFromPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new portfolio share.
  """
  def create_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreatePortfolioShare",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associates a product with a portfolio.
  """
  def associate_product_with_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociateProductWithPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an existing provisioning artifact's information. This operation
  does not work on a provisioning artifact associated with a product that has
  been shared with you.
  """
  def update_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateProvisioningArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Create a new provisioning artifact for the specified product. This
  operation does not work with a product that has been shared with you.

  See the bottom of this topic for an example JSON request.
  """
  def create_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateProvisioningArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an existing constraint.
  """
  def update_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateConstraint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Rejects an offer to share a portfolio.
  """
  def reject_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RejectPortfolioShare",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves detailed information about the specified provisioning artifact.
  """
  def describe_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProvisioningArtifact",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves detailed constraint information for the specified portfolio and
  product.
  """
  def list_constraints_for_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListConstraintsForPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Requests updates to the configuration of an existing ProvisionedProduct
  object. If there are tags associated with the object, they cannot be
  updated or added with this operation. Depending on the specific updates
  requested, this operation may update with no interruption, with some
  interruption, or replace the ProvisionedProduct object entirely.

  You can check the status of this request using the `DescribeRecord`
  operation.
  """
  def update_provisioned_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateProvisionedProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a paginated list all of the `Products` objects to which the caller
  has access.

  The output of this operation can be used as input for other operations,
  such as `DescribeProductView`.
  """
  def search_products(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SearchProducts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new portfolio.
  """
  def create_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreatePortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists resources associated with a TagOption.
  """
  def list_resources_for_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListResourcesForTagOption",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Accepts an offer to share a portfolio.
  """
  def accept_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AcceptPortfolioShare",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates the specified portfolio's details. This operation does not work
  with a product that has been shared with you.
  """
  def update_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdatePortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves detailed information and any tags associated with the specified
  portfolio.
  """
  def describe_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribePortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieve detailed information about the provisioned product.
  """
  def describe_provisioned_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProvisionedProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Updates an existing TagOption.
  """
  def update_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateTagOption",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves detailed information for a specified constraint.
  """
  def describe_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeConstraint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProductView` except
  that it takes as input `ProductId` instead of `ProductViewId`.
  """
  def describe_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified portfolio. This operation does not work with a
  portfolio that has been shared with you or if it has products, users,
  constraints, or shared accounts associated with it.
  """
  def delete_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeletePortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all portfolios that the specified product is associated with.
  """
  def list_portfolios_for_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPortfoliosForProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all provisioning artifacts associated with the specified product.
  """
  def list_provisioning_artifacts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListProvisioningArtifacts",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves a paginated list of the full details of a specific request. Use
  this operation after calling a request operation (`ProvisionProduct`,
  `TerminateProvisionedProduct`, or `UpdateProvisionedProduct`).
  """
  def describe_record(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeRecord",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a paginated list of all paths to a specified product. A path is how
  the user has access to a specified product, and is necessary when
  provisioning a product. A path also determines the constraints put on the
  product.
  """
  def list_launch_paths(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListLaunchPaths",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Retrieves summary and status information about all products created within
  the caller's account. If a portfolio ID is provided, this operation
  retrieves information for only those products that are associated with the
  specified portfolio.
  """
  def search_products_as_admin(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SearchProductsAsAdmin",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a new constraint. For more information, see [Using
  Constraints](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints.html).
  """
  def create_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateConstraint",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists details of all portfolios for which sharing was accepted by this
  account.
  """
  def list_accepted_portfolio_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListAcceptedPortfolioShares",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns a paginated list of all performed requests, in the form of
  RecordDetails objects that are filtered as specified.
  """
  def list_record_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListRecordHistory",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified product. This operation does not work with a product
  that has been shared with you or is associated with a portfolio.
  """
  def delete_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteProduct",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Disassociates a previously associated principal ARN from a specified
  portfolio.
  """
  def disassociate_principal_from_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisassociatePrincipalFromPortfolio",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Provides information about parameters required to provision a specified
  product in a specified manner. Use this operation to obtain the list of
  `ProvisioningArtifactParameters` parameters available to call the
  `ProvisionProduct` operation for the specified product.

  If the output contains a TagOption key with an empty list of values, there
  is a TagOption conflict for that key. The end user cannot take action to
  fix the conflict, and launch is not blocked. In subsequent calls to the
  `ProvisionProduct` operation, do not include conflicted TagOption keys as
  tags. Calls to `ProvisionProduct` with empty TagOption values cause the
  error "Parameter validation failed: Missing required parameter in
  Tags[*N*]:*Value* ". Calls to `ProvisionProduct` with conflicted TagOption
  keys automatically tag the provisioned product with the conflicted keys
  with the value "`sc-tagoption-conflict-portfolioId-productId`".
  """
  def describe_provisioning_parameters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeProvisioningParameters",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Lists all portfolios in the catalog.
  """
  def list_portfolios(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPortfolios",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Associate a TagOption identifier with a resource identifier.
  """
  def associate_tag_option_with_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AssociateTagOptionWithResource",
      type:     :json,
      method:   :post
    }
  end
  
end