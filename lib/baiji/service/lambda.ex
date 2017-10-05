defmodule Baiji.Lambda do
  @moduledoc """
  AWS Lambda

  **Overview**

  This is the *AWS Lambda API Reference*. The AWS Lambda Developer Guide
  provides additional information. For the service overview, see [What is AWS
  Lambda](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html), and for
  information about how the service works, see [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
  in the *AWS Lambda Developer Guide*.
  """

  @doc """
  Adds a permission to the resource policy associated with the specified AWS
  Lambda function. You use resource policies to grant permissions to event
  sources that use *push* model. In a *push* model, event sources (such as
  Amazon S3 and custom applications) invoke your Lambda function. Each
  permission you add to the resource policy allows an event source,
  permission to invoke the Lambda function.

  For information about the push model, see [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html).

  If you are using versioning, the permissions you add are specific to the
  Lambda function version or alias you specify in the `AddPermission` request
  via the `Qualifier` parameter. For more information about versioning, see
  [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:AddPermission` action.
  """
  def add_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/policy",
      input:            input,
      options:          options,
      action:           "AddPermission",
      method:           :post,
      input_shape:      "AddPermissionRequest",
      output_shape:     "AddPermissionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an alias that points to the specified Lambda function version. For
  more information, see [Introduction to AWS Lambda
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

  Alias names are unique for a given function. This requires permission for
  the lambda:CreateAlias action.
  """
  def create_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/aliases",
      input:            input,
      options:          options,
      action:           "CreateAlias",
      method:           :post,
      input_shape:      "CreateAliasRequest",
      output_shape:     "AliasConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Identifies a stream as an event source for a Lambda function. It can be
  either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS Lambda
  invokes the specified function when records are posted to the stream.

  This association between a stream source and a Lambda function is called
  the event source mapping.

  <important> This event source mapping is relevant only in the AWS Lambda
  pull model, where AWS Lambda invokes the function. For more information,
  see [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
  in the *AWS Lambda Developer Guide*.

  </important> You provide mapping information (for example, which stream to
  read from and which Lambda function to invoke) in the request body.

  Each event source, such as an Amazon Kinesis or a DynamoDB stream, can be
  associated with multiple AWS Lambda function. A given Lambda function can
  be associated with multiple AWS event sources.

  If you are using versioning, you can specify a specific function version or
  an alias via the function name parameter. For more information about
  versioning, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the
  `lambda:CreateEventSourceMapping` action.
  """
  def create_event_source_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/event-source-mappings/",
      input:            input,
      options:          options,
      action:           "CreateEventSourceMapping",
      method:           :post,
      input_shape:      "CreateEventSourceMappingRequest",
      output_shape:     "EventSourceMappingConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new Lambda function. The function metadata is created from the
  request parameters, and the code for the function is provided by a .zip
  file in the request body. If the function name already exists, the
  operation will fail. Note that the function name is case-sensitive.

  If you are using versioning, you can also publish a version of the Lambda
  function you are creating using the `Publish` parameter. For more
  information about versioning, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:CreateFunction` action.
  """
  def create_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions",
      input:            input,
      options:          options,
      action:           "CreateFunction",
      method:           :post,
      input_shape:      "CreateFunctionRequest",
      output_shape:     "FunctionConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified Lambda function alias. For more information, see
  [Introduction to AWS Lambda
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

  This requires permission for the lambda:DeleteAlias action.
  """
  def delete_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "DeleteAlias",
      method:           :delete,
      input_shape:      "DeleteAliasRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes an event source mapping. This means AWS Lambda will no longer
  invoke the function for events in the associated source.

  This operation requires permission for the
  `lambda:DeleteEventSourceMapping` action.
  """
  def delete_event_source_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "DeleteEventSourceMapping",
      method:           :delete,
      input_shape:      "DeleteEventSourceMappingRequest",
      output_shape:     "EventSourceMappingConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified Lambda function code and configuration.

  If you are using the versioning feature and you don't specify a function
  version in your `DeleteFunction` request, AWS Lambda will delete the
  function, including all its versions, and any aliases pointing to the
  function versions. To delete a specific function version, you must provide
  the function version via the `Qualifier` parameter. For information about
  function versioning, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  When you delete a function the associated resource policy is also deleted.
  You will need to delete the event source mappings explicitly.

  This operation requires permission for the `lambda:DeleteFunction` action.
  """
  def delete_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}",
      input:            input,
      options:          options,
      action:           "DeleteFunction",
      method:           :delete,
      input_shape:      "DeleteFunctionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a customer's account settings.

  You can use this operation to retrieve Lambda limits information, such as
  code size and concurrency limits. For more information about limits, see
  [AWS Lambda
  Limits](http://docs.aws.amazon.com/lambda/latest/dg/limits.html). You can
  also retrieve resource usage statistics, such as code storage usage and
  function count.
  """
  def get_account_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2016-08-19/account-settings/",
      input:            input,
      options:          options,
      action:           "GetAccountSettings",
      method:           :get,
      input_shape:      "GetAccountSettingsRequest",
      output_shape:     "GetAccountSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the specified alias information such as the alias ARN, description,
  and function version it is pointing to. For more information, see
  [Introduction to AWS Lambda
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

  This requires permission for the `lambda:GetAlias` action.
  """
  def get_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "GetAlias",
      method:           :get,
      input_shape:      "GetAliasRequest",
      output_shape:     "AliasConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns configuration information for the specified event source mapping
  (see `CreateEventSourceMapping`).

  This operation requires permission for the `lambda:GetEventSourceMapping`
  action.
  """
  def get_event_source_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "GetEventSourceMapping",
      method:           :get,
      input_shape:      "GetEventSourceMappingRequest",
      output_shape:     "EventSourceMappingConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the configuration information of the Lambda function and a
  presigned URL link to the .zip file you uploaded with `CreateFunction` so
  you can download the .zip file. Note that the URL is valid for up to 10
  minutes. The configuration information is the same information you provided
  as parameters when uploading the function.

  Using the optional `Qualifier` parameter, you can specify a specific
  function version for which you want this information. If you don't specify
  this parameter, the API uses unqualified function ARN which return
  information about the `$LATEST` version of the Lambda function. For more
  information, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:GetFunction` action.
  """
  def get_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}",
      input:            input,
      options:          options,
      action:           "GetFunction",
      method:           :get,
      input_shape:      "GetFunctionRequest",
      output_shape:     "GetFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the configuration information of the Lambda function. This the same
  information you provided as parameters when uploading the function by using
  `CreateFunction`.

  If you are using the versioning feature, you can retrieve this information
  for a specific function version by using the optional `Qualifier` parameter
  and specifying the function version or alias that points to it. If you
  don't provide it, the API returns information about the $LATEST version of
  the function. For more information about versioning, see [AWS Lambda
  Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the
  `lambda:GetFunctionConfiguration` operation.
  """
  def get_function_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/configuration",
      input:            input,
      options:          options,
      action:           "GetFunctionConfiguration",
      method:           :get,
      input_shape:      "GetFunctionConfigurationRequest",
      output_shape:     "FunctionConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the resource policy associated with the specified Lambda function.

  If you are using the versioning feature, you can get the resource policy
  associated with the specific Lambda function version or alias by specifying
  the version or alias name using the `Qualifier` parameter. For more
  information about versioning, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  You need permission for the `lambda:GetPolicy action.`
  """
  def get_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/policy",
      input:            input,
      options:          options,
      action:           "GetPolicy",
      method:           :get,
      input_shape:      "GetPolicyRequest",
      output_shape:     "GetPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Invokes a specific Lambda function. For an example, see [Create the Lambda
  Function and Test It
  Manually](http://docs.aws.amazon.com/lambda/latest/dg/with-dynamodb-create-function.html#with-dbb-invoke-manually).

  If you are using the versioning feature, you can invoke the specific
  function version by providing function version or alias name that is
  pointing to the function version using the `Qualifier` parameter in the
  request. If you don't provide the `Qualifier` parameter, the `$LATEST`
  version of the Lambda function is invoked. Invocations occur at least once
  in response to an event and functions must be idempotent to handle this.
  For information about the versioning feature, see [AWS Lambda Function
  Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:InvokeFunction` action.
  """
  def invoke(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/invocations",
      input:            input,
      options:          options,
      action:           "Invoke",
      method:           :post,
      input_shape:      "InvocationRequest",
      output_shape:     "InvocationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  <important> This API is deprecated. We recommend you use `Invoke` API (see
  `Invoke`).

  </important> Submits an invocation request to AWS Lambda. Upon receiving
  the request, Lambda executes the specified function asynchronously. To see
  the logs generated by the Lambda function execution, see the CloudWatch
  Logs console.

  This operation requires permission for the `lambda:InvokeFunction` action.
  """
  def invoke_async(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2014-11-13/functions/{FunctionName}/invoke-async/",
      input:            input,
      options:          options,
      action:           "InvokeAsync",
      method:           :post,
      input_shape:      "InvokeAsyncRequest",
      output_shape:     "InvokeAsyncResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns list of aliases created for a Lambda function. For each alias, the
  response includes information such as the alias ARN, description, alias
  name, and the function version to which it points. For more information,
  see [Introduction to AWS Lambda
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

  This requires permission for the lambda:ListAliases action.
  """
  def list_aliases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/aliases",
      input:            input,
      options:          options,
      action:           "ListAliases",
      method:           :get,
      input_shape:      "ListAliasesRequest",
      output_shape:     "ListAliasesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of event source mappings you created using the
  `CreateEventSourceMapping` (see `CreateEventSourceMapping`).

  For each mapping, the API returns configuration information. You can
  optionally specify filters to retrieve specific event source mappings.

  If you are using the versioning feature, you can get list of event source
  mappings for a specific Lambda function version or an alias as described in
  the `FunctionName` parameter. For information about the versioning feature,
  see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:ListEventSourceMappings`
  action.
  """
  def list_event_source_mappings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/event-source-mappings/",
      input:            input,
      options:          options,
      action:           "ListEventSourceMappings",
      method:           :get,
      input_shape:      "ListEventSourceMappingsRequest",
      output_shape:     "ListEventSourceMappingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of your Lambda functions. For each function, the response
  includes the function configuration information. You must use `GetFunction`
  to retrieve the code for your function.

  This operation requires permission for the `lambda:ListFunctions` action.

  If you are using the versioning feature, you can list all of your functions
  or only `$LATEST` versions. For information about the versioning feature,
  see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def list_functions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/",
      input:            input,
      options:          options,
      action:           "ListFunctions",
      method:           :get,
      input_shape:      "ListFunctionsRequest",
      output_shape:     "ListFunctionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of tags assigned to a function when supplied the function
  ARN (Amazon Resource Name).
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "ListTags",
      method:           :get,
      input_shape:      "ListTagsRequest",
      output_shape:     "ListTagsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  List all versions of a function. For information about the versioning
  feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def list_versions_by_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/versions",
      input:            input,
      options:          options,
      action:           "ListVersionsByFunction",
      method:           :get,
      input_shape:      "ListVersionsByFunctionRequest",
      output_shape:     "ListVersionsByFunctionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Publishes a version of your function from the current snapshot of $LATEST.
  That is, AWS Lambda takes a snapshot of the function code and configuration
  information from $LATEST and publishes a new version. The code and
  configuration cannot be modified after publication. For information about
  the versioning feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def publish_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/versions",
      input:            input,
      options:          options,
      action:           "PublishVersion",
      method:           :post,
      input_shape:      "PublishVersionRequest",
      output_shape:     "FunctionConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  You can remove individual permissions from an resource policy associated
  with a Lambda function by providing a statement ID that you provided when
  you added the permission.

  If you are using versioning, the permissions you remove are specific to the
  Lambda function version or alias you specify in the `AddPermission` request
  via the `Qualifier` parameter. For more information about versioning, see
  [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  Note that removal of a permission will cause an active event source to lose
  permission to the function.

  You need permission for the `lambda:RemovePermission` action.
  """
  def remove_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/policy/{StatementId}",
      input:            input,
      options:          options,
      action:           "RemovePermission",
      method:           :delete,
      input_shape:      "RemovePermissionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a list of tags (key-value pairs) on the Lambda function. Requires
  the Lambda function ARN (Amazon Resource Name). If a key is specified
  without a value, Lambda creates a tag with the specified key and a value of
  null.
  """
  def tag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "TagResource",
      method:           :post,
      input_shape:      "TagResourceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes tags from a Lambda function. Requires the function ARN (Amazon
  Resource Name).
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "UntagResource",
      method:           :delete,
      input_shape:      "UntagResourceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Using this API you can update the function version to which the alias
  points and the alias description. For more information, see [Introduction
  to AWS Lambda
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

  This requires permission for the lambda:UpdateAlias action.
  """
  def update_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "UpdateAlias",
      method:           :put,
      input_shape:      "UpdateAliasRequest",
      output_shape:     "AliasConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  You can update an event source mapping. This is useful if you want to
  change the parameters of the existing mapping without losing your position
  in the stream. You can change which function will receive the stream
  records, but to change the stream itself, you must create a new mapping.

  If you are using the versioning feature, you can update the event source
  mapping to map to a specific Lambda function version or alias as described
  in the `FunctionName` parameter. For information about the versioning
  feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  If you disable the event source mapping, AWS Lambda stops polling. If you
  enable again, it will resume polling from the time it had stopped polling,
  so you don't lose processing of any records. However, if you delete event
  source mapping and create it again, it will reset.

  This operation requires permission for the
  `lambda:UpdateEventSourceMapping` action.
  """
  def update_event_source_mapping(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "UpdateEventSourceMapping",
      method:           :put,
      input_shape:      "UpdateEventSourceMappingRequest",
      output_shape:     "EventSourceMappingConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the code for the specified Lambda function. This operation must
  only be used on an existing Lambda function and cannot be used to update
  the function configuration.

  If you are using the versioning feature, note this API will always update
  the $LATEST version of your Lambda function. For information about the
  versioning feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the `lambda:UpdateFunctionCode`
  action.
  """
  def update_function_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/code",
      input:            input,
      options:          options,
      action:           "UpdateFunctionCode",
      method:           :put,
      input_shape:      "UpdateFunctionCodeRequest",
      output_shape:     "FunctionConfiguration",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the configuration parameters for the specified Lambda function by
  using the values provided in the request. You provide only the parameters
  you want to change. This operation must only be used on an existing Lambda
  function and cannot be used to update the function's code.

  If you are using the versioning feature, note this API will always update
  the $LATEST version of your Lambda function. For information about the
  versioning feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

  This operation requires permission for the
  `lambda:UpdateFunctionConfiguration` action.
  """
  def update_function_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/2015-03-31/functions/{FunctionName}/configuration",
      input:            input,
      options:          options,
      action:           "UpdateFunctionConfiguration",
      method:           :put,
      input_shape:      "UpdateFunctionConfigurationRequest",
      output_shape:     "FunctionConfiguration",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "lambda",
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"NamespacedFunctionName" => %{"max" => 170, "min" => 1, "pattern" => "(arn:aws:lambda:)?([a-z]{2}-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?", "type" => "string"}, "SubnetIds" => %{"max" => 16, "member" => %{"shape" => "SubnetId"}, "type" => "list"}, "MaxListItems" => %{"max" => 10000, "min" => 1, "type" => "integer"}, "InvocationType" => %{"enum" => ["Event", "RequestResponse", "DryRun"], "type" => "string"}, "EnvironmentVariableName" => %{"pattern" => "[a-zA-Z]([a-zA-Z0-9_])+", "sensitive" => true, "type" => "string"}, "TagKeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "Environment" => %{"members" => %{"Variables" => %{"shape" => "EnvironmentVariables"}}, "type" => "structure"}, "SourceOwner" => %{"pattern" => "\\d{12}", "type" => "string"}, "ListFunctionsResponse" => %{"members" => %{"Functions" => %{"shape" => "FunctionList"}, "NextMarker" => %{"shape" => "String"}}, "type" => "structure"}, "TracingMode" => %{"enum" => ["Active", "PassThrough"], "type" => "string"}, "ListVersionsByFunctionRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "String"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxListItems"}}, "required" => ["FunctionName"], "type" => "structure"}, "String" => %{"type" => "string"}, "DeadLetterConfig" => %{"members" => %{"TargetArn" => %{"shape" => "ResourceArn"}}, "type" => "structure"}, "GetFunctionRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}}, "required" => ["FunctionName"], "type" => "structure"}, "FunctionName" => %{"max" => 140, "min" => 1, "pattern" => "(arn:aws:lambda:)?([a-z]{2}-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?", "type" => "string"}, "Boolean" => %{"type" => "boolean"}, "InvocationRequest" => %{"members" => %{"ClientContext" => %{"location" => "header", "locationName" => "X-Amz-Client-Context", "shape" => "String"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "InvocationType" => %{"location" => "header", "locationName" => "X-Amz-Invocation-Type", "shape" => "InvocationType"}, "LogType" => %{"location" => "header", "locationName" => "X-Amz-Log-Type", "shape" => "LogType"}, "Payload" => %{"shape" => "Blob"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}}, "payload" => "Payload", "required" => ["FunctionName"], "type" => "structure"}, "SensitiveString" => %{"sensitive" => true, "type" => "string"}, "MemorySize" => %{"max" => 1536, "min" => 128, "type" => "integer"}, "ServiceException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "VpcConfigResponse" => %{"members" => %{"SecurityGroupIds" => %{"shape" => "SecurityGroupIds"}, "SubnetIds" => %{"shape" => "SubnetIds"}, "VpcId" => %{"shape" => "VpcId"}}, "type" => "structure"}, "ListTagsResponse" => %{"members" => %{"Tags" => %{"shape" => "Tags"}}, "type" => "structure"}, "DeleteAliasRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Name" => %{"location" => "uri", "locationName" => "Name", "shape" => "Alias"}}, "required" => ["FunctionName", "Name"], "type" => "structure"}, "AddPermissionRequest" => %{"members" => %{"Action" => %{"shape" => "Action"}, "EventSourceToken" => %{"shape" => "EventSourceToken"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Principal" => %{"shape" => "Principal"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}, "SourceAccount" => %{"shape" => "SourceOwner"}, "SourceArn" => %{"shape" => "Arn"}, "StatementId" => %{"shape" => "StatementId"}}, "required" => ["FunctionName", "StatementId", "Action", "Principal"], "type" => "structure"}, "UpdateFunctionConfigurationRequest" => %{"members" => %{"DeadLetterConfig" => %{"shape" => "DeadLetterConfig"}, "Description" => %{"shape" => "Description"}, "Environment" => %{"shape" => "Environment"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Handler" => %{"shape" => "Handler"}, "KMSKeyArn" => %{"shape" => "KMSKeyArn"}, "MemorySize" => %{"shape" => "MemorySize"}, "Role" => %{"shape" => "RoleArn"}, "Runtime" => %{"shape" => "Runtime"}, "Timeout" => %{"shape" => "Timeout"}, "TracingConfig" => %{"shape" => "TracingConfig"}, "VpcConfig" => %{"shape" => "VpcConfig"}}, "required" => ["FunctionName"], "type" => "structure"}, "InvalidRuntimeException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "KMSKeyArn" => %{"pattern" => "(arn:aws:[a-z0-9-.]+:.*)|()", "type" => "string"}, "ENILimitReachedException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "SecurityGroupIds" => %{"max" => 5, "member" => %{"shape" => "SecurityGroupId"}, "type" => "list"}, "VpcConfig" => %{"members" => %{"SecurityGroupIds" => %{"shape" => "SecurityGroupIds"}, "SubnetIds" => %{"shape" => "SubnetIds"}}, "type" => "structure"}, "InvalidParameterValueException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "CreateEventSourceMappingRequest" => %{"members" => %{"BatchSize" => %{"shape" => "BatchSize"}, "Enabled" => %{"shape" => "Enabled"}, "EventSourceArn" => %{"shape" => "Arn"}, "FunctionName" => %{"shape" => "FunctionName"}, "StartingPosition" => %{"shape" => "EventSourcePosition"}, "StartingPositionTimestamp" => %{"shape" => "Date"}}, "required" => ["EventSourceArn", "FunctionName", "StartingPosition"], "type" => "structure"}, "AliasConfiguration" => %{"members" => %{"AliasArn" => %{"shape" => "FunctionArn"}, "Description" => %{"shape" => "Description"}, "FunctionVersion" => %{"shape" => "Version"}, "Name" => %{"shape" => "Alias"}}, "type" => "structure"}, "ResourceConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "ThrottleReason" => %{"enum" => ["ConcurrentInvocationLimitExceeded", "FunctionInvocationRateLimitExceeded", "CallerRateLimitExceeded"], "type" => "string"}, "AccountUsage" => %{"members" => %{"FunctionCount" => %{"shape" => "Long"}, "TotalCodeSize" => %{"shape" => "Long"}}, "type" => "structure"}, "PublishVersionRequest" => %{"members" => %{"CodeSha256" => %{"shape" => "String"}, "Description" => %{"shape" => "Description"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}}, "required" => ["FunctionName"], "type" => "structure"}, "TooManyRequestsException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"Reason" => %{"shape" => "ThrottleReason"}, "Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}, "retryAfterSeconds" => %{"location" => "header", "locationName" => "Retry-After", "shape" => "String"}}, "type" => "structure"}, "S3Bucket" => %{"max" => 63, "min" => 3, "pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$", "type" => "string"}, "HttpStatus" => %{"type" => "integer"}, "ListAliasesResponse" => %{"members" => %{"Aliases" => %{"shape" => "AliasList"}, "NextMarker" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidZipFileException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "MasterRegion" => %{"pattern" => "ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}", "type" => "string"}, "ListTagsRequest" => %{"members" => %{"Resource" => %{"location" => "uri", "locationName" => "ARN", "shape" => "FunctionArn"}}, "required" => ["Resource"], "type" => "structure"}, "ListAliasesRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "FunctionVersion" => %{"location" => "querystring", "locationName" => "FunctionVersion", "shape" => "Version"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "String"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxListItems"}}, "required" => ["FunctionName"], "type" => "structure"}, "InvokeAsyncResponse" => %{"deprecated" => true, "members" => %{"Status" => %{"location" => "statusCode", "shape" => "HttpStatus"}}, "type" => "structure"}, "KMSAccessDeniedException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "Description" => %{"max" => 256, "min" => 0, "type" => "string"}, "UnsupportedMediaTypeException" => %{"error" => %{"httpStatusCode" => 415}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "FunctionCode" => %{"members" => %{"S3Bucket" => %{"shape" => "S3Bucket"}, "S3Key" => %{"shape" => "S3Key"}, "S3ObjectVersion" => %{"shape" => "S3ObjectVersion"}, "ZipFile" => %{"shape" => "Blob"}}, "type" => "structure"}, "VpcId" => %{"type" => "string"}, "FunctionCodeLocation" => %{"members" => %{"Location" => %{"shape" => "String"}, "RepositoryType" => %{"shape" => "String"}}, "type" => "structure"}, "Version" => %{"max" => 1024, "min" => 1, "pattern" => "(\\$LATEST|[0-9]+)", "type" => "string"}, "Action" => %{"pattern" => "(lambda:[*]|lambda:[a-zA-Z]+|[*])", "type" => "string"}, "UpdateEventSourceMappingRequest" => %{"members" => %{"BatchSize" => %{"shape" => "BatchSize"}, "Enabled" => %{"shape" => "Enabled"}, "FunctionName" => %{"shape" => "FunctionName"}, "UUID" => %{"location" => "uri", "locationName" => "UUID", "shape" => "String"}}, "required" => ["UUID"], "type" => "structure"}, "GetAccountSettingsRequest" => %{"members" => %{}, "type" => "structure"}, "CodeStorageExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "RoleArn" => %{"pattern" => "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+", "type" => "string"}, "EventSourceMappingsList" => %{"member" => %{"shape" => "EventSourceMappingConfiguration"}, "type" => "list"}, "S3ObjectVersion" => %{"max" => 1024, "min" => 1, "type" => "string"}, "UntagResourceRequest" => %{"members" => %{"Resource" => %{"location" => "uri", "locationName" => "ARN", "shape" => "FunctionArn"}, "TagKeys" => %{"location" => "querystring", "locationName" => "tagKeys", "shape" => "TagKeyList"}}, "required" => ["Resource", "TagKeys"], "type" => "structure"}, "StatementId" => %{"max" => 100, "min" => 1, "pattern" => "([a-zA-Z0-9-_]+)", "type" => "string"}, "CreateFunctionRequest" => %{"members" => %{"Code" => %{"shape" => "FunctionCode"}, "DeadLetterConfig" => %{"shape" => "DeadLetterConfig"}, "Description" => %{"shape" => "Description"}, "Environment" => %{"shape" => "Environment"}, "FunctionName" => %{"shape" => "FunctionName"}, "Handler" => %{"shape" => "Handler"}, "KMSKeyArn" => %{"shape" => "KMSKeyArn"}, "MemorySize" => %{"shape" => "MemorySize"}, "Publish" => %{"shape" => "Boolean"}, "Role" => %{"shape" => "RoleArn"}, "Runtime" => %{"shape" => "Runtime"}, "Tags" => %{"shape" => "Tags"}, "Timeout" => %{"shape" => "Timeout"}, "TracingConfig" => %{"shape" => "TracingConfig"}, "VpcConfig" => %{"shape" => "VpcConfig"}}, "required" => ["FunctionName", "Runtime", "Role", "Handler", "Code"], "type" => "structure"}, "AccountLimit" => %{"members" => %{"CodeSizeUnzipped" => %{"shape" => "Long"}, "CodeSizeZipped" => %{"shape" => "Long"}, "ConcurrentExecutions" => %{"shape" => "Integer"}, "TotalCodeSize" => %{"shape" => "Long"}}, "type" => "structure"}, "EnvironmentVariables" => %{"key" => %{"shape" => "EnvironmentVariableName"}, "sensitive" => true, "type" => "map", "value" => %{"shape" => "EnvironmentVariableValue"}}, "Tags" => %{"key" => %{"shape" => "TagKey"}, "type" => "map", "value" => %{"shape" => "TagValue"}}, "Timestamp" => %{"type" => "string"}, "NameSpacedFunctionArn" => %{"pattern" => "arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?", "type" => "string"}, "KMSInvalidStateException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "BlobStream" => %{"streaming" => true, "type" => "blob"}, "EnvironmentError" => %{"members" => %{"ErrorCode" => %{"shape" => "String"}, "Message" => %{"shape" => "SensitiveString"}}, "type" => "structure"}, "DeleteFunctionRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}}, "required" => ["FunctionName"], "type" => "structure"}, "EventSourceMappingConfiguration" => %{"members" => %{"BatchSize" => %{"shape" => "BatchSize"}, "EventSourceArn" => %{"shape" => "Arn"}, "FunctionArn" => %{"shape" => "FunctionArn"}, "LastModified" => %{"shape" => "Date"}, "LastProcessingResult" => %{"shape" => "String"}, "State" => %{"shape" => "String"}, "StateTransitionReason" => %{"shape" => "String"}, "UUID" => %{"shape" => "String"}}, "type" => "structure"}, "PolicyLengthExceededException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "EC2ThrottledException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "EC2AccessDeniedException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidSecurityGroupIDException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "TagValue" => %{"type" => "string"}, "DeleteEventSourceMappingRequest" => %{"members" => %{"UUID" => %{"location" => "uri", "locationName" => "UUID", "shape" => "String"}}, "required" => ["UUID"], "type" => "structure"}, "RequestTooLargeException" => %{"error" => %{"httpStatusCode" => 413}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "Alias" => %{"max" => 128, "min" => 1, "pattern" => "(?!^[0-9]+$)([a-zA-Z0-9-_]+)", "type" => "string"}, "Qualifier" => %{"max" => 128, "min" => 1, "pattern" => "(|[a-zA-Z0-9$_-]+)", "type" => "string"}, "InvokeAsyncRequest" => %{"deprecated" => true, "members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "InvokeArgs" => %{"shape" => "BlobStream"}}, "payload" => "InvokeArgs", "required" => ["FunctionName", "InvokeArgs"], "type" => "structure"}, "GetFunctionConfigurationRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}}, "required" => ["FunctionName"], "type" => "structure"}, "Arn" => %{"pattern" => "arn:aws:([a-zA-Z0-9\\-])+:([a-z]{2}-[a-z]+-\\d{1})?:(\\d{12})?:(.*)", "type" => "string"}, "SecurityGroupId" => %{"type" => "string"}, "FunctionConfiguration" => %{"members" => %{"CodeSha256" => %{"shape" => "String"}, "CodeSize" => %{"shape" => "Long"}, "DeadLetterConfig" => %{"shape" => "DeadLetterConfig"}, "Description" => %{"shape" => "Description"}, "Environment" => %{"shape" => "EnvironmentResponse"}, "FunctionArn" => %{"shape" => "NameSpacedFunctionArn"}, "FunctionName" => %{"shape" => "NamespacedFunctionName"}, "Handler" => %{"shape" => "Handler"}, "KMSKeyArn" => %{"shape" => "KMSKeyArn"}, "LastModified" => %{"shape" => "Timestamp"}, "MasterArn" => %{"shape" => "FunctionArn"}, "MemorySize" => %{"shape" => "MemorySize"}, "Role" => %{"shape" => "RoleArn"}, "Runtime" => %{"shape" => "Runtime"}, "Timeout" => %{"shape" => "Timeout"}, "TracingConfig" => %{"shape" => "TracingConfigResponse"}, "Version" => %{"shape" => "Version"}, "VpcConfig" => %{"shape" => "VpcConfigResponse"}}, "type" => "structure"}, "GetPolicyResponse" => %{"members" => %{"Policy" => %{"shape" => "String"}}, "type" => "structure"}, "FunctionArn" => %{"pattern" => "arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?", "type" => "string"}, "GetEventSourceMappingRequest" => %{"members" => %{"UUID" => %{"location" => "uri", "locationName" => "UUID", "shape" => "String"}}, "required" => ["UUID"], "type" => "structure"}, "EventSourcePosition" => %{"enum" => ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"], "type" => "string"}, "ResourceArn" => %{"pattern" => "(arn:aws:[a-z0-9-.]+:.*)|()", "type" => "string"}, "TagResourceRequest" => %{"members" => %{"Resource" => %{"location" => "uri", "locationName" => "ARN", "shape" => "FunctionArn"}, "Tags" => %{"shape" => "Tags"}}, "required" => ["Resource", "Tags"], "type" => "structure"}, "Long" => %{"type" => "long"}, "ListVersionsByFunctionResponse" => %{"members" => %{"NextMarker" => %{"shape" => "String"}, "Versions" => %{"shape" => "FunctionList"}}, "type" => "structure"}, "SubnetId" => %{"type" => "string"}, "Handler" => %{"max" => 128, "pattern" => "[^\\s]+", "type" => "string"}, "BatchSize" => %{"max" => 10000, "min" => 1, "type" => "integer"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "ListEventSourceMappingsResponse" => %{"members" => %{"EventSourceMappings" => %{"shape" => "EventSourceMappingsList"}, "NextMarker" => %{"shape" => "String"}}, "type" => "structure"}, "InvocationResponse" => %{"members" => %{"FunctionError" => %{"location" => "header", "locationName" => "X-Amz-Function-Error", "shape" => "String"}, "LogResult" => %{"location" => "header", "locationName" => "X-Amz-Log-Result", "shape" => "String"}, "Payload" => %{"shape" => "Blob"}, "StatusCode" => %{"location" => "statusCode", "shape" => "Integer"}}, "payload" => "Payload", "type" => "structure"}, "UpdateAliasRequest" => %{"members" => %{"Description" => %{"shape" => "Description"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "FunctionVersion" => %{"shape" => "Version"}, "Name" => %{"location" => "uri", "locationName" => "Name", "shape" => "Alias"}}, "required" => ["FunctionName", "Name"], "type" => "structure"}, "ListEventSourceMappingsRequest" => %{"members" => %{"EventSourceArn" => %{"location" => "querystring", "locationName" => "EventSourceArn", "shape" => "Arn"}, "FunctionName" => %{"location" => "querystring", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "String"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxListItems"}}, "type" => "structure"}, "KMSDisabledException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "TracingConfig" => %{"members" => %{"Mode" => %{"shape" => "TracingMode"}}, "type" => "structure"}, "TracingConfigResponse" => %{"members" => %{"Mode" => %{"shape" => "TracingMode"}}, "type" => "structure"}, "GetAccountSettingsResponse" => %{"members" => %{"AccountLimit" => %{"shape" => "AccountLimit"}, "AccountUsage" => %{"shape" => "AccountUsage"}}, "type" => "structure"}, "Runtime" => %{"enum" => ["nodejs", "nodejs4.3", "nodejs6.10", "java8", "python2.7", "python3.6", "dotnetcore1.0", "nodejs4.3-edge"], "type" => "string"}, "FunctionVersion" => %{"enum" => ["ALL"], "type" => "string"}, "Principal" => %{"pattern" => ".*", "type" => "string"}, "RemovePermissionRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}, "StatementId" => %{"location" => "uri", "locationName" => "StatementId", "shape" => "NamespacedStatementId"}}, "required" => ["FunctionName", "StatementId"], "type" => "structure"}, "GetPolicyRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "NamespacedFunctionName"}, "Qualifier" => %{"location" => "querystring", "locationName" => "Qualifier", "shape" => "Qualifier"}}, "required" => ["FunctionName"], "type" => "structure"}, "EnvironmentVariableValue" => %{"sensitive" => true, "type" => "string"}, "GetAliasRequest" => %{"members" => %{"FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Name" => %{"location" => "uri", "locationName" => "Name", "shape" => "Alias"}}, "required" => ["FunctionName", "Name"], "type" => "structure"}, "CreateAliasRequest" => %{"members" => %{"Description" => %{"shape" => "Description"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "FunctionVersion" => %{"shape" => "Version"}, "Name" => %{"shape" => "Alias"}}, "required" => ["FunctionName", "Name", "FunctionVersion"], "type" => "structure"}, "AliasList" => %{"member" => %{"shape" => "AliasConfiguration"}, "type" => "list"}, "FunctionList" => %{"member" => %{"shape" => "FunctionConfiguration"}, "type" => "list"}, "TagKey" => %{"type" => "string"}, "Enabled" => %{"type" => "boolean"}, "InvalidSubnetIDException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidRequestContentException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"Type" => %{"shape" => "String"}, "message" => %{"shape" => "String"}}, "type" => "structure"}, "EnvironmentResponse" => %{"members" => %{"Error" => %{"shape" => "EnvironmentError"}, "Variables" => %{"shape" => "EnvironmentVariables"}}, "type" => "structure"}, "NamespacedStatementId" => %{"max" => 100, "min" => 1, "pattern" => "([a-zA-Z0-9-_.]+)", "type" => "string"}, "UpdateFunctionCodeRequest" => %{"members" => %{"DryRun" => %{"shape" => "Boolean"}, "FunctionName" => %{"location" => "uri", "locationName" => "FunctionName", "shape" => "FunctionName"}, "Publish" => %{"shape" => "Boolean"}, "S3Bucket" => %{"shape" => "S3Bucket"}, "S3Key" => %{"shape" => "S3Key"}, "S3ObjectVersion" => %{"shape" => "S3ObjectVersion"}, "ZipFile" => %{"shape" => "Blob"}}, "required" => ["FunctionName"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "KMSNotFoundException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "AddPermissionResponse" => %{"members" => %{"Statement" => %{"shape" => "String"}}, "type" => "structure"}, "ListFunctionsRequest" => %{"members" => %{"FunctionVersion" => %{"location" => "querystring", "locationName" => "FunctionVersion", "shape" => "FunctionVersion"}, "Marker" => %{"location" => "querystring", "locationName" => "Marker", "shape" => "String"}, "MasterRegion" => %{"location" => "querystring", "locationName" => "MasterRegion", "shape" => "MasterRegion"}, "MaxItems" => %{"location" => "querystring", "locationName" => "MaxItems", "shape" => "MaxListItems"}}, "type" => "structure"}, "S3Key" => %{"max" => 1024, "min" => 1, "type" => "string"}, "Timeout" => %{"min" => 1, "type" => "integer"}, "EC2UnexpectedException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"EC2ErrorCode" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "Blob" => %{"sensitive" => true, "type" => "blob"}, "SubnetIPAddressLimitReachedException" => %{"error" => %{"httpStatusCode" => 502}, "exception" => true, "members" => %{"Message" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "type" => "structure"}, "EventSourceToken" => %{"max" => 256, "min" => 0, "pattern" => "[a-zA-Z0-9._\\-]+", "type" => "string"}, "LogType" => %{"enum" => ["None", "Tail"], "type" => "string"}, "GetFunctionResponse" => %{"members" => %{"Code" => %{"shape" => "FunctionCodeLocation"}, "Configuration" => %{"shape" => "FunctionConfiguration"}, "Tags" => %{"shape" => "Tags"}}, "type" => "structure"}}
  end
end