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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/policy",
      input:            input,
      options:          options,
      action:           "AddPermission",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/aliases",
      input:            input,
      options:          options,
      action:           "CreateAlias",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/event-source-mappings/",
      input:            input,
      options:          options,
      action:           "CreateEventSourceMapping",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions",
      input:            input,
      options:          options,
      action:           "CreateFunction",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "DeleteAlias",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :delete
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
      service:          "lambda",
      endpoint:         "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "DeleteEventSourceMapping",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :delete
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}",
      input:            input,
      options:          options,
      action:           "DeleteFunction",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :delete
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
      service:          "lambda",
      endpoint:         "/2016-08-19/account-settings/",
      input:            input,
      options:          options,
      action:           "GetAccountSettings",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "GetAlias",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "GetEventSourceMapping",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}",
      input:            input,
      options:          options,
      action:           "GetFunction",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/configuration",
      input:            input,
      options:          options,
      action:           "GetFunctionConfiguration",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/policy",
      input:            input,
      options:          options,
      action:           "GetPolicy",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/invocations",
      input:            input,
      options:          options,
      action:           "Invoke",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2014-11-13/functions/{FunctionName}/invoke-async/",
      input:            input,
      options:          options,
      action:           "InvokeAsync",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/aliases",
      input:            input,
      options:          options,
      action:           "ListAliases",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/event-source-mappings/",
      input:            input,
      options:          options,
      action:           "ListEventSourceMappings",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/",
      input:            input,
      options:          options,
      action:           "ListFunctions",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
    }
  end
  
  @doc """
  Returns a list of tags assigned to a function when supplied the function
  ARN (Amazon Resource Name).
  """
  def list_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "lambda",
      endpoint:         "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "ListTags",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
    }
  end
  
  @doc """
  List all versions of a function. For information about the versioning
  feature, see [AWS Lambda Function Versioning and
  Aliases](http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def list_versions_by_function(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/versions",
      input:            input,
      options:          options,
      action:           "ListVersionsByFunction",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :get
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/versions",
      input:            input,
      options:          options,
      action:           "PublishVersion",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/policy/{StatementId}",
      input:            input,
      options:          options,
      action:           "RemovePermission",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :delete
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
      service:          "lambda",
      endpoint:         "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "TagResource",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :post
    }
  end
  
  @doc """
  Removes tags from a Lambda function. Requires the function ARN (Amazon
  Resource Name).
  """
  def untag_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "lambda",
      endpoint:         "/2017-03-31/tags/{ARN}",
      input:            input,
      options:          options,
      action:           "UntagResource",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :delete
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/aliases/{Name}",
      input:            input,
      options:          options,
      action:           "UpdateAlias",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :put
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
      service:          "lambda",
      endpoint:         "/2015-03-31/event-source-mappings/{UUID}",
      input:            input,
      options:          options,
      action:           "UpdateEventSourceMapping",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :put
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/code",
      input:            input,
      options:          options,
      action:           "UpdateFunctionCode",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :put
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
      service:          "lambda",
      endpoint:         "/2015-03-31/functions/{FunctionName}/configuration",
      input:            input,
      options:          options,
      action:           "UpdateFunctionConfiguration",
      
      endpoint_prefix:  "lambda",
      type:             :rest_json,
      version:          "2015-03-31",
      method:           :put
    }
  end
  
end