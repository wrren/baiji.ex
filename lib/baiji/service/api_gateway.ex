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
      path:             "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "UpdateApiKey",
      method:           :patch,
      input_shape:      "UpdateApiKeyRequest",
      output_shape:     "ApiKey",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists information about a collection of `Resource` resources.
  """
  def get_resources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources",
      input:            input,
      options:          options,
      action:           "GetResources",
      method:           :get,
      input_shape:      "GetResourcesRequest",
      output_shape:     "Resources",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the `DomainName` resource.
  """
  def delete_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "DeleteDomainName",
      method:           :delete,
      input_shape:      "DeleteDomainNameRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a `Deployments` collection.
  """
  def get_deployments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/deployments",
      input:            input,
      options:          options,
      action:           "GetDeployments",
      method:           :get,
      input_shape:      "GetDeploymentsRequest",
      output_shape:     "Deployments",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_sdk_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/sdktypes",
      input:            input,
      options:          options,
      action:           "GetSdkTypes",
      method:           :get,
      input_shape:      "GetSdkTypesRequest",
      output_shape:     "SdkTypes",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a usage plan of a given plan Id.
  """
  def update_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "UpdateUsagePlan",
      method:           :patch,
      input_shape:      "UpdateUsagePlanRequest",
      output_shape:     "UsagePlan",
      endpoint:         __spec__()
    }
  end

  @doc """
  Exports a deployed version of a `RestApi` in a specified format.
  """
  def get_export(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}/exports/{export_type}",
      input:            input,
      options:          options,
      action:           "GetExport",
      method:           :get,
      input_shape:      "GetExportRequest",
      output_shape:     "ExportResponse",
      endpoint:         __spec__()
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
      path:             "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "TestInvokeAuthorizer",
      method:           :post,
      input_shape:      "TestInvokeAuthorizerRequest",
      output_shape:     "TestInvokeAuthorizerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing `Method` resource.
  """
  def update_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "UpdateMethod",
      method:           :patch,
      input_shape:      "UpdateMethodRequest",
      output_shape:     "Method",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a client SDK for a `RestApi` and `Stage`.
  """
  def get_sdk(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}",
      input:            input,
      options:          options,
      action:           "GetSdk",
      method:           :get,
      input_shape:      "GetSdkRequest",
      output_shape:     "SdkResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a `RequestValidator` of a given `RestApi`.
  """
  def delete_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "DeleteRequestValidator",
      method:           :delete,
      input_shape:      "DeleteRequestValidatorRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a get integration response.
  """
  def get_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "GetIntegrationResponse",
      method:           :get,
      input_shape:      "GetIntegrationResponseRequest",
      output_shape:     "IntegrationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a collection of `BasePathMapping` resources.
  """
  def get_base_path_mappings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}/basepathmappings",
      input:            input,
      options:          options,
      action:           "GetBasePathMappings",
      method:           :get,
      input_shape:      "GetBasePathMappingsRequest",
      output_shape:     "BasePathMappings",
      endpoint:         __spec__()
    }
  end

  @doc """
  Import API keys from an external source, such as a CSV-formatted file.
  """
  def import_api_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/apikeys?mode=import",
      input:            input,
      options:          options,
      action:           "ImportApiKeys",
      method:           :post,
      input_shape:      "ImportApiKeysRequest",
      output_shape:     "ApiKeyIds",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a `Stage` resource.
  """
  def get_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "GetStage",
      method:           :get,
      input_shape:      "GetStageRequest",
      output_shape:     "Stage",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe a `BasePathMapping` resource.
  """
  def get_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "GetBasePathMapping",
      method:           :get,
      input_shape:      "GetBasePathMappingRequest",
      output_shape:     "BasePathMapping",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def import_documentation_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "ImportDocumentationParts",
      method:           :put,
      input_shape:      "ImportDocumentationPartsRequest",
      output_shape:     "DocumentationPartIds",
      endpoint:         __spec__()
    }
  end

  @doc """
  Clears any customization of a `GatewayResponse` of a specified response
  type on the given `RestApi` and resets it with the default settings.
  """
  def delete_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "DeleteGatewayResponse",
      method:           :delete,
      input_shape:      "DeleteGatewayResponseRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe an existing `Authorizers` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)</div>
  """
  def get_authorizers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/authorizers",
      input:            input,
      options:          options,
      action:           "GetAuthorizers",
      method:           :get,
      input_shape:      "GetAuthorizersRequest",
      output_shape:     "Authorizers",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about one or more `Stage` resources.
  """
  def get_stages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages",
      input:            input,
      options:          options,
      action:           "GetStages",
      method:           :get,
      input_shape:      "GetStagesRequest",
      output_shape:     "Stages",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about the `DomainName` resource.
  """
  def update_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "UpdateDomainName",
      method:           :patch,
      input_shape:      "UpdateDomainNameRequest",
      output_shape:     "DomainName",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def create_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/versions",
      input:            input,
      options:          options,
      action:           "CreateDocumentationVersion",
      method:           :post,
      input_shape:      "CreateDocumentationVersionRequest",
      output_shape:     "DocumentationVersion",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the current `Account` resource.
  """
  def get_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/account",
      input:            input,
      options:          options,
      action:           "GetAccount",
      method:           :get,
      input_shape:      "GetAccountRequest",
      output_shape:     "Account",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the `RestApis` resources for your collection.
  """
  def get_rest_apis(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis",
      input:            input,
      options:          options,
      action:           "GetRestApis",
      method:           :get,
      input_shape:      "GetRestApisRequest",
      output_shape:     "RestApis",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a put integration.
  """
  def put_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "PutIntegrationResponse",
      method:           :put,
      input_shape:      "PutIntegrationResponseRequest",
      output_shape:     "IntegrationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about an `ClientCertificate` resource.
  """
  def update_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "UpdateClientCertificate",
      method:           :patch,
      input_shape:      "UpdateClientCertificateRequest",
      output_shape:     "ClientCertificate",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a `RequestValidator` of a given `RestApi`.
  """
  def get_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "GetRequestValidator",
      method:           :get,
      input_shape:      "GetRequestValidatorRequest",
      output_shape:     "RequestValidator",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the `ClientCertificate` resource.
  """
  def delete_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "DeleteClientCertificate",
      method:           :delete,
      input_shape:      "DeleteClientCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents an update integration response.
  """
  def update_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "UpdateIntegrationResponse",
      method:           :patch,
      input_shape:      "UpdateIntegrationResponseRequest",
      output_shape:     "IntegrationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a delete integration.
  """
  def delete_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "DeleteIntegration",
      method:           :delete,
      input_shape:      "DeleteIntegrationRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about the current `Account` resource.
  """
  def update_account(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/account",
      input:            input,
      options:          options,
      action:           "UpdateAccount",
      method:           :patch,
      input_shape:      "UpdateAccountRequest",
      output_shape:     "Account",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def update_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "UpdateDocumentationPart",
      method:           :patch,
      input_shape:      "UpdateDocumentationPartRequest",
      output_shape:     "DocumentationPart",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_documentation_parts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "GetDocumentationParts",
      method:           :get,
      input_shape:      "GetDocumentationPartsRequest",
      output_shape:     "DocumentationParts",
      endpoint:         __spec__()
    }
  end

  @doc """
  Flushes all authorizer cache entries on a stage.
  """
  def flush_stage_authorizers_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}/cache/authorizers",
      input:            input,
      options:          options,
      action:           "FlushStageAuthorizersCache",
      method:           :delete,
      input_shape:      "FlushStageAuthorizersCacheRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def delete_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "DeleteDocumentationVersion",
      method:           :delete,
      input_shape:      "DeleteDocumentationVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_documentation_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/versions",
      input:            input,
      options:          options,
      action:           "GetDocumentationVersions",
      method:           :get,
      input_shape:      "GetDocumentationVersionsRequest",
      output_shape:     "DocumentationVersions",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about a `Deployment` resource.
  """
  def update_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "UpdateDeployment",
      method:           :patch,
      input_shape:      "UpdateDeploymentRequest",
      output_shape:     "Deployment",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `Deployment` resource, which makes a specified `RestApi` callable
  over the internet.
  """
  def create_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/deployments",
      input:            input,
      options:          options,
      action:           "CreateDeployment",
      method:           :post,
      input_shape:      "CreateDeploymentRequest",
      output_shape:     "Deployment",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `BasePathMapping` resource.
  """
  def create_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}/basepathmappings",
      input:            input,
      options:          options,
      action:           "CreateBasePathMapping",
      method:           :post,
      input_shape:      "CreateBasePathMappingRequest",
      output_shape:     "BasePathMapping",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "GetDocumentationVersion",
      method:           :get,
      input_shape:      "GetDocumentationVersionRequest",
      output_shape:     "DocumentationVersion",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a `RequestValidator` of a given `RestApi`.
  """
  def update_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}",
      input:            input,
      options:          options,
      action:           "UpdateRequestValidator",
      method:           :patch,
      input_shape:      "UpdateRequestValidatorRequest",
      output_shape:     "RequestValidator",
      endpoint:         __spec__()
    }
  end

  @doc """
  Grants a temporary extension to the remaining quota of a usage plan
  associated with a specified API key.
  """
  def update_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/keys/{keyId}/usage",
      input:            input,
      options:          options,
      action:           "UpdateUsage",
      method:           :patch,
      input_shape:      "UpdateUsageRequest",
      output_shape:     "Usage",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def create_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts",
      input:            input,
      options:          options,
      action:           "CreateDocumentationPart",
      method:           :post,
      input_shape:      "CreateDocumentationPartRequest",
      output_shape:     "DocumentationPart",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a usage plan of a given plan identifier.
  """
  def get_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "GetUsagePlan",
      method:           :get,
      input_shape:      "GetUsagePlanRequest",
      output_shape:     "UsagePlan",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)</div>
  """
  def delete_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "DeleteAuthorizer",
      method:           :delete,
      input_shape:      "DeleteAuthorizerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_sdk_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/sdktypes/{sdktype_id}",
      input:            input,
      options:          options,
      action:           "GetSdkType",
      method:           :get,
      input_shape:      "GetSdkTypeRequest",
      output_shape:     "SdkType",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a `Deployment` resource. Deleting a deployment will only succeed if
  there are no `Stage` resources associated with it.
  """
  def delete_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "DeleteDeployment",
      method:           :delete,
      input_shape:      "DeleteDeploymentRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new domain name.
  """
  def create_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames",
      input:            input,
      options:          options,
      action:           "CreateDomainName",
      method:           :post,
      input_shape:      "CreateDomainNameRequest",
      output_shape:     "DomainName",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a usage plan key of a given key identifier.
  """
  def get_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/keys/{keyId}",
      input:            input,
      options:          options,
      action:           "GetUsagePlanKey",
      method:           :get,
      input_shape:      "GetUsagePlanKeyRequest",
      output_shape:     "UsagePlanKey",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about a `Resource` resource.
  """
  def update_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "UpdateResource",
      method:           :patch,
      input_shape:      "UpdateResourceRequest",
      output_shape:     "Resource",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe an existing `Method` resource.
  """
  def get_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "GetMethod",
      method:           :get,
      input_shape:      "GetMethodRequest",
      output_shape:     "Method",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a usage plan key and remove the underlying API key from the
  associated usage plan.
  """
  def delete_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/keys/{keyId}",
      input:            input,
      options:          options,
      action:           "DeleteUsagePlanKey",
      method:           :delete,
      input_shape:      "DeleteUsagePlanKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes existing `Models` defined for a `RestApi` resource.
  """
  def get_models(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models",
      input:            input,
      options:          options,
      action:           "GetModels",
      method:           :get,
      input_shape:      "GetModelsRequest",
      output_shape:     "Models",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a `Resource` resource.
  """
  def delete_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "DeleteResource",
      method:           :delete,
      input_shape:      "DeleteResourceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the `RestApi` resource in the collection.
  """
  def get_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "GetRestApi",
      method:           :get,
      input_shape:      "GetRestApiRequest",
      output_shape:     "RestApi",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a customization of a `GatewayResponse` of a specified response type
  and status code on the given `RestApi`.
  """
  def put_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "PutGatewayResponse",
      method:           :put,
      input_shape:      "PutGatewayResponseRequest",
      output_shape:     "GatewayResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a new `Authorizer` resource to an existing `RestApi` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)</div>
  """
  def create_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/authorizers",
      input:            input,
      options:          options,
      action:           "CreateAuthorizer",
      method:           :post,
      input_shape:      "CreateAuthorizerRequest",
      output_shape:     "Authorizer",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets up a method's integration.
  """
  def put_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "PutIntegration",
      method:           :put,
      input_shape:      "PutIntegrationRequest",
      output_shape:     "Integration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the `ApiKey` resource.
  """
  def delete_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "DeleteApiKey",
      method:           :delete,
      input_shape:      "DeleteApiKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about a `Stage` resource.
  """
  def update_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "UpdateStage",
      method:           :patch,
      input_shape:      "UpdateStageRequest",
      output_shape:     "Stage",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def update_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "UpdateGatewayResponse",
      method:           :patch,
      input_shape:      "UpdateGatewayResponseRequest",
      output_shape:     "GatewayResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the current `ClientCertificate` resource.
  """
  def get_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/clientcertificates/{clientcertificate_id}",
      input:            input,
      options:          options,
      action:           "GetClientCertificate",
      method:           :get,
      input_shape:      "GetClientCertificateRequest",
      output_shape:     "ClientCertificate",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)</div>
  """
  def update_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "UpdateAuthorizer",
      method:           :patch,
      input_shape:      "UpdateAuthorizerRequest",
      output_shape:     "Authorizer",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a delete integration response.
  """
  def delete_integration_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "DeleteIntegrationResponse",
      method:           :delete,
      input_shape:      "DeleteIntegrationResponseRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes an existing model defined for a `RestApi` resource.
  """
  def get_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "GetModel",
      method:           :get,
      input_shape:      "GetModelRequest",
      output_shape:     "Model",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a `MethodResponse` resource.
  """
  def get_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "GetMethodResponse",
      method:           :get,
      input_shape:      "GetMethodResponseRequest",
      output_shape:     "MethodResponse",
      endpoint:         __spec__()
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
      path:             "/restapis/{restapi_id}/gatewayresponses",
      input:            input,
      options:          options,
      action:           "GetGatewayResponses",
      method:           :get,
      input_shape:      "GetGatewayResponsesRequest",
      output_shape:     "GatewayResponses",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the `RequestValidators` collection of a given `RestApi`.
  """
  def get_request_validators(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/requestvalidators",
      input:            input,
      options:          options,
      action:           "GetRequestValidators",
      method:           :get,
      input_shape:      "GetRequestValidatorsRequest",
      output_shape:     "RequestValidators",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the current `ApiKey` resource.
  """
  def get_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/apikeys/{api_Key}",
      input:            input,
      options:          options,
      action:           "GetApiKey",
      method:           :get,
      input_shape:      "GetApiKeyRequest",
      output_shape:     "ApiKey",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `RestApi` resource.
  """
  def create_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis",
      input:            input,
      options:          options,
      action:           "CreateRestApi",
      method:           :post,
      input_shape:      "CreateRestApiRequest",
      output_shape:     "RestApi",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a `MethodResponse` to an existing `Method` resource.
  """
  def put_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "PutMethodResponse",
      method:           :put,
      input_shape:      "PutMethodResponseRequest",
      output_shape:     "MethodResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `Resource` resource.
  """
  def create_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{parent_id}",
      input:            input,
      options:          options,
      action:           "CreateResource",
      method:           :post,
      input_shape:      "CreateResourceRequest",
      output_shape:     "Resource",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about a model.
  """
  def update_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "UpdateModel",
      method:           :patch,
      input_shape:      "UpdateModelRequest",
      output_shape:     "Model",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents an update integration.
  """
  def update_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "UpdateIntegration",
      method:           :patch,
      input_shape:      "UpdateIntegrationRequest",
      output_shape:     "Integration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Simulate the execution of a `Method` in your `RestApi` with headers,
  parameters, and an incoming request body.
  """
  def test_invoke_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "TestInvokeMethod",
      method:           :post,
      input_shape:      "TestInvokeMethodRequest",
      output_shape:     "TestInvokeMethodResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a `GatewayResponse` of a specified response type on the given
  `RestApi`.
  """
  def get_gateway_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/gatewayresponses/{response_type}",
      input:            input,
      options:          options,
      action:           "GetGatewayResponse",
      method:           :get,
      input_shape:      "GetGatewayResponseRequest",
      output_shape:     "GatewayResponse",
      endpoint:         __spec__()
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
      path:             "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "PutRestApi",
      method:           :put,
      input_shape:      "PutRestApiRequest",
      output_shape:     "RestApi",
      endpoint:         __spec__()
    }
  end

  @doc """
  Add a method to an existing `Resource` resource.
  """
  def put_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "PutMethod",
      method:           :put,
      input_shape:      "PutMethodRequest",
      output_shape:     "Method",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `ReqeustValidator` of a given `RestApi`.
  """
  def create_request_validator(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/requestvalidators",
      input:            input,
      options:          options,
      action:           "CreateRequestValidator",
      method:           :post,
      input_shape:      "CreateRequestValidatorRequest",
      output_shape:     "RequestValidator",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a collection of `DomainName` resources.
  """
  def get_domain_names(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames",
      input:            input,
      options:          options,
      action:           "GetDomainNames",
      method:           :get,
      input_shape:      "GetDomainNamesRequest",
      output_shape:     "DomainNames",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists information about a resource.
  """
  def get_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}",
      input:            input,
      options:          options,
      action:           "GetResource",
      method:           :get,
      input_shape:      "GetResourceRequest",
      output_shape:     "Resource",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a `Deployment` resource.
  """
  def get_deployment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/deployments/{deployment_id}",
      input:            input,
      options:          options,
      action:           "GetDeployment",
      method:           :get,
      input_shape:      "GetDeploymentRequest",
      output_shape:     "Deployment",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing `MethodResponse` resource.
  """
  def delete_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "DeleteMethodResponse",
      method:           :delete,
      input_shape:      "DeleteMethodResponseRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a `Stage` resource.
  """
  def delete_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}",
      input:            input,
      options:          options,
      action:           "DeleteStage",
      method:           :delete,
      input_shape:      "DeleteStageRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a collection of `ClientCertificate` resources.
  """
  def get_client_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/clientcertificates",
      input:            input,
      options:          options,
      action:           "GetClientCertificates",
      method:           :get,
      input_shape:      "GetClientCertificatesRequest",
      output_shape:     "ClientCertificates",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `Stage` resource that references a pre-existing `Deployment`
  for the API.
  """
  def create_stage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages",
      input:            input,
      options:          options,
      action:           "CreateStage",
      method:           :post,
      input_shape:      "CreateStageRequest",
      output_shape:     "Stage",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def update_documentation_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/versions/{doc_version}",
      input:            input,
      options:          options,
      action:           "UpdateDocumentationVersion",
      method:           :patch,
      input_shape:      "UpdateDocumentationVersionRequest",
      output_shape:     "DocumentationVersion",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a usage plan with the throttle and quota limits, as well as the
  associated API stages, specified in the payload.
  """
  def create_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans",
      input:            input,
      options:          options,
      action:           "CreateUsagePlan",
      method:           :post,
      input_shape:      "CreateUsagePlanRequest",
      output_shape:     "UsagePlan",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a new `Model` resource to an existing `RestApi` resource.
  """
  def create_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models",
      input:            input,
      options:          options,
      action:           "CreateModel",
      method:           :post,
      input_shape:      "CreateModelRequest",
      output_shape:     "Model",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a model.
  """
  def delete_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models/{model_name}",
      input:            input,
      options:          options,
      action:           "DeleteModel",
      method:           :delete,
      input_shape:      "DeleteModelRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about the specified API.
  """
  def update_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "UpdateRestApi",
      method:           :patch,
      input_shape:      "UpdateRestApiRequest",
      output_shape:     "RestApi",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a sample mapping template that can be used to transform a payload
  into the structure of a model.
  """
  def get_model_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/models/{model_name}/default_template",
      input:            input,
      options:          options,
      action:           "GetModelTemplate",
      method:           :get,
      input_shape:      "GetModelTemplateRequest",
      output_shape:     "Template",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets all the usage plan keys representing the API keys added to a specified
  usage plan.
  """
  def get_usage_plan_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/keys",
      input:            input,
      options:          options,
      action:           "GetUsagePlanKeys",
      method:           :get,
      input_shape:      "GetUsagePlanKeysRequest",
      output_shape:     "UsagePlanKeys",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a `ClientCertificate` resource.
  """
  def generate_client_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/clientcertificates",
      input:            input,
      options:          options,
      action:           "GenerateClientCertificate",
      method:           :post,
      input_shape:      "GenerateClientCertificateRequest",
      output_shape:     "ClientCertificate",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the current `ApiKeys` resource.
  """
  def get_api_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/apikeys",
      input:            input,
      options:          options,
      action:           "GetApiKeys",
      method:           :get,
      input_shape:      "GetApiKeysRequest",
      output_shape:     "ApiKeys",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets all the usage plans of the caller's account.
  """
  def get_usage_plans(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans",
      input:            input,
      options:          options,
      action:           "GetUsagePlans",
      method:           :get,
      input_shape:      "GetUsagePlansRequest",
      output_shape:     "UsagePlans",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the `BasePathMapping` resource.
  """
  def delete_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "DeleteBasePathMapping",
      method:           :delete,
      input_shape:      "DeleteBasePathMappingRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describe an existing `Authorizer` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)</div>
  """
  def get_authorizer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/authorizers/{authorizer_id}",
      input:            input,
      options:          options,
      action:           "GetAuthorizer",
      method:           :get,
      input_shape:      "GetAuthorizerRequest",
      output_shape:     "Authorizer",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a domain name that is contained in a simpler, more intuitive URL
  that can be called.
  """
  def get_domain_name(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}",
      input:            input,
      options:          options,
      action:           "GetDomainName",
      method:           :get,
      input_shape:      "GetDomainNameRequest",
      output_shape:     "DomainName",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates an existing `MethodResponse` resource.
  """
  def update_method_response(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}",
      input:            input,
      options:          options,
      action:           "UpdateMethodResponse",
      method:           :patch,
      input_shape:      "UpdateMethodResponseRequest",
      output_shape:     "MethodResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes information about the `BasePathMapping` resource.
  """
  def update_base_path_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/domainnames/{domain_name}/basepathmappings/{base_path}",
      input:            input,
      options:          options,
      action:           "UpdateBasePathMapping",
      method:           :patch,
      input_shape:      "UpdateBasePathMappingRequest",
      output_shape:     "BasePathMapping",
      endpoint:         __spec__()
    }
  end

  @doc """
  Create an `ApiKey` resource.

  <div class="seeAlso">[AWS
  CLI](http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)</div>
  """
  def create_api_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/apikeys",
      input:            input,
      options:          options,
      action:           "CreateApiKey",
      method:           :post,
      input_shape:      "CreateApiKeyRequest",
      output_shape:     "ApiKey",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the usage data of a usage plan in a specified time interval.
  """
  def get_usage(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/usage",
      input:            input,
      options:          options,
      action:           "GetUsage",
      method:           :get,
      input_shape:      "GetUsageRequest",
      output_shape:     "Usage",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified API.
  """
  def delete_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}",
      input:            input,
      options:          options,
      action:           "DeleteRestApi",
      method:           :delete,
      input_shape:      "DeleteRestApiRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Flushes a stage's cache.
  """
  def flush_stage_cache(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/stages/{stage_name}/cache/data",
      input:            input,
      options:          options,
      action:           "FlushStageCache",
      method:           :delete,
      input_shape:      "FlushStageCacheRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Represents a get integration.
  """
  def get_integration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration",
      input:            input,
      options:          options,
      action:           "GetIntegration",
      method:           :get,
      input_shape:      "GetIntegrationRequest",
      output_shape:     "Integration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a usage plan of a given plan Id.
  """
  def delete_usage_plan(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}",
      input:            input,
      options:          options,
      action:           "DeleteUsagePlan",
      method:           :delete,
      input_shape:      "DeleteUsagePlanRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def delete_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "DeleteDocumentationPart",
      method:           :delete,
      input_shape:      "DeleteDocumentationPartRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a usage plan key for adding an existing API key to a usage plan.
  """
  def create_usage_plan_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/usageplans/{usageplanId}/keys",
      input:            input,
      options:          options,
      action:           "CreateUsagePlanKey",
      method:           :post,
      input_shape:      "CreateUsagePlanKeyRequest",
      output_shape:     "UsagePlanKey",
      endpoint:         __spec__()
    }
  end

  @doc """
  A feature of the Amazon API Gateway control service for creating a new API
  from an external API definition file.
  """
  def import_rest_api(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis?mode=import",
      input:            input,
      options:          options,
      action:           "ImportRestApi",
      method:           :post,
      input_shape:      "ImportRestApiRequest",
      output_shape:     "RestApi",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an existing `Method` resource.
  """
  def delete_method(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}",
      input:            input,
      options:          options,
      action:           "DeleteMethod",
      method:           :delete,
      input_shape:      "DeleteMethodRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
No Documentation Availabale
  """
  def get_documentation_part(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/restapis/{restapi_id}/documentation/parts/{part_id}",
      input:            input,
      options:          options,
      action:           "GetDocumentationPart",
      method:           :get,
      input_shape:      "GetDocumentationPartRequest",
      output_shape:     "DocumentationPart",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "apigateway",
      endpoint_prefix:  "apigateway",
      type:             :rest_json,
      version:          "2015-07-09",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"GetBasePathMappingRequest" => %{"members" => %{"basePath" => %{"location" => "uri", "locationName" => "base_path", "shape" => "String"}, "domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}}, "required" => ["domainName", "basePath"], "type" => "structure"}, "UpdateMethodResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "ExportResponse" => %{"members" => %{"body" => %{"shape" => "Blob"}, "contentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "String"}, "contentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "String"}}, "payload" => "body", "type" => "structure"}, "IntegrationType" => %{"enum" => ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"], "type" => "string"}, "GetUsagePlansRequest" => %{"members" => %{"keyId" => %{"location" => "querystring", "locationName" => "keyId", "shape" => "String"}, "limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "ApiKeys" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfApiKey"}, "position" => %{"shape" => "String"}, "warnings" => %{"shape" => "ListOfString"}}, "type" => "structure"}, "Models" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfModel"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "GetAccountRequest" => %{"members" => %{}, "type" => "structure"}, "CacheClusterStatus" => %{"enum" => ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"], "type" => "string"}, "ListOfGatewayResponse" => %{"member" => %{"shape" => "GatewayResponse"}, "type" => "list"}, "Model" => %{"members" => %{"contentType" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "id" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "schema" => %{"shape" => "String"}}, "type" => "structure"}, "PatchOperation" => %{"members" => %{"from" => %{"shape" => "String"}, "op" => %{"shape" => "Op"}, "path" => %{"shape" => "String"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "GetDocumentationPartRequest" => %{"members" => %{"documentationPartId" => %{"location" => "uri", "locationName" => "part_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationPartId"], "type" => "structure"}, "ListOfBasePathMapping" => %{"member" => %{"shape" => "BasePathMapping"}, "type" => "list"}, "ImportDocumentationPartsRequest" => %{"members" => %{"body" => %{"shape" => "Blob"}, "failOnWarnings" => %{"location" => "querystring", "locationName" => "failonwarnings", "shape" => "Boolean"}, "mode" => %{"location" => "querystring", "locationName" => "mode", "shape" => "PutMode"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "payload" => "body", "required" => ["restApiId", "body"], "type" => "structure"}, "ListOfSdkConfigurationProperty" => %{"member" => %{"shape" => "SdkConfigurationProperty"}, "type" => "list"}, "GetDocumentationPartsRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "nameQuery" => %{"location" => "querystring", "locationName" => "name", "shape" => "String"}, "path" => %{"location" => "querystring", "locationName" => "path", "shape" => "String"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "type" => %{"location" => "querystring", "locationName" => "type", "shape" => "DocumentationPartType"}}, "required" => ["restApiId"], "type" => "structure"}, "CreateStageRequest" => %{"members" => %{"cacheClusterEnabled" => %{"shape" => "Boolean"}, "cacheClusterSize" => %{"shape" => "CacheClusterSize"}, "deploymentId" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "documentationVersion" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"shape" => "String"}, "variables" => %{"shape" => "MapOfStringToString"}}, "required" => ["restApiId", "stageName", "deploymentId"], "type" => "structure"}, "MapOfIntegrationResponse" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "IntegrationResponse"}}, "DeleteApiKeyRequest" => %{"members" => %{"apiKey" => %{"location" => "uri", "locationName" => "api_Key", "shape" => "String"}}, "required" => ["apiKey"], "type" => "structure"}, "ClientCertificate" => %{"members" => %{"clientCertificateId" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "String"}, "expirationDate" => %{"shape" => "Timestamp"}, "pemEncodedCertificate" => %{"shape" => "String"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "StageKey" => %{"members" => %{"restApiId" => %{"shape" => "String"}, "stageName" => %{"shape" => "String"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "MapOfMethodSnapshot" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "MethodSnapshot"}}, "CreateDeploymentRequest" => %{"members" => %{"cacheClusterEnabled" => %{"shape" => "NullableBoolean"}, "cacheClusterSize" => %{"shape" => "CacheClusterSize"}, "description" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageDescription" => %{"shape" => "String"}, "stageName" => %{"shape" => "String"}, "variables" => %{"shape" => "MapOfStringToString"}}, "required" => ["restApiId"], "type" => "structure"}, "GetGatewayResponsesRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "DeleteDomainNameRequest" => %{"members" => %{"domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}}, "required" => ["domainName"], "type" => "structure"}, "ListOfRestApi" => %{"member" => %{"shape" => "RestApi"}, "type" => "list"}, "GetUsagePlanKeyRequest" => %{"members" => %{"keyId" => %{"location" => "uri", "locationName" => "keyId", "shape" => "String"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId", "keyId"], "type" => "structure"}, "UpdateClientCertificateRequest" => %{"members" => %{"clientCertificateId" => %{"location" => "uri", "locationName" => "clientcertificate_id", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}}, "required" => ["clientCertificateId"], "type" => "structure"}, "UpdateDeploymentRequest" => %{"members" => %{"deploymentId" => %{"location" => "uri", "locationName" => "deployment_id", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "deploymentId"], "type" => "structure"}, "ListOfPatchOperation" => %{"member" => %{"shape" => "PatchOperation"}, "type" => "list"}, "BasePathMappings" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfBasePathMapping"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "GetClientCertificateRequest" => %{"members" => %{"clientCertificateId" => %{"location" => "uri", "locationName" => "clientcertificate_id", "shape" => "String"}}, "required" => ["clientCertificateId"], "type" => "structure"}, "ListOfApiStage" => %{"member" => %{"shape" => "ApiStage"}, "type" => "list"}, "RestApis" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfRestApi"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "CreateResourceRequest" => %{"members" => %{"parentId" => %{"location" => "uri", "locationName" => "parent_id", "shape" => "String"}, "pathPart" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "parentId", "pathPart"], "type" => "structure"}, "MapOfStringToBoolean" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "NullableBoolean"}}, "ListOfApiKey" => %{"member" => %{"shape" => "ApiKey"}, "type" => "list"}, "Authorizers" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfAuthorizer"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "UsagePlanKeys" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfUsagePlanKey"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteIntegrationResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "RestApi" => %{"members" => %{"binaryMediaTypes" => %{"shape" => "ListOfString"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "String"}, "id" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "version" => %{"shape" => "String"}, "warnings" => %{"shape" => "ListOfString"}}, "type" => "structure"}, "ConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "MapOfStringToList" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "ListOfString"}}, "DeleteRestApiRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "UpdateApiKeyRequest" => %{"members" => %{"apiKey" => %{"location" => "uri", "locationName" => "api_Key", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}}, "required" => ["apiKey"], "type" => "structure"}, "MapOfMethodResponse" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "MethodResponse"}}, "UpdateIntegrationResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "GetStagesRequest" => %{"members" => %{"deploymentId" => %{"location" => "querystring", "locationName" => "deploymentId", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "GetMethodResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "QuotaPeriodType" => %{"enum" => ["DAY", "WEEK", "MONTH"], "type" => "string"}, "SdkTypes" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfSdkType"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "GetRequestValidatorsRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "CreateModelRequest" => %{"members" => %{"contentType" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "schema" => %{"shape" => "String"}}, "required" => ["restApiId", "name", "contentType"], "type" => "structure"}, "UnauthorizedException" => %{"error" => %{"httpStatusCode" => 401}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "GetMethodRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "ListOfSdkType" => %{"member" => %{"shape" => "SdkType"}, "type" => "list"}, "GetIntegrationResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "ClientCertificates" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfClientCertificate"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "GetClientCertificatesRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "BasePathMapping" => %{"members" => %{"basePath" => %{"shape" => "String"}, "restApiId" => %{"shape" => "String"}, "stage" => %{"shape" => "String"}}, "type" => "structure"}, "GetModelTemplateRequest" => %{"members" => %{"modelName" => %{"location" => "uri", "locationName" => "model_name", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "modelName"], "type" => "structure"}, "FlushStageAuthorizersCacheRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName"], "type" => "structure"}, "SdkResponse" => %{"members" => %{"body" => %{"shape" => "Blob"}, "contentDisposition" => %{"location" => "header", "locationName" => "Content-Disposition", "shape" => "String"}, "contentType" => %{"location" => "header", "locationName" => "Content-Type", "shape" => "String"}}, "payload" => "body", "type" => "structure"}, "TestInvokeMethodResponse" => %{"members" => %{"body" => %{"shape" => "String"}, "headers" => %{"shape" => "MapOfHeaderValues"}, "latency" => %{"shape" => "Long"}, "log" => %{"shape" => "String"}, "status" => %{"shape" => "Integer"}}, "type" => "structure"}, "ServiceUnavailableException" => %{"error" => %{"httpStatusCode" => 503}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "ListOfClientCertificate" => %{"member" => %{"shape" => "ClientCertificate"}, "type" => "list"}, "UpdateStageRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName"], "type" => "structure"}, "GatewayResponses" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfGatewayResponse"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateBasePathMappingRequest" => %{"members" => %{"basePath" => %{"location" => "uri", "locationName" => "base_path", "shape" => "String"}, "domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}}, "required" => ["domainName", "basePath"], "type" => "structure"}, "Resource" => %{"members" => %{"id" => %{"shape" => "String"}, "parentId" => %{"shape" => "String"}, "path" => %{"shape" => "String"}, "pathPart" => %{"shape" => "String"}, "resourceMethods" => %{"shape" => "MapOfMethod"}}, "type" => "structure"}, "Method" => %{"members" => %{"apiKeyRequired" => %{"shape" => "NullableBoolean"}, "authorizationType" => %{"shape" => "String"}, "authorizerId" => %{"shape" => "String"}, "httpMethod" => %{"shape" => "String"}, "methodIntegration" => %{"shape" => "Integration"}, "methodResponses" => %{"shape" => "MapOfMethodResponse"}, "operationName" => %{"shape" => "String"}, "requestModels" => %{"shape" => "MapOfStringToString"}, "requestParameters" => %{"shape" => "MapOfStringToBoolean"}, "requestValidatorId" => %{"shape" => "String"}}, "type" => "structure"}, "GetDocumentationVersionsRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "Usage" => %{"members" => %{"endDate" => %{"shape" => "String"}, "items" => %{"locationName" => "values", "shape" => "MapOfKeyUsages"}, "position" => %{"shape" => "String"}, "startDate" => %{"shape" => "String"}, "usagePlanId" => %{"shape" => "String"}}, "type" => "structure"}, "TestInvokeAuthorizerRequest" => %{"members" => %{"additionalContext" => %{"shape" => "MapOfStringToString"}, "authorizerId" => %{"location" => "uri", "locationName" => "authorizer_id", "shape" => "String"}, "body" => %{"shape" => "String"}, "headers" => %{"shape" => "MapOfHeaderValues"}, "pathWithQueryString" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageVariables" => %{"shape" => "MapOfStringToString"}}, "required" => ["restApiId", "authorizerId"], "type" => "structure"}, "UpdateRestApiRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "DocumentationPartIds" => %{"members" => %{"ids" => %{"shape" => "ListOfString"}, "warnings" => %{"shape" => "ListOfString"}}, "type" => "structure"}, "Account" => %{"members" => %{"apiKeyVersion" => %{"shape" => "String"}, "cloudwatchRoleArn" => %{"shape" => "String"}, "features" => %{"shape" => "ListOfString"}, "throttleSettings" => %{"shape" => "ThrottleSettings"}}, "type" => "structure"}, "UpdateGatewayResponseRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "responseType" => %{"location" => "uri", "locationName" => "response_type", "shape" => "GatewayResponseType"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "responseType"], "type" => "structure"}, "ImportRestApiRequest" => %{"members" => %{"body" => %{"shape" => "Blob"}, "failOnWarnings" => %{"location" => "querystring", "locationName" => "failonwarnings", "shape" => "Boolean"}, "parameters" => %{"location" => "querystring", "shape" => "MapOfStringToString"}}, "payload" => "body", "required" => ["body"], "type" => "structure"}, "TooManyRequestsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "DocumentationPart" => %{"members" => %{"id" => %{"shape" => "String"}, "location" => %{"shape" => "DocumentationPartLocation"}, "properties" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteUsagePlanRequest" => %{"members" => %{"usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId"], "type" => "structure"}, "CreateUsagePlanRequest" => %{"members" => %{"apiStages" => %{"shape" => "ListOfApiStage"}, "description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "quota" => %{"shape" => "QuotaSettings"}, "throttle" => %{"shape" => "ThrottleSettings"}}, "required" => ["name"], "type" => "structure"}, "MethodResponse" => %{"members" => %{"responseModels" => %{"shape" => "MapOfStringToString"}, "responseParameters" => %{"shape" => "MapOfStringToBoolean"}, "statusCode" => %{"shape" => "StatusCode"}}, "type" => "structure"}, "PutGatewayResponseRequest" => %{"members" => %{"responseParameters" => %{"shape" => "MapOfStringToString"}, "responseTemplates" => %{"shape" => "MapOfStringToString"}, "responseType" => %{"location" => "uri", "locationName" => "response_type", "shape" => "GatewayResponseType"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"shape" => "StatusCode"}}, "required" => ["restApiId", "responseType"], "type" => "structure"}, "GetSdkRequest" => %{"members" => %{"parameters" => %{"location" => "querystring", "shape" => "MapOfStringToString"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "sdkType" => %{"location" => "uri", "locationName" => "sdk_type", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName", "sdkType"], "type" => "structure"}, "ApiStage" => %{"members" => %{"apiId" => %{"shape" => "String"}, "stage" => %{"shape" => "String"}}, "type" => "structure"}, "NullableInteger" => %{"type" => "integer"}, "GetDeploymentsRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "DeleteStageRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName"], "type" => "structure"}, "UpdateAuthorizerRequest" => %{"members" => %{"authorizerId" => %{"location" => "uri", "locationName" => "authorizer_id", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "authorizerId"], "type" => "structure"}, "Deployment" => %{"members" => %{"apiSummary" => %{"shape" => "PathToMapOfMethodSnapshot"}, "createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "String"}, "id" => %{"shape" => "String"}}, "type" => "structure"}, "UsagePlan" => %{"members" => %{"apiStages" => %{"shape" => "ListOfApiStage"}, "description" => %{"shape" => "String"}, "id" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "productCode" => %{"shape" => "String"}, "quota" => %{"shape" => "QuotaSettings"}, "throttle" => %{"shape" => "ThrottleSettings"}}, "type" => "structure"}, "DocumentationPartType" => %{"enum" => ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], "type" => "string"}, "ListOfUsage" => %{"member" => %{"shape" => "ListOfLong"}, "type" => "list"}, "DocumentationVersions" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfDocumentationVersion"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "DocumentationParts" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfDocumentationPart"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "Template" => %{"members" => %{"value" => %{"shape" => "String"}}, "type" => "structure"}, "DomainName" => %{"members" => %{"certificateArn" => %{"shape" => "String"}, "certificateName" => %{"shape" => "String"}, "certificateUploadDate" => %{"shape" => "Timestamp"}, "distributionDomainName" => %{"shape" => "String"}, "domainName" => %{"shape" => "String"}}, "type" => "structure"}, "MapOfMethodSettings" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "MethodSetting"}}, "StatusCode" => %{"pattern" => "[1-5]\\d\\d", "type" => "string"}, "UpdateUsageRequest" => %{"members" => %{"keyId" => %{"location" => "uri", "locationName" => "keyId", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId", "keyId"], "type" => "structure"}, "GenerateClientCertificateRequest" => %{"members" => %{"description" => %{"shape" => "String"}}, "type" => "structure"}, "GetUsageRequest" => %{"members" => %{"endDate" => %{"location" => "querystring", "locationName" => "endDate", "shape" => "String"}, "keyId" => %{"location" => "querystring", "locationName" => "keyId", "shape" => "String"}, "limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "startDate" => %{"location" => "querystring", "locationName" => "startDate", "shape" => "String"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId", "startDate", "endDate"], "type" => "structure"}, "ApiKeyIds" => %{"members" => %{"ids" => %{"shape" => "ListOfString"}, "warnings" => %{"shape" => "ListOfString"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "MethodSetting" => %{"members" => %{"cacheDataEncrypted" => %{"shape" => "Boolean"}, "cacheTtlInSeconds" => %{"shape" => "Integer"}, "cachingEnabled" => %{"shape" => "Boolean"}, "dataTraceEnabled" => %{"shape" => "Boolean"}, "loggingLevel" => %{"shape" => "String"}, "metricsEnabled" => %{"shape" => "Boolean"}, "requireAuthorizationForCacheControl" => %{"shape" => "Boolean"}, "throttlingBurstLimit" => %{"shape" => "Integer"}, "throttlingRateLimit" => %{"shape" => "Double"}, "unauthorizedCacheControlHeaderStrategy" => %{"shape" => "UnauthorizedCacheControlHeaderStrategy"}}, "type" => "structure"}, "CreateApiKeyRequest" => %{"members" => %{"customerId" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "enabled" => %{"shape" => "Boolean"}, "generateDistinctId" => %{"shape" => "Boolean"}, "name" => %{"shape" => "String"}, "stageKeys" => %{"shape" => "ListOfStageKeys"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "GetStageRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName"], "type" => "structure"}, "DeleteAuthorizerRequest" => %{"members" => %{"authorizerId" => %{"location" => "uri", "locationName" => "authorizer_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "authorizerId"], "type" => "structure"}, "MapOfKeyUsages" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "ListOfUsage"}}, "ListOfDomainName" => %{"member" => %{"shape" => "DomainName"}, "type" => "list"}, "GetBasePathMappingsRequest" => %{"members" => %{"domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}, "limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "required" => ["domainName"], "type" => "structure"}, "PathToMapOfMethodSnapshot" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "MapOfMethodSnapshot"}}, "ListOfResource" => %{"member" => %{"shape" => "Resource"}, "type" => "list"}, "UpdateResourceRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId"], "type" => "structure"}, "NotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListOfString" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DeleteRequestValidatorRequest" => %{"members" => %{"requestValidatorId" => %{"location" => "uri", "locationName" => "requestvalidator_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "requestValidatorId"], "type" => "structure"}, "UpdateDocumentationVersionRequest" => %{"members" => %{"documentationVersion" => %{"location" => "uri", "locationName" => "doc_version", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationVersion"], "type" => "structure"}, "DeleteGatewayResponseRequest" => %{"members" => %{"responseType" => %{"location" => "uri", "locationName" => "response_type", "shape" => "GatewayResponseType"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "responseType"], "type" => "structure"}, "PutIntegrationRequest" => %{"members" => %{"cacheKeyParameters" => %{"shape" => "ListOfString"}, "cacheNamespace" => %{"shape" => "String"}, "contentHandling" => %{"shape" => "ContentHandlingStrategy"}, "credentials" => %{"shape" => "String"}, "httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "integrationHttpMethod" => %{"locationName" => "httpMethod", "shape" => "String"}, "passthroughBehavior" => %{"shape" => "String"}, "requestParameters" => %{"shape" => "MapOfStringToString"}, "requestTemplates" => %{"shape" => "MapOfStringToString"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "type" => %{"shape" => "IntegrationType"}, "uri" => %{"shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod", "type"], "type" => "structure"}, "SdkType" => %{"members" => %{"configurationProperties" => %{"shape" => "ListOfSdkConfigurationProperty"}, "description" => %{"shape" => "String"}, "friendlyName" => %{"shape" => "String"}, "id" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateUsagePlanRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId"], "type" => "structure"}, "ThrottleSettings" => %{"members" => %{"burstLimit" => %{"shape" => "Integer"}, "rateLimit" => %{"shape" => "Double"}}, "type" => "structure"}, "GetSdkTypesRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "CacheClusterSize" => %{"enum" => ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"], "type" => "string"}, "ListOfDocumentationPart" => %{"member" => %{"shape" => "DocumentationPart"}, "type" => "list"}, "GetAuthorizerRequest" => %{"members" => %{"authorizerId" => %{"location" => "uri", "locationName" => "authorizer_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "authorizerId"], "type" => "structure"}, "NullableBoolean" => %{"type" => "boolean"}, "CreateRestApiRequest" => %{"members" => %{"binaryMediaTypes" => %{"shape" => "ListOfString"}, "cloneFrom" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "version" => %{"shape" => "String"}}, "required" => ["name"], "type" => "structure"}, "Double" => %{"type" => "double"}, "GetSdkTypeRequest" => %{"members" => %{"id" => %{"location" => "uri", "locationName" => "sdktype_id", "shape" => "String"}}, "required" => ["id"], "type" => "structure"}, "BadRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ApiKey" => %{"members" => %{"createdDate" => %{"shape" => "Timestamp"}, "customerId" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "enabled" => %{"shape" => "Boolean"}, "id" => %{"shape" => "String"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "String"}, "stageKeys" => %{"shape" => "ListOfString"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "GetModelRequest" => %{"members" => %{"flatten" => %{"location" => "querystring", "locationName" => "flatten", "shape" => "Boolean"}, "modelName" => %{"location" => "uri", "locationName" => "model_name", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "modelName"], "type" => "structure"}, "CreateDocumentationVersionRequest" => %{"members" => %{"description" => %{"shape" => "String"}, "documentationVersion" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"shape" => "String"}}, "required" => ["restApiId", "documentationVersion"], "type" => "structure"}, "Stages" => %{"members" => %{"item" => %{"shape" => "ListOfStage"}}, "type" => "structure"}, "GetDocumentationVersionRequest" => %{"members" => %{"documentationVersion" => %{"location" => "uri", "locationName" => "doc_version", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationVersion"], "type" => "structure"}, "ListOfStage" => %{"member" => %{"shape" => "Stage"}, "type" => "list"}, "PutMode" => %{"enum" => ["merge", "overwrite"], "type" => "string"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "ListOfDeployment" => %{"member" => %{"shape" => "Deployment"}, "type" => "list"}, "ListOfModel" => %{"member" => %{"shape" => "Model"}, "type" => "list"}, "UpdateIntegrationRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "Long" => %{"type" => "long"}, "ProviderARN" => %{"type" => "string"}, "IntegrationResponse" => %{"members" => %{"contentHandling" => %{"shape" => "ContentHandlingStrategy"}, "responseParameters" => %{"shape" => "MapOfStringToString"}, "responseTemplates" => %{"shape" => "MapOfStringToString"}, "selectionPattern" => %{"shape" => "String"}, "statusCode" => %{"shape" => "StatusCode"}}, "type" => "structure"}, "AuthorizerType" => %{"enum" => ["TOKEN", "COGNITO_USER_POOLS"], "type" => "string"}, "PutMethodResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "responseModels" => %{"shape" => "MapOfStringToString"}, "responseParameters" => %{"shape" => "MapOfStringToBoolean"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "RequestValidators" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfRequestValidator"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "GetIntegrationRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "DeleteMethodRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "DocumentationPartLocationStatusCode" => %{"pattern" => "^([1-5]\\d\\d|\\*|\\s*)$", "type" => "string"}, "GetDomainNamesRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "GatewayResponse" => %{"members" => %{"defaultResponse" => %{"shape" => "Boolean"}, "responseParameters" => %{"shape" => "MapOfStringToString"}, "responseTemplates" => %{"shape" => "MapOfStringToString"}, "responseType" => %{"shape" => "GatewayResponseType"}, "statusCode" => %{"shape" => "StatusCode"}}, "type" => "structure"}, "UnauthorizedCacheControlHeaderStrategy" => %{"enum" => ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"], "type" => "string"}, "UsagePlans" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfUsagePlan"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "PutRestApiRequest" => %{"members" => %{"body" => %{"shape" => "Blob"}, "failOnWarnings" => %{"location" => "querystring", "locationName" => "failonwarnings", "shape" => "Boolean"}, "mode" => %{"location" => "querystring", "locationName" => "mode", "shape" => "PutMode"}, "parameters" => %{"location" => "querystring", "shape" => "MapOfStringToString"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "payload" => "body", "required" => ["restApiId", "body"], "type" => "structure"}, "CreateDocumentationPartRequest" => %{"members" => %{"location" => %{"shape" => "DocumentationPartLocation"}, "properties" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "location", "properties"], "type" => "structure"}, "GetModelsRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "UpdateModelRequest" => %{"members" => %{"modelName" => %{"location" => "uri", "locationName" => "model_name", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "modelName"], "type" => "structure"}, "Resources" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfResource"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateRequestValidatorRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}, "requestValidatorId" => %{"location" => "uri", "locationName" => "requestvalidator_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "requestValidatorId"], "type" => "structure"}, "ContentHandlingStrategy" => %{"enum" => ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"], "type" => "string"}, "QuotaSettings" => %{"members" => %{"limit" => %{"shape" => "Integer"}, "offset" => %{"shape" => "Integer"}, "period" => %{"shape" => "QuotaPeriodType"}}, "type" => "structure"}, "GetRestApiRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "DeleteDocumentationVersionRequest" => %{"members" => %{"documentationVersion" => %{"location" => "uri", "locationName" => "doc_version", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationVersion"], "type" => "structure"}, "DeleteResourceRequest" => %{"members" => %{"resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId"], "type" => "structure"}, "Integration" => %{"members" => %{"cacheKeyParameters" => %{"shape" => "ListOfString"}, "cacheNamespace" => %{"shape" => "String"}, "contentHandling" => %{"shape" => "ContentHandlingStrategy"}, "credentials" => %{"shape" => "String"}, "httpMethod" => %{"shape" => "String"}, "integrationResponses" => %{"shape" => "MapOfIntegrationResponse"}, "passthroughBehavior" => %{"shape" => "String"}, "requestParameters" => %{"shape" => "MapOfStringToString"}, "requestTemplates" => %{"shape" => "MapOfStringToString"}, "type" => %{"shape" => "IntegrationType"}, "uri" => %{"shape" => "String"}}, "type" => "structure"}, "GetGatewayResponseRequest" => %{"members" => %{"responseType" => %{"location" => "uri", "locationName" => "response_type", "shape" => "GatewayResponseType"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "responseType"], "type" => "structure"}, "ListOfAuthorizer" => %{"member" => %{"shape" => "Authorizer"}, "type" => "list"}, "ListOfDocumentationVersion" => %{"member" => %{"shape" => "DocumentationVersion"}, "type" => "list"}, "GetDomainNameRequest" => %{"members" => %{"domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}}, "required" => ["domainName"], "type" => "structure"}, "MapOfHeaderValues" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "DeleteModelRequest" => %{"members" => %{"modelName" => %{"location" => "uri", "locationName" => "model_name", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "modelName"], "type" => "structure"}, "DeleteClientCertificateRequest" => %{"members" => %{"clientCertificateId" => %{"location" => "uri", "locationName" => "clientcertificate_id", "shape" => "String"}}, "required" => ["clientCertificateId"], "type" => "structure"}, "CreateDomainNameRequest" => %{"members" => %{"certificateArn" => %{"shape" => "String"}, "certificateBody" => %{"shape" => "String"}, "certificateChain" => %{"shape" => "String"}, "certificateName" => %{"shape" => "String"}, "certificatePrivateKey" => %{"shape" => "String"}, "domainName" => %{"shape" => "String"}}, "required" => ["domainName"], "type" => "structure"}, "ListOfUsagePlanKey" => %{"member" => %{"shape" => "UsagePlanKey"}, "type" => "list"}, "GetUsagePlanRequest" => %{"members" => %{"usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId"], "type" => "structure"}, "Stage" => %{"members" => %{"cacheClusterEnabled" => %{"shape" => "Boolean"}, "cacheClusterSize" => %{"shape" => "CacheClusterSize"}, "cacheClusterStatus" => %{"shape" => "CacheClusterStatus"}, "clientCertificateId" => %{"shape" => "String"}, "createdDate" => %{"shape" => "Timestamp"}, "deploymentId" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "documentationVersion" => %{"shape" => "String"}, "lastUpdatedDate" => %{"shape" => "Timestamp"}, "methodSettings" => %{"shape" => "MapOfMethodSettings"}, "stageName" => %{"shape" => "String"}, "variables" => %{"shape" => "MapOfStringToString"}}, "type" => "structure"}, "GetResourceRequest" => %{"members" => %{"embed" => %{"location" => "querystring", "locationName" => "embed", "shape" => "ListOfString"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId"], "type" => "structure"}, "DomainNames" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfDomainName"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "DeleteMethodResponseRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "UsagePlanKey" => %{"members" => %{"id" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "type" => %{"shape" => "String"}, "value" => %{"shape" => "String"}}, "type" => "structure"}, "ImportApiKeysRequest" => %{"members" => %{"body" => %{"shape" => "Blob"}, "failOnWarnings" => %{"location" => "querystring", "locationName" => "failonwarnings", "shape" => "Boolean"}, "format" => %{"location" => "querystring", "locationName" => "format", "shape" => "ApiKeysFormat"}}, "payload" => "body", "required" => ["body", "format"], "type" => "structure"}, "Deployments" => %{"members" => %{"items" => %{"locationName" => "item", "shape" => "ListOfDeployment"}, "position" => %{"shape" => "String"}}, "type" => "structure"}, "MapOfStringToString" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "DeleteDocumentationPartRequest" => %{"members" => %{"documentationPartId" => %{"location" => "uri", "locationName" => "part_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationPartId"], "type" => "structure"}, "GetApiKeysRequest" => %{"members" => %{"customerId" => %{"location" => "querystring", "locationName" => "customerId", "shape" => "String"}, "includeValues" => %{"location" => "querystring", "locationName" => "includeValues", "shape" => "NullableBoolean"}, "limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "nameQuery" => %{"location" => "querystring", "locationName" => "name", "shape" => "String"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "UpdateMethodRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "DeleteUsagePlanKeyRequest" => %{"members" => %{"keyId" => %{"location" => "uri", "locationName" => "keyId", "shape" => "String"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId", "keyId"], "type" => "structure"}, "CreateAuthorizerRequest" => %{"members" => %{"authType" => %{"shape" => "String"}, "authorizerCredentials" => %{"shape" => "String"}, "authorizerResultTtlInSeconds" => %{"shape" => "NullableInteger"}, "authorizerUri" => %{"shape" => "String"}, "identitySource" => %{"shape" => "String"}, "identityValidationExpression" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "providerARNs" => %{"shape" => "ListOfARNs"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "type" => %{"shape" => "AuthorizerType"}}, "required" => ["restApiId", "name", "type", "identitySource"], "type" => "structure"}, "MethodSnapshot" => %{"members" => %{"apiKeyRequired" => %{"shape" => "Boolean"}, "authorizationType" => %{"shape" => "String"}}, "type" => "structure"}, "GetRestApisRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}}, "type" => "structure"}, "DocumentationVersion" => %{"members" => %{"createdDate" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "String"}, "version" => %{"shape" => "String"}}, "type" => "structure"}, "ListOfRequestValidator" => %{"member" => %{"shape" => "RequestValidator"}, "type" => "list"}, "ListOfARNs" => %{"member" => %{"shape" => "ProviderARN"}, "type" => "list"}, "SdkConfigurationProperty" => %{"members" => %{"defaultValue" => %{"shape" => "String"}, "description" => %{"shape" => "String"}, "friendlyName" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "required" => %{"shape" => "Boolean"}}, "type" => "structure"}, "ListOfStageKeys" => %{"member" => %{"shape" => "StageKey"}, "type" => "list"}, "GetRequestValidatorRequest" => %{"members" => %{"requestValidatorId" => %{"location" => "uri", "locationName" => "requestvalidator_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "requestValidatorId"], "type" => "structure"}, "PutIntegrationResponseRequest" => %{"members" => %{"contentHandling" => %{"shape" => "ContentHandlingStrategy"}, "httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "responseParameters" => %{"shape" => "MapOfStringToString"}, "responseTemplates" => %{"shape" => "MapOfStringToString"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "selectionPattern" => %{"shape" => "String"}, "statusCode" => %{"location" => "uri", "locationName" => "status_code", "shape" => "StatusCode"}}, "required" => ["restApiId", "resourceId", "httpMethod", "statusCode"], "type" => "structure"}, "ListOfUsagePlan" => %{"member" => %{"shape" => "UsagePlan"}, "type" => "list"}, "GetExportRequest" => %{"members" => %{"accepts" => %{"location" => "header", "locationName" => "Accept", "shape" => "String"}, "exportType" => %{"location" => "uri", "locationName" => "export_type", "shape" => "String"}, "parameters" => %{"location" => "querystring", "shape" => "MapOfStringToString"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName", "exportType"], "type" => "structure"}, "GetDeploymentRequest" => %{"members" => %{"deploymentId" => %{"location" => "uri", "locationName" => "deployment_id", "shape" => "String"}, "embed" => %{"location" => "querystring", "locationName" => "embed", "shape" => "ListOfString"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "deploymentId"], "type" => "structure"}, "ApiKeysFormat" => %{"enum" => ["csv"], "type" => "string"}, "ListOfLong" => %{"member" => %{"shape" => "Long"}, "type" => "list"}, "UpdateAccountRequest" => %{"members" => %{"patchOperations" => %{"shape" => "ListOfPatchOperation"}}, "type" => "structure"}, "CreateUsagePlanKeyRequest" => %{"members" => %{"keyId" => %{"shape" => "String"}, "keyType" => %{"shape" => "String"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId", "keyId", "keyType"], "type" => "structure"}, "CreateBasePathMappingRequest" => %{"members" => %{"basePath" => %{"shape" => "String"}, "domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}, "restApiId" => %{"shape" => "String"}, "stage" => %{"shape" => "String"}}, "required" => ["domainName", "restApiId"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "GatewayResponseType" => %{"enum" => ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED"], "type" => "string"}, "TestInvokeAuthorizerResponse" => %{"members" => %{"authorization" => %{"shape" => "MapOfStringToList"}, "claims" => %{"shape" => "MapOfStringToString"}, "clientStatus" => %{"shape" => "Integer"}, "latency" => %{"shape" => "Long"}, "log" => %{"shape" => "String"}, "policy" => %{"shape" => "String"}, "principalId" => %{"shape" => "String"}}, "type" => "structure"}, "GetUsagePlanKeysRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "nameQuery" => %{"location" => "querystring", "locationName" => "name", "shape" => "String"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "usagePlanId" => %{"location" => "uri", "locationName" => "usageplanId", "shape" => "String"}}, "required" => ["usagePlanId"], "type" => "structure"}, "PutMethodRequest" => %{"members" => %{"apiKeyRequired" => %{"shape" => "Boolean"}, "authorizationType" => %{"shape" => "String"}, "authorizerId" => %{"shape" => "String"}, "httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "operationName" => %{"shape" => "String"}, "requestModels" => %{"shape" => "MapOfStringToString"}, "requestParameters" => %{"shape" => "MapOfStringToBoolean"}, "requestValidatorId" => %{"shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod", "authorizationType"], "type" => "structure"}, "DeleteDeploymentRequest" => %{"members" => %{"deploymentId" => %{"location" => "uri", "locationName" => "deployment_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "deploymentId"], "type" => "structure"}, "Op" => %{"enum" => ["add", "remove", "replace", "move", "copy", "test"], "type" => "string"}, "Authorizer" => %{"members" => %{"authType" => %{"shape" => "String"}, "authorizerCredentials" => %{"shape" => "String"}, "authorizerResultTtlInSeconds" => %{"shape" => "NullableInteger"}, "authorizerUri" => %{"shape" => "String"}, "id" => %{"shape" => "String"}, "identitySource" => %{"shape" => "String"}, "identityValidationExpression" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "providerARNs" => %{"shape" => "ListOfARNs"}, "type" => %{"shape" => "AuthorizerType"}}, "type" => "structure"}, "GetAuthorizersRequest" => %{"members" => %{"limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "GetApiKeyRequest" => %{"members" => %{"apiKey" => %{"location" => "uri", "locationName" => "api_Key", "shape" => "String"}, "includeValue" => %{"location" => "querystring", "locationName" => "includeValue", "shape" => "NullableBoolean"}}, "required" => ["apiKey"], "type" => "structure"}, "DocumentationPartLocation" => %{"members" => %{"method" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "path" => %{"shape" => "String"}, "statusCode" => %{"shape" => "DocumentationPartLocationStatusCode"}, "type" => %{"shape" => "DocumentationPartType"}}, "required" => ["type"], "type" => "structure"}, "RequestValidator" => %{"members" => %{"id" => %{"shape" => "String"}, "name" => %{"shape" => "String"}, "validateRequestBody" => %{"shape" => "Boolean"}, "validateRequestParameters" => %{"shape" => "Boolean"}}, "type" => "structure"}, "MapOfMethod" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "Method"}}, "FlushStageCacheRequest" => %{"members" => %{"restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageName" => %{"location" => "uri", "locationName" => "stage_name", "shape" => "String"}}, "required" => ["restApiId", "stageName"], "type" => "structure"}, "GetResourcesRequest" => %{"members" => %{"embed" => %{"location" => "querystring", "locationName" => "embed", "shape" => "ListOfString"}, "limit" => %{"location" => "querystring", "locationName" => "limit", "shape" => "NullableInteger"}, "position" => %{"location" => "querystring", "locationName" => "position", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId"], "type" => "structure"}, "UpdateDomainNameRequest" => %{"members" => %{"domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}}, "required" => ["domainName"], "type" => "structure"}, "Blob" => %{"type" => "blob"}, "CreateRequestValidatorRequest" => %{"members" => %{"name" => %{"shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "validateRequestBody" => %{"shape" => "Boolean"}, "validateRequestParameters" => %{"shape" => "Boolean"}}, "required" => ["restApiId"], "type" => "structure"}, "UpdateDocumentationPartRequest" => %{"members" => %{"documentationPartId" => %{"location" => "uri", "locationName" => "part_id", "shape" => "String"}, "patchOperations" => %{"shape" => "ListOfPatchOperation"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "documentationPartId"], "type" => "structure"}, "TestInvokeMethodRequest" => %{"members" => %{"body" => %{"shape" => "String"}, "clientCertificateId" => %{"shape" => "String"}, "headers" => %{"shape" => "MapOfHeaderValues"}, "httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "pathWithQueryString" => %{"shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}, "stageVariables" => %{"shape" => "MapOfStringToString"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}, "DeleteBasePathMappingRequest" => %{"members" => %{"basePath" => %{"location" => "uri", "locationName" => "base_path", "shape" => "String"}, "domainName" => %{"location" => "uri", "locationName" => "domain_name", "shape" => "String"}}, "required" => ["domainName", "basePath"], "type" => "structure"}, "DeleteIntegrationRequest" => %{"members" => %{"httpMethod" => %{"location" => "uri", "locationName" => "http_method", "shape" => "String"}, "resourceId" => %{"location" => "uri", "locationName" => "resource_id", "shape" => "String"}, "restApiId" => %{"location" => "uri", "locationName" => "restapi_id", "shape" => "String"}}, "required" => ["restApiId", "resourceId", "httpMethod"], "type" => "structure"}}
  end
end