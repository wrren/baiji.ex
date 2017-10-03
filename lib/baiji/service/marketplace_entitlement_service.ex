defmodule Baiji.MarketplaceEntitlementService do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement
  Service API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of
  a customer to a given product. An entitlement represents capacity in a
  product owned by the customer. For example, a customer might own some
  number of users or seats in an SaaS application or some amount of data
  capacity in a multi-tenant database.

  **Getting Entitlement Records**

  <ul> <li> *GetEntitlements*- Gets the entitlements for a Marketplace
  product.

  </li> </ul>
  """
  
  @doc """
  GetEntitlements retrieves entitlement values for a given product. The
  results can be filtered based on customer identifier or product dimensions.
  """
  def get_entitlements(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "entitlement.marketplace",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetEntitlements",
      
      target_prefix:    "AWSMPEntitlementService",
      
      endpoint_prefix:  "entitlement.marketplace",
      type:             :json,
      version:          "2017-01-11",
      method:           :post
    }
  end
  
end