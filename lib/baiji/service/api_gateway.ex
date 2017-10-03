defmodule Baiji.ApiGateway do
  @moduledoc """
  Amazon API Gateway

  Amazon API Gateway helps developers deliver robust, secure, and scalable
  mobile and web application back ends. Amazon API Gateway allows developers
  to securely connect mobile and web applications to APIs that run on AWS
  Lambda, Amazon EC2, or other publicly addressable web services that are
  hosted outside of AWS.
  """
  
  @doc """
  Changes information about an `ApiKey` resource.
  """
  def update_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "UpdateApiKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Lists information about a collection of `Resource` resources.
  """
  def get_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources",
      input:            input,
      options:          options,
      action:           "GetResources",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes the `DomainName` resource.
  """
  def delete_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "DeleteDomainName",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Gets information about a `Deployments` collection.
  """
  def get_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/deployments",
      input:            input,
      options:          options,
      action:           "GetDeployments",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_sdk_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/sdktypes",
      input:            input,
      options:          options,
      action:           "GetSdkTypes",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Updates a usage plan of a given plan Id.
  """
  def update_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "UpdateUsagePlan",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Exports a deployed version of a `RestApi` in a specified format.
  """
  def get_export(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}",
      input:            input,
      options:          options,
      action:           "GetExport",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Simulate the execution of an `Authorizer` in your `RestApi` with headers,
  parameters, and an incoming request body.

  <div class="seeAlso"> [Enable custom
  authorizers](http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html)
  </div>
  """
  def test_invoke_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "TestInvokeAuthorizer",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Updates an existing `Method` resource.
  """
  def update_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "UpdateMethod",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Generates a client SDK for a `RestApi` and `Stage`.
  """
  def get_sdk(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}",
      input:            input,
      options:          options,
      action:           "GetSdk",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes a `RequestValidator` of a given `RestApi`.
  """
  def delete_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "DeleteRequestValidator",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Represents a get integration response.
  """
  def get_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "GetIntegrationResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Represents a collection of `BasePathMapping` resources.
  """
  def get_base_path_mappings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}/basepathmappings",
      input:            input,
      options:          options,
      action:           "GetBasePathMappings",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Import API keys from an external source, such as a CSV-formatted file.
  """
  def import_api_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys?mode=import",
      input:            input,
      options:          options,
      action:           "ImportApiKeys",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a `Stage` resource.
  """
  def get_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "GetStage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Describe a `BasePathMapping` resource.
  """
  def get_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "GetBasePathMapping",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def import_documentation_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "ImportDocumentationParts",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Clears any customization of a `GatewayResponse` of a specified response
  type on the given `RestApi` and resets it with the default settings.
  """
  def delete_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "DeleteGatewayResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Describe an existing `Authorizers` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)</div>
  """
  def get_authorizers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers",
      input:            input,
      options:          options,
      action:           "GetAuthorizers",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets information about one or more `Stage` resources.
  """
  def get_stages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages",
      input:            input,
      options:          options,
      action:           "GetStages",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Changes information about the `DomainName` resource.
  """
  def update_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "UpdateDomainName",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def create_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/versions",
      input:            input,
      options:          options,
      action:           "CreateDocumentationVersion",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets information about the current `Account` resource.
  """
  def get_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/account",
      input:            input,
      options:          options,
      action:           "GetAccount",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Lists the `RestApis` resources for your collection.
  """
  def get_rest_apis(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis",
      input:            input,
      options:          options,
      action:           "GetRestApis",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Represents a put integration.
  """
  def put_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "PutIntegrationResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Changes information about an `ClientCertificate` resource.
  """
  def update_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "UpdateClientCertificate",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Gets a `RequestValidator` of a given `RestApi`.
  """
  def get_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "GetRequestValidator",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes the `ClientCertificate` resource.
  """
  def delete_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "DeleteClientCertificate",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Represents an update integration response.
  """
  def update_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "UpdateIntegrationResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Represents a delete integration.
  """
  def delete_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "DeleteIntegration",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Changes information about the current `Account` resource.
  """
  def update_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/account",
      input:            input,
      options:          options,
      action:           "UpdateAccount",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def update_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "UpdateDocumentationPart",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_documentation_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "GetDocumentationParts",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Flushes all authorizer cache entries on a stage.
  """
  def flush_stage_authorizers_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers",
      input:            input,
      options:          options,
      action:           "FlushStageAuthorizersCache",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def delete_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "DeleteDocumentationVersion",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_documentation_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/versions",
      input:            input,
      options:          options,
      action:           "GetDocumentationVersions",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Changes information about a `Deployment` resource.
  """
  def update_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "UpdateDeployment",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Creates a `Deployment` resource, which makes a specified `RestApi` callable
  over the internet.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/deployments",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Creates a new `BasePathMapping` resource.
  """
  def create_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}/basepathmappings",
      input:            input,
      options:          options,
      action:           "CreateBasePathMapping",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "GetDocumentationVersion",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Updates a `RequestValidator` of a given `RestApi`.
  """
  def update_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "UpdateRequestValidator",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Grants a temporary extension to the remaining quota of a usage plan
  associated with a specified API key.
  """
  def update_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/keys/{keyId}/usage",
      input:            input,
      options:          options,
      action:           "UpdateUsage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def create_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "CreateDocumentationPart",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets a usage plan of a given plan identifier.
  """
  def get_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "GetUsagePlan",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)</div>
  """
  def delete_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "DeleteAuthorizer",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_sdk_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/sdktypes/{sdktype_id}",
      input:            input,
      options:          options,
      action:           "GetSdkType",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes a `Deployment` resource. Deleting a deployment will only succeed if
  there are no `Stage` resources associated with it.
  """
  def delete_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "DeleteDeployment",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Creates a new domain name.
  """
  def create_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames",
      input:            input,
      options:          options,
      action:           "CreateDomainName",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets a usage plan key of a given key identifier.
  """
  def get_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/keys/{keyId}",
      input:            input,
      options:          options,
      action:           "GetUsagePlanKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Changes information about a `Resource` resource.
  """
  def update_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "UpdateResource",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Describe an existing `Method` resource.
  """
  def get_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "GetMethod",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes a usage plan key and remove the underlying API key from the
  associated usage plan.
  """
  def delete_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/keys/{keyId}",
      input:            input,
      options:          options,
      action:           "DeleteUsagePlanKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Describes existing `Models` defined for a `RestApi` resource.
  """
  def get_models(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models",
      input:            input,
      options:          options,
      action:           "GetModels",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes a `Resource` resource.
  """
  def delete_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "DeleteResource",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Lists the `RestApi` resource in the collection.
  """
  def get_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "GetRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Creates a customization of a `GatewayResponse` of a specified response type
  and status code on the given `RestApi`.
  """
  def put_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "PutGatewayResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Adds a new `Authorizer` resource to an existing `RestApi` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)</div>
  """
  def create_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers",
      input:            input,
      options:          options,
      action:           "CreateAuthorizer",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Sets up a method's integration.
  """
  def put_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "PutIntegration",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Deletes the `ApiKey` resource.
  """
  def delete_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "DeleteApiKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Changes information about a `Stage` resource.
  """
  def update_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "UpdateStage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Updates a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def update_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "UpdateGatewayResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Gets information about the current `ClientCertificate` resource.
  """
  def get_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "GetClientCertificate",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Updates an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)</div>
  """
  def update_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "UpdateAuthorizer",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Represents a delete integration response.
  """
  def delete_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "DeleteIntegrationResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Describes an existing model defined for a `RestApi` resource.
  """
  def get_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "GetModel",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Describes a `MethodResponse` resource.
  """
  def get_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "GetMethodResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets the `GatewayResponses` collection on the given `RestApi`. If an API
  developer has not added any definitions for gateway responses, the result
  will be the Amazon API Gateway-generated default `GatewayResponses`
  collection for the supported response types.
  """
  def get_gateway_responses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/gatewayresponses",
      input:            input,
      options:          options,
      action:           "GetGatewayResponses",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets the `RequestValidators` collection of a given `RestApi`.
  """
  def get_request_validators(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/requestvalidators",
      input:            input,
      options:          options,
      action:           "GetRequestValidators",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets information about the current `ApiKey` resource.
  """
  def get_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "GetApiKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Creates a new `RestApi` resource.
  """
  def create_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis",
      input:            input,
      options:          options,
      action:           "CreateRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Adds a `MethodResponse` to an existing `Method` resource.
  """
  def put_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "PutMethodResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Creates a `Resource` resource.
  """
  def create_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{parent_id}",
      input:            input,
      options:          options,
      action:           "CreateResource",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Changes information about a model.
  """
  def update_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "UpdateModel",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Represents an update integration.
  """
  def update_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "UpdateIntegration",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Simulate the execution of a `Method` in your `RestApi` with headers,
  parameters, and an incoming request body.
  """
  def test_invoke_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "TestInvokeMethod",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def get_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "GetGatewayResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  A feature of the Amazon API Gateway control service for updating an
  existing API with an input of external API definitions. The update can take
  the form of merging the supplied definition into the existing API or
  overwriting the existing API.
  """
  def put_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "PutRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Add a method to an existing `Resource` resource.
  """
  def put_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "PutMethod",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :put
    }
  end
  
  @doc """
  Creates a `ReqeustValidator` of a given `RestApi`.
  """
  def create_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/requestvalidators",
      input:            input,
      options:          options,
      action:           "CreateRequestValidator",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Represents a collection of `DomainName` resources.
  """
  def get_domain_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames",
      input:            input,
      options:          options,
      action:           "GetDomainNames",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Lists information about a resource.
  """
  def get_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "GetResource",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets information about a `Deployment` resource.
  """
  def get_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "GetDeployment",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes an existing `MethodResponse` resource.
  """
  def delete_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "DeleteMethodResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Deletes a `Stage` resource.
  """
  def delete_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "DeleteStage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Gets a collection of `ClientCertificate` resources.
  """
  def get_client_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/clientcertificates",
      input:            input,
      options:          options,
      action:           "GetClientCertificates",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Creates a new `Stage` resource that references a pre-existing `Deployment`
  for the API.
  """
  def create_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages",
      input:            input,
      options:          options,
      action:           "CreateStage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def update_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "UpdateDocumentationVersion",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.
  """
  def create_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans",
      input:            input,
      options:          options,
      action:           "CreateUsagePlan",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Adds a new `Model` resource to an existing `RestApi` resource.
  """
  def create_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models",
      input:            input,
      options:          options,
      action:           "CreateModel",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Deletes a model.
  """
  def delete_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "DeleteModel",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Changes information about the specified API.
  """
  def update_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "UpdateRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Generates a sample mapping template that can be used to transform a payload
  into the structure of a model.
  """
  def get_model_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/models/{model_name}/default_template",
      input:            input,
      options:          options,
      action:           "GetModelTemplate",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.
  """
  def get_usage_plan_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/keys",
      input:            input,
      options:          options,
      action:           "GetUsagePlanKeys",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Generates a `ClientCertificate` resource.
  """
  def generate_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/clientcertificates",
      input:            input,
      options:          options,
      action:           "GenerateClientCertificate",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets information about the current `ApiKeys` resource.
  """
  def get_api_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys",
      input:            input,
      options:          options,
      action:           "GetApiKeys",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Gets all the usage plans of the caller's account.
  """
  def get_usage_plans(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans",
      input:            input,
      options:          options,
      action:           "GetUsagePlans",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes the `BasePathMapping` resource.
  """
  def delete_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "DeleteBasePathMapping",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Describe an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)</div>
  """
  def get_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "GetAuthorizer",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL
  that can be called.
  """
  def get_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "GetDomainName",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Updates an existing `MethodResponse` resource.
  """
  def update_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "UpdateMethodResponse",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Changes information about the `BasePathMapping` resource.
  """
  def update_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "UpdateBasePathMapping",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :patch
    }
  end
  
  @doc """
  Create an `ApiKey` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)</div>
  """
  def create_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/apikeys",
      input:            input,
      options:          options,
      action:           "CreateApiKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Gets the usage data of a usage plan in a specified time interval.
  """
  def get_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/usage",
      input:            input,
      options:          options,
      action:           "GetUsage",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes the specified API.
  """
  def delete_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "DeleteRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Flushes a stage's cache.
  """
  def flush_stage_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/stages/{stage_name}/cache/data",
      input:            input,
      options:          options,
      action:           "FlushStageCache",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Represents a get integration.
  """
  def get_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "GetIntegration",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
  @doc """
  Deletes a usage plan of a given plan Id.
  """
  def delete_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "DeleteUsagePlan",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def delete_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "DeleteDocumentationPart",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
  Creates a usage plan key for adding an existing API key to a usage plan.
  """
  def create_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/usageplans/{usageplanId}/keys",
      input:            input,
      options:          options,
      action:           "CreateUsagePlanKey",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  A feature of the Amazon API Gateway control service for creating a new API
  from an external API definition file.
  """
  def import_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis?mode=import",
      input:            input,
      options:          options,
      action:           "ImportRestApi",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :post
    }
  end
  
  @doc """
  Deletes an existing `Method` resource.
  """
  def delete_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "DeleteMethod",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :delete
    }
  end
  
  @doc """
No Documentation Availabale
  """
  def get_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "apigateway",
      endpoint:         "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "GetDocumentationPart",
      
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      method:           :get
    }
  end
  
end