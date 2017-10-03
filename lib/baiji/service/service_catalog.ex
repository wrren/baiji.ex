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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagOptions",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListTagOptionsInput",
      output_shape:     "ListTagOptionsOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TerminateProvisionedProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "TerminateProvisionedProductInput",
      output_shape:     "TerminateProvisionedProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes a TagOption.
  """
  def describe_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeTagOption",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeTagOptionInput",
      output_shape:     "DescribeTagOptionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing product.
  """
  def update_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdateProductInput",
      output_shape:     "UpdateProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the account IDs that have been authorized sharing of the specified
  portfolio.
  """
  def list_portfolio_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPortfolioAccess",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListPortfolioAccessInput",
      output_shape:     "ListPortfolioAccessOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ProvisionProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ProvisionProductInput",
      output_shape:     "ProvisionProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates a TagOption from a resource.
  """
  def disassociate_tag_option_from_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateTagOptionFromResource",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DisassociateTagOptionFromResourceInput",
      output_shape:     "DisassociateTagOptionFromResourceOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new product.
  """
  def create_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreateProductInput",
      output_shape:     "CreateProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a paginated list of all the ProvisionedProduct objects that are
  currently available (not terminated).
  """
  def scan_provisioned_products(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ScanProvisionedProducts",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ScanProvisionedProductsInput",
      output_shape:     "ScanProvisionedProductsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new TagOption.
  """
  def create_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateTagOption",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreateTagOptionInput",
      output_shape:     "CreateTagOptionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about a specified product, run with administrator
  access.
  """
  def describe_product_as_admin(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProductAsAdmin",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProductAsAdminInput",
      output_shape:     "DescribeProductAsAdminOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified portfolio share.
  """
  def delete_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePortfolioShare",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DeletePortfolioShareInput",
      output_shape:     "DeletePortfolioShareOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProduct` except that
  it takes as input `ProductViewId` instead of `ProductId`.
  """
  def describe_product_view(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProductView",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProductViewInput",
      output_shape:     "DescribeProductViewOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified constraint.
  """
  def delete_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteConstraint",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DeleteConstraintInput",
      output_shape:     "DeleteConstraintOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteProvisioningArtifact",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DeleteProvisioningArtifactInput",
      output_shape:     "DeleteProvisioningArtifactOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Copies the specified source product to the specified target product or a
  new product.

  You can copy the product to the same account or another account. You can
  copy the product to the same region or another region.

  This operation is performed asynchronously. To track the progress of the
  operation, use `DescribeCopyProductStatus`.
  """
  def copy_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CopyProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CopyProductInput",
      output_shape:     "CopyProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all principal ARNs associated with the specified portfolio.
  """
  def list_principals_for_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPrincipalsForPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListPrincipalsForPortfolioInput",
      output_shape:     "ListPrincipalsForPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates the specified principal ARN with the specified portfolio.
  """
  def associate_principal_with_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociatePrincipalWithPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "AssociatePrincipalWithPortfolioInput",
      output_shape:     "AssociatePrincipalWithPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates the specified product from the specified portfolio.
  """
  def disassociate_product_from_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateProductFromPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DisassociateProductFromPortfolioInput",
      output_shape:     "DisassociateProductFromPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new portfolio share.
  """
  def create_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePortfolioShare",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreatePortfolioShareInput",
      output_shape:     "CreatePortfolioShareOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates a product with a portfolio.
  """
  def associate_product_with_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateProductWithPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "AssociateProductWithPortfolioInput",
      output_shape:     "AssociateProductWithPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing provisioning artifact's information. This operation
  does not work on a provisioning artifact associated with a product that has
  been shared with you.
  """
  def update_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateProvisioningArtifact",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdateProvisioningArtifactInput",
      output_shape:     "UpdateProvisioningArtifactOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new provisioning artifact for the specified product. This
  operation does not work with a product that has been shared with you.
  """
  def create_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateProvisioningArtifact",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreateProvisioningArtifactInput",
      output_shape:     "CreateProvisioningArtifactOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing constraint.
  """
  def update_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateConstraint",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdateConstraintInput",
      output_shape:     "UpdateConstraintOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Rejects an offer to share a portfolio.
  """
  def reject_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RejectPortfolioShare",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "RejectPortfolioShareInput",
      output_shape:     "RejectPortfolioShareOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves detailed information about the specified provisioning artifact.
  """
  def describe_provisioning_artifact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProvisioningArtifact",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProvisioningArtifactInput",
      output_shape:     "DescribeProvisioningArtifactOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves detailed constraint information for the specified portfolio and
  product.
  """
  def list_constraints_for_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListConstraintsForPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListConstraintsForPortfolioInput",
      output_shape:     "ListConstraintsForPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateProvisionedProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdateProvisionedProductInput",
      output_shape:     "UpdateProvisionedProductOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SearchProducts",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "SearchProductsInput",
      output_shape:     "SearchProductsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new portfolio.
  """
  def create_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreatePortfolioInput",
      output_shape:     "CreatePortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists resources associated with a TagOption.
  """
  def list_resources_for_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListResourcesForTagOption",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListResourcesForTagOptionInput",
      output_shape:     "ListResourcesForTagOptionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Accepts an offer to share a portfolio.
  """
  def accept_portfolio_share(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcceptPortfolioShare",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "AcceptPortfolioShareInput",
      output_shape:     "AcceptPortfolioShareOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the specified portfolio's details. This operation does not work
  with a product that has been shared with you.
  """
  def update_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdatePortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdatePortfolioInput",
      output_shape:     "UpdatePortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the status of the specified copy product operation.
  """
  def describe_copy_product_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCopyProductStatus",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeCopyProductStatusInput",
      output_shape:     "DescribeCopyProductStatusOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves detailed information and any tags associated with the specified
  portfolio.
  """
  def describe_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribePortfolioInput",
      output_shape:     "DescribePortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieve detailed information about the provisioned product.
  """
  def describe_provisioned_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProvisionedProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProvisionedProductInput",
      output_shape:     "DescribeProvisionedProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing TagOption.
  """
  def update_tag_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateTagOption",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "UpdateTagOptionInput",
      output_shape:     "UpdateTagOptionOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves detailed information for a specified constraint.
  """
  def describe_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeConstraint",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeConstraintInput",
      output_shape:     "DescribeConstraintOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProductView` except
  that it takes as input `ProductId` instead of `ProductViewId`.
  """
  def describe_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProductInput",
      output_shape:     "DescribeProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified portfolio. This operation does not work with a
  portfolio that has been shared with you or if it has products, users,
  constraints, or shared accounts associated with it.
  """
  def delete_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeletePortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DeletePortfolioInput",
      output_shape:     "DeletePortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all portfolios that the specified product is associated with.
  """
  def list_portfolios_for_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPortfoliosForProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListPortfoliosForProductInput",
      output_shape:     "ListPortfoliosForProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all provisioning artifacts associated with the specified product.
  """
  def list_provisioning_artifacts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListProvisioningArtifacts",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListProvisioningArtifactsInput",
      output_shape:     "ListProvisioningArtifactsOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Retrieves a paginated list of the full details of a specific request. Use
  this operation after calling a request operation (`ProvisionProduct`,
  `TerminateProvisionedProduct`, or `UpdateProvisionedProduct`).
  """
  def describe_record(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRecord",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeRecordInput",
      output_shape:     "DescribeRecordOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListLaunchPaths",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListLaunchPathsInput",
      output_shape:     "ListLaunchPathsOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SearchProductsAsAdmin",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "SearchProductsAsAdminInput",
      output_shape:     "SearchProductsAsAdminOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new constraint. For more information, see [Using
  Constraints](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints.html).
  """
  def create_constraint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateConstraint",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "CreateConstraintInput",
      output_shape:     "CreateConstraintOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists details of all portfolios for which sharing was accepted by this
  account.
  """
  def list_accepted_portfolio_shares(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAcceptedPortfolioShares",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListAcceptedPortfolioSharesInput",
      output_shape:     "ListAcceptedPortfolioSharesOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a paginated list of all performed requests, in the form of
  RecordDetails objects that are filtered as specified.
  """
  def list_record_history(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRecordHistory",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListRecordHistoryInput",
      output_shape:     "ListRecordHistoryOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified product. This operation does not work with a product
  that has been shared with you or is associated with a portfolio.
  """
  def delete_product(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteProduct",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DeleteProductInput",
      output_shape:     "DeleteProductOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates a previously associated principal ARN from a specified
  portfolio.
  """
  def disassociate_principal_from_portfolio(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociatePrincipalFromPortfolio",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DisassociatePrincipalFromPortfolioInput",
      output_shape:     "DisassociatePrincipalFromPortfolioOutput",
      shapes:           &__MODULE__.__shapes__/0
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
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeProvisioningParameters",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "DescribeProvisioningParametersInput",
      output_shape:     "DescribeProvisioningParametersOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all portfolios in the catalog.
  """
  def list_portfolios(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListPortfolios",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "ListPortfoliosInput",
      output_shape:     "ListPortfoliosOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associate a TagOption identifier with a resource identifier.
  """
  def associate_tag_option_with_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "servicecatalog",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateTagOptionWithResource",
      
      target_prefix:    "AWS242ServiceCatalogService",
      
      endpoint_prefix:  "servicecatalog",
      type:             :json,
      version:          "2015-12-10",
      method:           :post,
      input_shape:      "AssociateTagOptionWithResourceInput",
      output_shape:     "AssociateTagOptionWithResourceOutput",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"UpdateProvisionedProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PathId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "ProvisionedProductId" => %{"shape" => "Id"}, "ProvisionedProductName" => %{"shape" => "ProvisionedProductNameOrArn"}, "ProvisioningArtifactId" => %{"shape" => "Id"}, "ProvisioningParameters" => %{"shape" => "UpdateProvisioningParameters"}, "UpdateToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}}, "required" => ["UpdateToken"], "type" => "structure"}, "SourceProvisioningArtifactProperties" => %{"member" => %{"shape" => "SourceProvisioningArtifactPropertiesMap"}, "type" => "list"}, "DescribeTagOptionInput" => %{"members" => %{"Id" => %{"shape" => "TagOptionId"}}, "required" => ["Id"], "type" => "structure"}, "ResourceDetailCreatedTime" => %{"type" => "timestamp"}, "DescribeProvisionedProductOutput" => %{"members" => %{"ProvisionedProductDetail" => %{"shape" => "ProvisionedProductDetail"}}, "type" => "structure"}, "TagOptionSummary" => %{"members" => %{"Key" => %{"shape" => "TagOptionKey"}, "Values" => %{"shape" => "TagOptionValues"}}, "type" => "structure"}, "PageSize" => %{"max" => 20, "min" => 0, "type" => "integer"}, "AllowedValue" => %{"type" => "string"}, "RecordOutput" => %{"members" => %{"Description" => %{"shape" => "Description"}, "OutputKey" => %{"shape" => "OutputKey"}, "OutputValue" => %{"shape" => "OutputValue"}}, "type" => "structure"}, "AcceptPortfolioShareInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId"], "type" => "structure"}, "TagKeys" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "UpdateProvisioningArtifactOutput" => %{"members" => %{"Info" => %{"shape" => "ProvisioningArtifactInfo"}, "ProvisioningArtifactDetail" => %{"shape" => "ProvisioningArtifactDetail"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "ProductViewShortDescription" => %{"type" => "string"}, "ResourceDetailDescription" => %{"type" => "string"}, "CreateProvisioningArtifactOutput" => %{"members" => %{"Info" => %{"shape" => "ProvisioningArtifactInfo"}, "ProvisioningArtifactDetail" => %{"shape" => "ProvisioningArtifactDetail"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "DeletePortfolioShareOutput" => %{"members" => %{}, "type" => "structure"}, "ScanProvisionedProductsInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AccessLevelFilter" => %{"shape" => "AccessLevelFilter"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "IgnoreErrors" => %{"type" => "boolean"}, "ParameterConstraints" => %{"members" => %{"AllowedValues" => %{"shape" => "AllowedValues"}}, "type" => "structure"}, "CopyOptions" => %{"member" => %{"shape" => "CopyOption"}, "type" => "list"}, "ProvisionProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "NotificationArns" => %{"shape" => "NotificationArns"}, "PathId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "ProvisionToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "ProvisionedProductName" => %{"shape" => "ProvisionedProductName"}, "ProvisioningArtifactId" => %{"shape" => "Id"}, "ProvisioningParameters" => %{"shape" => "ProvisioningParameters"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["ProductId", "ProvisioningArtifactId", "ProvisionedProductName", "ProvisionToken"], "type" => "structure"}, "ResourceType" => %{"type" => "string"}, "ListConstraintsForPortfolioOutput" => %{"members" => %{"ConstraintDetails" => %{"shape" => "ConstraintDetails"}, "NextPageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "ParameterType" => %{"type" => "string"}, "AllowedValues" => %{"member" => %{"shape" => "AllowedValue"}, "type" => "list"}, "UsageInstructions" => %{"member" => %{"shape" => "UsageInstruction"}, "type" => "list"}, "CreationTime" => %{"type" => "timestamp"}, "ProductViewSortBy" => %{"enum" => ["Title", "VersionCount", "CreationDate"], "type" => "string"}, "Id" => %{"max" => 100, "min" => 1, "type" => "string"}, "AssociateProductWithPortfolioOutput" => %{"members" => %{}, "type" => "structure"}, "AddTags" => %{"max" => 20, "member" => %{"shape" => "Tag"}, "type" => "list"}, "CopyProductOutput" => %{"members" => %{"CopyProductToken" => %{"shape" => "Id"}}, "type" => "structure"}, "ProvisioningArtifactPropertyValue" => %{"type" => "string"}, "PortfolioDetail" => %{"members" => %{"ARN" => %{"shape" => "ResourceARN"}, "CreatedTime" => %{"shape" => "CreationTime"}, "Description" => %{"shape" => "PortfolioDescription"}, "DisplayName" => %{"shape" => "PortfolioDisplayName"}, "Id" => %{"shape" => "Id"}, "ProviderName" => %{"shape" => "ProviderName"}}, "type" => "structure"}, "DeleteProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "DescribeTagOptionOutput" => %{"members" => %{"TagOptionDetail" => %{"shape" => "TagOptionDetail"}}, "type" => "structure"}, "ProvisionedProductStatusMessage" => %{"type" => "string"}, "CopyProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "CopyOptions" => %{"shape" => "CopyOptions"}, "IdempotencyToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "SourceProductArn" => %{"shape" => "ProductArn"}, "SourceProvisioningArtifactIdentifiers" => %{"shape" => "SourceProvisioningArtifactProperties"}, "TargetProductId" => %{"shape" => "Id"}, "TargetProductName" => %{"shape" => "ProductViewName"}}, "required" => ["SourceProductArn", "IdempotencyToken"], "type" => "structure"}, "ListTagOptionsFilters" => %{"members" => %{"Active" => %{"shape" => "TagOptionActive"}, "Key" => %{"shape" => "TagOptionKey"}, "Value" => %{"shape" => "TagOptionValue"}}, "type" => "structure"}, "PortfolioName" => %{"type" => "string"}, "ListProvisioningArtifactsOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "ProvisioningArtifactDetails" => %{"shape" => "ProvisioningArtifactDetails"}}, "type" => "structure"}, "UpdateConstraintOutput" => %{"members" => %{"ConstraintDetail" => %{"shape" => "ConstraintDetail"}, "ConstraintParameters" => %{"shape" => "ConstraintParameters"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "RejectPortfolioShareInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId"], "type" => "structure"}, "TerminateProvisionedProductOutput" => %{"members" => %{"RecordDetail" => %{"shape" => "RecordDetail"}}, "type" => "structure"}, "DisassociateTagOptionFromResourceInput" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "TagOptionId" => %{"shape" => "TagOptionId"}}, "required" => ["ResourceId", "TagOptionId"], "type" => "structure"}, "DisassociateTagOptionFromResourceOutput" => %{"members" => %{}, "type" => "structure"}, "ResourceDetails" => %{"member" => %{"shape" => "ResourceDetail"}, "type" => "list"}, "Principals" => %{"member" => %{"shape" => "Principal"}, "type" => "list"}, "ListLaunchPathsInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["ProductId"], "type" => "structure"}, "ListRecordHistorySearchFilter" => %{"members" => %{"Key" => %{"shape" => "SearchFilterKey"}, "Value" => %{"shape" => "SearchFilterValue"}}, "type" => "structure"}, "SearchProductsAsAdminInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Filters" => %{"shape" => "ProductViewFilters"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "PortfolioId" => %{"shape" => "Id"}, "ProductSource" => %{"shape" => "ProductSource"}, "SortBy" => %{"shape" => "ProductViewSortBy"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "ProvisionedProductNameOrArn" => %{"max" => 1224, "min" => 1, "pattern" => "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}", "type" => "string"}, "ProvisioningArtifactInfo" => %{"key" => %{"shape" => "ProvisioningArtifactInfoKey"}, "max" => 100, "min" => 1, "type" => "map", "value" => %{"shape" => "ProvisioningArtifactInfoValue"}}, "DescribePortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "ProductViewName" => %{"type" => "string"}, "SortOrder" => %{"enum" => ["ASCENDING", "DESCENDING"], "type" => "string"}, "AssociateTagOptionWithResourceOutput" => %{"members" => %{}, "type" => "structure"}, "ProductViewAggregationType" => %{"type" => "string"}, "DescribeConstraintOutput" => %{"members" => %{"ConstraintDetail" => %{"shape" => "ConstraintDetail"}, "ConstraintParameters" => %{"shape" => "ConstraintParameters"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "TagOptionActive" => %{"type" => "boolean"}, "DescribeConstraintInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "ListResourcesForTagOptionOutput" => %{"members" => %{"PageToken" => %{"shape" => "PageToken"}, "ResourceDetails" => %{"shape" => "ResourceDetails"}}, "type" => "structure"}, "ResourceInUseException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DisassociateProductFromPortfolioOutput" => %{"members" => %{}, "type" => "structure"}, "NotificationArn" => %{"max" => 1224, "min" => 1, "pattern" => "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}", "type" => "string"}, "ProductViewDistributor" => %{"type" => "string"}, "ProductViewOwner" => %{"type" => "string"}, "ListTagOptionsOutput" => %{"members" => %{"PageToken" => %{"shape" => "PageToken"}, "TagOptionDetails" => %{"shape" => "TagOptionDetails"}}, "type" => "structure"}, "LastRequestId" => %{"type" => "string"}, "SourceProvisioningArtifactPropertiesMap" => %{"key" => %{"shape" => "ProvisioningArtifactPropertyName"}, "type" => "map", "value" => %{"shape" => "ProvisioningArtifactPropertyValue"}}, "AccountId" => %{"pattern" => "^[0-9]{12}$", "type" => "string"}, "RecordTags" => %{"max" => 50, "member" => %{"shape" => "RecordTag"}, "type" => "list"}, "DescribeProvisioningArtifactInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "ProductId" => %{"shape" => "Id"}, "ProvisioningArtifactId" => %{"shape" => "Id"}, "Verbose" => %{"shape" => "Verbose"}}, "required" => ["ProvisioningArtifactId", "ProductId"], "type" => "structure"}, "RecordDetails" => %{"member" => %{"shape" => "RecordDetail"}, "type" => "list"}, "RecordOutputs" => %{"member" => %{"shape" => "RecordOutput"}, "type" => "list"}, "DescribeProductAsAdminInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "PrincipalType" => %{"enum" => ["IAM"], "type" => "string"}, "ProvisioningArtifactParameters" => %{"member" => %{"shape" => "ProvisioningArtifactParameter"}, "type" => "list"}, "UpdatedTime" => %{"type" => "timestamp"}, "SearchProductsOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "ProductViewAggregations" => %{"shape" => "ProductViewAggregations"}, "ProductViewSummaries" => %{"shape" => "ProductViewSummaries"}}, "type" => "structure"}, "ProvisioningArtifacts" => %{"member" => %{"shape" => "ProvisioningArtifact"}, "type" => "list"}, "RecordTagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "type" => "string"}, "SearchProductsInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Filters" => %{"shape" => "ProductViewFilters"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "SortBy" => %{"shape" => "ProductViewSortBy"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "ParameterValue" => %{"max" => 4096, "type" => "string"}, "CreateTagOptionOutput" => %{"members" => %{"TagOptionDetail" => %{"shape" => "TagOptionDetail"}}, "type" => "structure"}, "UsageInstruction" => %{"members" => %{"Type" => %{"shape" => "InstructionType"}, "Value" => %{"shape" => "InstructionValue"}}, "type" => "structure"}, "CreateProductOutput" => %{"members" => %{"ProductViewDetail" => %{"shape" => "ProductViewDetail"}, "ProvisioningArtifactDetail" => %{"shape" => "ProvisioningArtifactDetail"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "HasDefaultPath" => %{"type" => "boolean"}, "ProvisioningArtifactProperties" => %{"members" => %{"Description" => %{"shape" => "ProvisioningArtifactDescription"}, "Info" => %{"shape" => "ProvisioningArtifactInfo"}, "Name" => %{"shape" => "ProvisioningArtifactName"}, "Type" => %{"shape" => "ProvisioningArtifactType"}}, "required" => ["Info"], "type" => "structure"}, "DuplicateResourceException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "Description" => %{"type" => "string"}, "UpdateConstraintInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Description" => %{"shape" => "ConstraintDescription"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "ProvisionedProductStatus" => %{"enum" => ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR"], "type" => "string"}, "ConstraintDetail" => %{"members" => %{"ConstraintId" => %{"shape" => "Id"}, "Description" => %{"shape" => "ConstraintDescription"}, "Owner" => %{"shape" => "AccountId"}, "Type" => %{"shape" => "ConstraintType"}}, "type" => "structure"}, "CreateTagOptionInput" => %{"members" => %{"Key" => %{"shape" => "TagOptionKey"}, "Value" => %{"shape" => "TagOptionValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "ErrorCode" => %{"type" => "string"}, "AssociateTagOptionWithResourceInput" => %{"members" => %{"ResourceId" => %{"shape" => "ResourceId"}, "TagOptionId" => %{"shape" => "TagOptionId"}}, "required" => ["ResourceId", "TagOptionId"], "type" => "structure"}, "DescribeCopyProductStatusOutput" => %{"members" => %{"CopyProductStatus" => %{"shape" => "CopyProductStatus"}, "StatusDetail" => %{"shape" => "StatusDetail"}, "TargetProductId" => %{"shape" => "Id"}}, "type" => "structure"}, "DescribeProductViewOutput" => %{"members" => %{"ProductViewSummary" => %{"shape" => "ProductViewSummary"}, "ProvisioningArtifacts" => %{"shape" => "ProvisioningArtifacts"}}, "type" => "structure"}, "PageToken" => %{"pattern" => "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*", "type" => "string"}, "ResourceARN" => %{"max" => 150, "min" => 1, "type" => "string"}, "AcceptPortfolioShareOutput" => %{"members" => %{}, "type" => "structure"}, "TagOptionNotMigratedException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "PortfolioDisplayName" => %{"max" => 100, "min" => 1, "type" => "string"}, "AccessLevelFilter" => %{"members" => %{"Key" => %{"shape" => "AccessLevelFilterKey"}, "Value" => %{"shape" => "AccessLevelFilterValue"}}, "type" => "structure"}, "ResourceDetailId" => %{"type" => "string"}, "ProvisionedProductName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9][a-zA-Z0-9._-]*", "type" => "string"}, "SupportDescription" => %{"type" => "string"}, "CreatePortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Description" => %{"shape" => "PortfolioDescription"}, "DisplayName" => %{"shape" => "PortfolioDisplayName"}, "IdempotencyToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "ProviderName" => %{"shape" => "ProviderName"}, "Tags" => %{"shape" => "AddTags"}}, "required" => ["DisplayName", "ProviderName", "IdempotencyToken"], "type" => "structure"}, "Tags" => %{"max" => 50, "member" => %{"shape" => "Tag"}, "type" => "list"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "DefaultValue" => %{"type" => "string"}, "CreatePortfolioOutput" => %{"members" => %{"PortfolioDetail" => %{"shape" => "PortfolioDetail"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "CopyOption" => %{"enum" => ["CopyTags"], "type" => "string"}, "TagOptionValue" => %{"max" => 256, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "DescribeProductOutput" => %{"members" => %{"ProductViewSummary" => %{"shape" => "ProductViewSummary"}, "ProvisioningArtifacts" => %{"shape" => "ProvisioningArtifacts"}}, "type" => "structure"}, "DeletePortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "DescribeProvisionedProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "UpdatePortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AddTags" => %{"shape" => "AddTags"}, "Description" => %{"shape" => "PortfolioDescription"}, "DisplayName" => %{"shape" => "PortfolioDisplayName"}, "Id" => %{"shape" => "Id"}, "ProviderName" => %{"shape" => "ProviderName"}, "RemoveTags" => %{"shape" => "TagKeys"}}, "required" => ["Id"], "type" => "structure"}, "DisassociatePrincipalFromPortfolioOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeProvisioningParametersInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PathId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "ProvisioningArtifactId" => %{"shape" => "Id"}}, "required" => ["ProductId", "ProvisioningArtifactId"], "type" => "structure"}, "ProductViewDetails" => %{"member" => %{"shape" => "ProductViewDetail"}, "type" => "list"}, "DescribeProvisioningParametersOutput" => %{"members" => %{"ConstraintSummaries" => %{"shape" => "ConstraintSummaries"}, "ProvisioningArtifactParameters" => %{"shape" => "ProvisioningArtifactParameters"}, "TagOptions" => %{"shape" => "TagOptionSummaries"}, "UsageInstructions" => %{"shape" => "UsageInstructions"}}, "type" => "structure"}, "ProvisionedProductDetail" => %{"members" => %{"Arn" => %{"shape" => "ProvisionedProductNameOrArn"}, "CreatedTime" => %{"shape" => "CreatedTime"}, "Id" => %{"shape" => "ProvisionedProductId"}, "IdempotencyToken" => %{"shape" => "IdempotencyToken"}, "LastRecordId" => %{"shape" => "LastRequestId"}, "Name" => %{"shape" => "ProvisionedProductNameOrArn"}, "Status" => %{"shape" => "ProvisionedProductStatus"}, "StatusMessage" => %{"shape" => "ProvisionedProductStatusMessage"}, "Type" => %{"shape" => "ProvisionedProductType"}}, "type" => "structure"}, "ListAcceptedPortfolioSharesInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "DescribeRecordOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "RecordDetail" => %{"shape" => "RecordDetail"}, "RecordOutputs" => %{"shape" => "RecordOutputs"}}, "type" => "structure"}, "SearchProductsAsAdminOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "ProductViewDetails" => %{"shape" => "ProductViewDetails"}}, "type" => "structure"}, "LaunchPathSummary" => %{"members" => %{"ConstraintSummaries" => %{"shape" => "ConstraintSummaries"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "PortfolioName"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "ProvisioningArtifactInfoValue" => %{"type" => "string"}, "ListConstraintsForPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "PortfolioId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["PortfolioId"], "type" => "structure"}, "ProvisioningArtifactDescription" => %{"type" => "string"}, "DescribeCopyProductStatusInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "CopyProductToken" => %{"shape" => "Id"}}, "required" => ["CopyProductToken"], "type" => "structure"}, "UpdatePortfolioOutput" => %{"members" => %{"PortfolioDetail" => %{"shape" => "PortfolioDetail"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "TagOptionSummaries" => %{"member" => %{"shape" => "TagOptionSummary"}, "type" => "list"}, "ApproximateCount" => %{"type" => "integer"}, "UpdateProductOutput" => %{"members" => %{"ProductViewDetail" => %{"shape" => "ProductViewDetail"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "NotificationArns" => %{"max" => 5, "member" => %{"shape" => "NotificationArn"}, "type" => "list"}, "ConstraintDetails" => %{"member" => %{"shape" => "ConstraintDetail"}, "type" => "list"}, "ProductViewFilters" => %{"key" => %{"shape" => "ProductViewFilterBy"}, "type" => "map", "value" => %{"shape" => "ProductViewFilterValues"}}, "RecordErrors" => %{"member" => %{"shape" => "RecordError"}, "type" => "list"}, "TagValue" => %{"max" => 256, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "AssociatePrincipalWithPortfolioOutput" => %{"members" => %{}, "type" => "structure"}, "ProvisioningArtifactDetail" => %{"members" => %{"CreatedTime" => %{"shape" => "CreationTime"}, "Description" => %{"shape" => "ProvisioningArtifactName"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "ProvisioningArtifactName"}, "Type" => %{"shape" => "ProvisioningArtifactType"}}, "type" => "structure"}, "AssociatePrincipalWithPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}, "PrincipalARN" => %{"shape" => "PrincipalARN"}, "PrincipalType" => %{"shape" => "PrincipalType"}}, "required" => ["PortfolioId", "PrincipalARN", "PrincipalType"], "type" => "structure"}, "CreateConstraintOutput" => %{"members" => %{"ConstraintDetail" => %{"shape" => "ConstraintDetail"}, "ConstraintParameters" => %{"shape" => "ConstraintParameters"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "DescribeProductAsAdminOutput" => %{"members" => %{"ProductViewDetail" => %{"shape" => "ProductViewDetail"}, "ProvisioningArtifactSummaries" => %{"shape" => "ProvisioningArtifactSummaries"}, "TagOptions" => %{"shape" => "TagOptionDetails"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "CreateProvisioningArtifactInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "IdempotencyToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "Parameters" => %{"shape" => "ProvisioningArtifactProperties"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["ProductId", "Parameters", "IdempotencyToken"], "type" => "structure"}, "ListProvisioningArtifactsInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["ProductId"], "type" => "structure"}, "DeleteConstraintInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "ScanProvisionedProductsOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "ProvisionedProducts" => %{"shape" => "ProvisionedProductDetails"}}, "type" => "structure"}, "ProductViewDetail" => %{"members" => %{"CreatedTime" => %{"shape" => "CreatedTime"}, "ProductARN" => %{"shape" => "ResourceARN"}, "ProductViewSummary" => %{"shape" => "ProductViewSummary"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "AccessLevelFilterValue" => %{"type" => "string"}, "TerminateProvisionedProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "IgnoreErrors" => %{"shape" => "IgnoreErrors"}, "ProvisionedProductId" => %{"shape" => "Id"}, "ProvisionedProductName" => %{"shape" => "ProvisionedProductNameOrArn"}, "TerminateToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}}, "required" => ["TerminateToken"], "type" => "structure"}, "ProvisionedProductType" => %{"type" => "string"}, "ConstraintDescription" => %{"max" => 2000, "type" => "string"}, "ListResourcesForTagOptionInput" => %{"members" => %{"PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "ResourceType" => %{"shape" => "ResourceType"}, "TagOptionId" => %{"shape" => "TagOptionId"}}, "required" => ["TagOptionId"], "type" => "structure"}, "ResourceDetail" => %{"members" => %{"ARN" => %{"shape" => "ResourceDetailARN"}, "CreatedTime" => %{"shape" => "ResourceDetailCreatedTime"}, "Description" => %{"shape" => "ResourceDetailDescription"}, "Id" => %{"shape" => "ResourceDetailId"}, "Name" => %{"shape" => "ResourceDetailName"}}, "type" => "structure"}, "ProductViewSummary" => %{"members" => %{"Distributor" => %{"shape" => "ProductViewDistributor"}, "HasDefaultPath" => %{"shape" => "HasDefaultPath"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "ProductViewName"}, "Owner" => %{"shape" => "ProductViewOwner"}, "ProductId" => %{"shape" => "Id"}, "ShortDescription" => %{"shape" => "ProductViewShortDescription"}, "SupportDescription" => %{"shape" => "SupportDescription"}, "SupportEmail" => %{"shape" => "SupportEmail"}, "SupportUrl" => %{"shape" => "SupportUrl"}, "Type" => %{"shape" => "ProductType"}}, "type" => "structure"}, "TagOptionDetails" => %{"member" => %{"shape" => "TagOptionDetail"}, "type" => "list"}, "ResourceDetailARN" => %{"type" => "string"}, "UpdateProvisionedProductOutput" => %{"members" => %{"RecordDetail" => %{"shape" => "RecordDetail"}}, "type" => "structure"}, "RecordTagValue" => %{"max" => 256, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "type" => "string"}, "ParameterKey" => %{"max" => 1000, "min" => 1, "type" => "string"}, "ProductViewAggregationValues" => %{"member" => %{"shape" => "ProductViewAggregationValue"}, "type" => "list"}, "UpdateProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AddTags" => %{"shape" => "AddTags"}, "Description" => %{"shape" => "ProductViewShortDescription"}, "Distributor" => %{"shape" => "ProductViewOwner"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "ProductViewName"}, "Owner" => %{"shape" => "ProductViewOwner"}, "RemoveTags" => %{"shape" => "TagKeys"}, "SupportDescription" => %{"shape" => "SupportDescription"}, "SupportEmail" => %{"shape" => "SupportEmail"}, "SupportUrl" => %{"shape" => "SupportUrl"}}, "required" => ["Id"], "type" => "structure"}, "PrincipalARN" => %{"max" => 1000, "min" => 1, "type" => "string"}, "ProvisioningArtifactInfoKey" => %{"type" => "string"}, "ListAcceptedPortfolioSharesOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "PortfolioDetails" => %{"shape" => "PortfolioDetails"}}, "type" => "structure"}, "InvalidStateException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ProductSource" => %{"enum" => ["ACCOUNT"], "type" => "string"}, "ProductViewFilterValues" => %{"member" => %{"shape" => "ProductViewFilterValue"}, "type" => "list"}, "ResourceDetailName" => %{"type" => "string"}, "ListPortfoliosForProductOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "PortfolioDetails" => %{"shape" => "PortfolioDetails"}}, "type" => "structure"}, "TagOptionDetail" => %{"members" => %{"Active" => %{"shape" => "TagOptionActive"}, "Id" => %{"shape" => "TagOptionId"}, "Key" => %{"shape" => "TagOptionKey"}, "Value" => %{"shape" => "TagOptionValue"}}, "type" => "structure"}, "ProvisioningArtifactSummaries" => %{"member" => %{"shape" => "ProvisioningArtifactSummary"}, "type" => "list"}, "ProvisioningArtifactDetails" => %{"member" => %{"shape" => "ProvisioningArtifactDetail"}, "type" => "list"}, "LimitExceededException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "TagOptionKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "ResourceId" => %{"type" => "string"}, "UpdateTagOptionInput" => %{"members" => %{"Active" => %{"shape" => "TagOptionActive"}, "Id" => %{"shape" => "TagOptionId"}, "Value" => %{"shape" => "TagOptionValue"}}, "required" => ["Id"], "type" => "structure"}, "TagOptionValues" => %{"member" => %{"shape" => "TagOptionValue"}, "type" => "list"}, "ProvisionedProductId" => %{"type" => "string"}, "ProvisioningArtifactPropertyName" => %{"enum" => ["Id"], "type" => "string"}, "ConstraintSummary" => %{"members" => %{"Description" => %{"shape" => "ConstraintDescription"}, "Type" => %{"shape" => "ConstraintType"}}, "type" => "structure"}, "Status" => %{"enum" => ["AVAILABLE", "CREATING", "FAILED"], "type" => "string"}, "CreateProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Description" => %{"shape" => "ProductViewShortDescription"}, "Distributor" => %{"shape" => "ProductViewOwner"}, "IdempotencyToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "Name" => %{"shape" => "ProductViewName"}, "Owner" => %{"shape" => "ProductViewOwner"}, "ProductType" => %{"shape" => "ProductType"}, "ProvisioningArtifactParameters" => %{"shape" => "ProvisioningArtifactProperties"}, "SupportDescription" => %{"shape" => "SupportDescription"}, "SupportEmail" => %{"shape" => "SupportEmail"}, "SupportUrl" => %{"shape" => "SupportUrl"}, "Tags" => %{"shape" => "AddTags"}}, "required" => ["Name", "Owner", "ProductType", "ProvisioningArtifactParameters", "IdempotencyToken"], "type" => "structure"}, "UpdateTagOptionOutput" => %{"members" => %{"TagOptionDetail" => %{"shape" => "TagOptionDetail"}}, "type" => "structure"}, "RecordTag" => %{"members" => %{"Key" => %{"shape" => "RecordTagKey"}, "Value" => %{"shape" => "RecordTagValue"}}, "type" => "structure"}, "ListRecordHistoryOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "RecordDetails" => %{"shape" => "RecordDetails"}}, "type" => "structure"}, "DeleteProvisioningArtifactOutput" => %{"members" => %{}, "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "DisassociateProductFromPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["ProductId", "PortfolioId"], "type" => "structure"}, "DescribeProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "ListRecordHistoryInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AccessLevelFilter" => %{"shape" => "AccessLevelFilter"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "SearchFilter" => %{"shape" => "ListRecordHistorySearchFilter"}}, "type" => "structure"}, "PortfolioDetails" => %{"member" => %{"shape" => "PortfolioDetail"}, "type" => "list"}, "OutputKey" => %{"type" => "string"}, "UpdateProvisioningParameters" => %{"member" => %{"shape" => "UpdateProvisioningParameter"}, "type" => "list"}, "ProvisioningArtifactName" => %{"type" => "string"}, "ProductType" => %{"enum" => ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"], "type" => "string"}, "ConstraintParameters" => %{"type" => "string"}, "SupportUrl" => %{"type" => "string"}, "RecordStatus" => %{"enum" => ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"], "type" => "string"}, "CreatedTime" => %{"type" => "timestamp"}, "CreatePortfolioShareInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AccountId" => %{"shape" => "AccountId"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId", "AccountId"], "type" => "structure"}, "ProductViewAggregations" => %{"key" => %{"shape" => "ProductViewAggregationType"}, "type" => "map", "value" => %{"shape" => "ProductViewAggregationValues"}}, "UpdateProvisioningParameter" => %{"members" => %{"Key" => %{"shape" => "ParameterKey"}, "UsePreviousValue" => %{"shape" => "UsePreviousValue"}, "Value" => %{"shape" => "ParameterValue"}}, "type" => "structure"}, "TagOptionId" => %{"max" => 100, "min" => 1, "type" => "string"}, "ListPortfoliosForProductInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "ProductId" => %{"shape" => "Id"}}, "required" => ["ProductId"], "type" => "structure"}, "StatusDetail" => %{"type" => "string"}, "LaunchPathSummaries" => %{"member" => %{"shape" => "LaunchPathSummary"}, "type" => "list"}, "ListLaunchPathsOutput" => %{"members" => %{"LaunchPathSummaries" => %{"shape" => "LaunchPathSummaries"}, "NextPageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "Principal" => %{"members" => %{"PrincipalARN" => %{"shape" => "PrincipalARN"}, "PrincipalType" => %{"shape" => "PrincipalType"}}, "type" => "structure"}, "AcceptLanguage" => %{"type" => "string"}, "AssociateProductWithPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "SourcePortfolioId" => %{"shape" => "Id"}}, "required" => ["ProductId", "PortfolioId"], "type" => "structure"}, "DescribeRecordInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}}, "required" => ["Id"], "type" => "structure"}, "DeleteProductOutput" => %{"members" => %{}, "type" => "structure"}, "RecordDetail" => %{"members" => %{"CreatedTime" => %{"shape" => "CreatedTime"}, "PathId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "ProvisionedProductId" => %{"shape" => "Id"}, "ProvisionedProductName" => %{"shape" => "ProvisionedProductName"}, "ProvisionedProductType" => %{"shape" => "ProvisionedProductType"}, "ProvisioningArtifactId" => %{"shape" => "Id"}, "RecordErrors" => %{"shape" => "RecordErrors"}, "RecordId" => %{"shape" => "Id"}, "RecordTags" => %{"shape" => "RecordTags"}, "RecordType" => %{"shape" => "RecordType"}, "Status" => %{"shape" => "RecordStatus"}, "UpdatedTime" => %{"shape" => "UpdatedTime"}}, "type" => "structure"}, "ProductArn" => %{"max" => 1224, "min" => 1, "pattern" => "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}", "type" => "string"}, "ProviderName" => %{"max" => 20, "min" => 1, "type" => "string"}, "ProvisionedProductDetails" => %{"member" => %{"shape" => "ProvisionedProductDetail"}, "type" => "list"}, "OutputValue" => %{"type" => "string"}, "ProductViewAggregationValue" => %{"members" => %{"ApproximateCount" => %{"shape" => "ApproximateCount"}, "Value" => %{"shape" => "AttributeValue"}}, "type" => "structure"}, "SupportEmail" => %{"type" => "string"}, "CreateConstraintInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Description" => %{"shape" => "ConstraintDescription"}, "IdempotencyToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "Parameters" => %{"shape" => "ConstraintParameters"}, "PortfolioId" => %{"shape" => "Id"}, "ProductId" => %{"shape" => "Id"}, "Type" => %{"shape" => "ConstraintType"}}, "required" => ["PortfolioId", "ProductId", "Parameters", "Type", "IdempotencyToken"], "type" => "structure"}, "ListTagOptionsInput" => %{"members" => %{"Filters" => %{"shape" => "ListTagOptionsFilters"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "ProvisioningParameters" => %{"member" => %{"shape" => "ProvisioningParameter"}, "type" => "list"}, "ListPortfoliosOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "PortfolioDetails" => %{"shape" => "PortfolioDetails"}}, "type" => "structure"}, "AttributeValue" => %{"type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "ProvisioningArtifactType" => %{"enum" => ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"], "type" => "string"}, "DisassociatePrincipalFromPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}, "PrincipalARN" => %{"shape" => "PrincipalARN"}}, "required" => ["PortfolioId", "PrincipalARN"], "type" => "structure"}, "ProvisionProductOutput" => %{"members" => %{"RecordDetail" => %{"shape" => "RecordDetail"}}, "type" => "structure"}, "NoEcho" => %{"type" => "boolean"}, "DescribePortfolioOutput" => %{"members" => %{"PortfolioDetail" => %{"shape" => "PortfolioDetail"}, "TagOptions" => %{"shape" => "TagOptionDetails"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "ListPortfolioAccessInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId"], "type" => "structure"}, "UsePreviousValue" => %{"type" => "boolean"}, "DescribeProvisioningArtifactOutput" => %{"members" => %{"Info" => %{"shape" => "ProvisioningArtifactInfo"}, "ProvisioningArtifactDetail" => %{"shape" => "ProvisioningArtifactDetail"}, "Status" => %{"shape" => "Status"}}, "type" => "structure"}, "ProvisioningArtifactSummary" => %{"members" => %{"CreatedTime" => %{"shape" => "ProvisioningArtifactCreatedTime"}, "Description" => %{"shape" => "ProvisioningArtifactDescription"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "ProvisioningArtifactName"}, "ProvisioningArtifactMetadata" => %{"shape" => "ProvisioningArtifactInfo"}}, "type" => "structure"}, "ProvisioningArtifactCreatedTime" => %{"type" => "timestamp"}, "RejectPortfolioShareOutput" => %{"members" => %{}, "type" => "structure"}, "RecordError" => %{"members" => %{"Code" => %{"shape" => "ErrorCode"}, "Description" => %{"shape" => "ErrorDescription"}}, "type" => "structure"}, "InvalidParametersException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "ProductViewFilterValue" => %{"type" => "string"}, "ProvisioningArtifact" => %{"members" => %{"CreatedTime" => %{"shape" => "ProvisioningArtifactCreatedTime"}, "Description" => %{"shape" => "ProvisioningArtifactDescription"}, "Id" => %{"shape" => "Id"}, "Name" => %{"shape" => "ProvisioningArtifactName"}}, "type" => "structure"}, "CopyProductStatus" => %{"enum" => ["SUCCEEDED", "IN_PROGRESS", "FAILED"], "type" => "string"}, "Verbose" => %{"type" => "boolean"}, "ConstraintSummaries" => %{"member" => %{"shape" => "ConstraintSummary"}, "type" => "list"}, "DeletePortfolioOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeProductViewInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Id" => %{"shape" => "Id"}}, "required" => ["Id"], "type" => "structure"}, "PortfolioDescription" => %{"max" => 2000, "type" => "string"}, "CreatePortfolioShareOutput" => %{"members" => %{}, "type" => "structure"}, "ListPrincipalsForPortfolioInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId"], "type" => "structure"}, "AccessLevelFilterKey" => %{"enum" => ["Account", "Role", "User"], "type" => "string"}, "AccountIds" => %{"member" => %{"shape" => "AccountId"}, "type" => "list"}, "InstructionValue" => %{"type" => "string"}, "DeletePortfolioShareInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "AccountId" => %{"shape" => "AccountId"}, "PortfolioId" => %{"shape" => "Id"}}, "required" => ["PortfolioId", "AccountId"], "type" => "structure"}, "ListPortfoliosInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "PageSize" => %{"shape" => "PageSize"}, "PageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "ErrorDescription" => %{"type" => "string"}, "DeleteConstraintOutput" => %{"members" => %{}, "type" => "structure"}, "ProvisioningArtifactParameter" => %{"members" => %{"DefaultValue" => %{"shape" => "DefaultValue"}, "Description" => %{"shape" => "Description"}, "IsNoEcho" => %{"shape" => "NoEcho"}, "ParameterConstraints" => %{"shape" => "ParameterConstraints"}, "ParameterKey" => %{"shape" => "ParameterKey"}, "ParameterType" => %{"shape" => "ParameterType"}}, "type" => "structure"}, "RecordType" => %{"type" => "string"}, "UpdateProvisioningArtifactInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "Description" => %{"shape" => "ProvisioningArtifactDescription"}, "Name" => %{"shape" => "ProvisioningArtifactName"}, "ProductId" => %{"shape" => "Id"}, "ProvisioningArtifactId" => %{"shape" => "Id"}}, "required" => ["ProductId", "ProvisioningArtifactId"], "type" => "structure"}, "ListPrincipalsForPortfolioOutput" => %{"members" => %{"NextPageToken" => %{"shape" => "PageToken"}, "Principals" => %{"shape" => "Principals"}}, "type" => "structure"}, "ProductViewSummaries" => %{"member" => %{"shape" => "ProductViewSummary"}, "type" => "list"}, "InstructionType" => %{"type" => "string"}, "IdempotencyToken" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9][a-zA-Z0-9_-]*", "type" => "string"}, "SearchFilterKey" => %{"type" => "string"}, "ListPortfolioAccessOutput" => %{"members" => %{"AccountIds" => %{"shape" => "AccountIds"}, "NextPageToken" => %{"shape" => "PageToken"}}, "type" => "structure"}, "DeleteProvisioningArtifactInput" => %{"members" => %{"AcceptLanguage" => %{"shape" => "AcceptLanguage"}, "ProductId" => %{"shape" => "Id"}, "ProvisioningArtifactId" => %{"shape" => "Id"}}, "required" => ["ProductId", "ProvisioningArtifactId"], "type" => "structure"}, "SearchFilterValue" => %{"type" => "string"}, "ProvisioningParameter" => %{"members" => %{"Key" => %{"shape" => "ParameterKey"}, "Value" => %{"shape" => "ParameterValue"}}, "type" => "structure"}, "ProductViewFilterBy" => %{"enum" => ["FullTextSearch", "Owner", "ProductType", "SourceProductId"], "type" => "string"}, "ConstraintType" => %{"max" => 1024, "min" => 1, "type" => "string"}}
  end
end