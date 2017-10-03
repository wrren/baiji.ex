defmodule Baiji.Athena do
  @moduledoc """
  Amazon Athena is an interactive query service that lets you use standard
  SQL to analyze data directly in Amazon S3. You can point Athena at your
  data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena
  is serverless, so there is no infrastructure to set up or manage. You pay
  only for the queries you run. Athena scales automatically—executing queries
  in parallel—so results are fast, even with large datasets and complex
  queries. For more information, see [What is Amazon
  Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
  *Amazon Athena User Guide*.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """

  @doc """
  Returns the details of a single named query or a list of up to 50 queries,
  which you provide as an array of query ID strings. Use `ListNamedQueries`
  to get the list of named query IDs. If information could not be retrieved
  for a submitted query ID, information about the query ID submitted is
  listed under `UnprocessedNamedQueryId`. Named queries are different from
  executed queries. Use `BatchGetQueryExecution` to get details about each
  unique query execution, and `ListQueryExecutions` to get a list of query
  execution IDs.
  """
  def batch_get_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchGetNamedQuery",
      method:           :post,
      input_shape:      "BatchGetNamedQueryInput",
      output_shape:     "BatchGetNamedQueryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the details of a single query execution or a list of up to 50 query
  executions, which you provide as an array of query execution ID strings. To
  get a list of query execution IDs, use `ListQueryExecutions`. Query
  executions are different from named (saved) queries. Use
  `BatchGetNamedQuery` to get details about named queries.
  """
  def batch_get_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "BatchGetQueryExecution",
      method:           :post,
      input_shape:      "BatchGetQueryExecutionInput",
      output_shape:     "BatchGetQueryExecutionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a named query.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def create_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateNamedQuery",
      method:           :post,
      input_shape:      "CreateNamedQueryInput",
      output_shape:     "CreateNamedQueryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a named query.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def delete_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteNamedQuery",
      method:           :post,
      input_shape:      "DeleteNamedQueryInput",
      output_shape:     "DeleteNamedQueryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a single query.
  """
  def get_named_query(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetNamedQuery",
      method:           :post,
      input_shape:      "GetNamedQueryInput",
      output_shape:     "GetNamedQueryOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about a single execution of a query. Each time a query
  executes, information about the query execution is saved with a unique ID.
  """
  def get_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQueryExecution",
      method:           :post,
      input_shape:      "GetQueryExecutionInput",
      output_shape:     "GetQueryExecutionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the results of a single query execution specified by
  `QueryExecutionId`. This request does not execute the query but returns
  results. Use `StartQueryExecution` to run a query.
  """
  def get_query_results(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQueryResults",
      method:           :post,
      input_shape:      "GetQueryResultsInput",
      output_shape:     "GetQueryResultsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides a list of all available query IDs.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_named_queries(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListNamedQueries",
      method:           :post,
      input_shape:      "ListNamedQueriesInput",
      output_shape:     "ListNamedQueriesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Provides a list of all available query execution IDs.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_query_executions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListQueryExecutions",
      method:           :post,
      input_shape:      "ListQueryExecutionsInput",
      output_shape:     "ListQueryExecutionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Runs (executes) the SQL query statements contained in the `Query` string.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def start_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartQueryExecution",
      method:           :post,
      input_shape:      "StartQueryExecutionInput",
      output_shape:     "StartQueryExecutionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops a query execution.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def stop_query_execution(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopQueryExecution",
      method:           :post,
      input_shape:      "StopQueryExecutionInput",
      output_shape:     "StopQueryExecutionOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "athena",
      target_prefix:    "AmazonAthena",
      endpoint_prefix:  "athena",
      type:             :json,
      version:          "2017-05-18",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"datumList" => %{"member" => %{"shape" => "Datum"}, "type" => "list"}, "UnprocessedQueryExecutionId" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "QueryExecutionId" => %{"shape" => "QueryExecutionId"}}, "type" => "structure"}, "UnprocessedNamedQueryIdList" => %{"member" => %{"shape" => "UnprocessedNamedQueryId"}, "type" => "list"}, "Row" => %{"members" => %{"Data" => %{"shape" => "datumList"}}, "type" => "structure"}, "BatchGetQueryExecutionOutput" => %{"members" => %{"QueryExecutions" => %{"shape" => "QueryExecutionList"}, "UnprocessedQueryExecutionIds" => %{"shape" => "UnprocessedQueryExecutionIdList"}}, "type" => "structure"}, "QueryExecutionStatistics" => %{"members" => %{"DataScannedInBytes" => %{"shape" => "Long"}, "EngineExecutionTimeInMillis" => %{"shape" => "Long"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "ListQueryExecutionsOutput" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "QueryExecutionIds" => %{"shape" => "QueryExecutionIdList"}}, "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "ColumnInfo" => %{"members" => %{"CaseSensitive" => %{"shape" => "Boolean"}, "CatalogName" => %{"shape" => "String"}, "Label" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "Nullable" => %{"shape" => "ColumnNullable"}, "Precision" => %{"shape" => "Integer"}, "Scale" => %{"shape" => "Integer"}, "SchemaName" => %{"shape" => "String"}, "TableName" => %{"shape" => "String"}, "Type" => %{"shape" => "String"}}, "required" => ["Name", "Type"], "type" => "structure"}, "BatchGetQueryExecutionInput" => %{"members" => %{"QueryExecutionIds" => %{"shape" => "QueryExecutionIdList"}}, "required" => ["QueryExecutionIds"], "type" => "structure"}, "ErrorMessage" => %{"type" => "string"}, "ColumnNullable" => %{"enum" => ["NOT_NULL", "NULLABLE", "UNKNOWN"], "type" => "string"}, "CreateNamedQueryOutput" => %{"members" => %{"NamedQueryId" => %{"shape" => "NamedQueryId"}}, "type" => "structure"}, "GetNamedQueryInput" => %{"members" => %{"NamedQueryId" => %{"shape" => "NamedQueryId"}}, "required" => ["NamedQueryId"], "type" => "structure"}, "NamedQueryId" => %{"type" => "string"}, "EncryptionConfiguration" => %{"members" => %{"EncryptionOption" => %{"shape" => "EncryptionOption"}, "KmsKey" => %{"shape" => "String"}}, "required" => ["EncryptionOption"], "type" => "structure"}, "ListQueryExecutionsInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxQueryExecutionsCount"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ResultSet" => %{"members" => %{"ResultSetMetadata" => %{"shape" => "ResultSetMetadata"}, "Rows" => %{"shape" => "RowList"}}, "type" => "structure"}, "GetQueryExecutionOutput" => %{"members" => %{"QueryExecution" => %{"shape" => "QueryExecution"}}, "type" => "structure"}, "ThrottleReason" => %{"enum" => ["CONCURRENT_QUERY_LIMIT_EXCEEDED"], "type" => "string"}, "TooManyRequestsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}, "Reason" => %{"shape" => "ThrottleReason"}}, "type" => "structure"}, "Token" => %{"type" => "string"}, "GetQueryResultsOutput" => %{"members" => %{"NextToken" => %{"shape" => "Token"}, "ResultSet" => %{"shape" => "ResultSet"}}, "type" => "structure"}, "RowList" => %{"member" => %{"shape" => "Row"}, "type" => "list"}, "DatabaseString" => %{"max" => 32, "min" => 1, "type" => "string"}, "ErrorCode" => %{"max" => 256, "min" => 1, "type" => "string"}, "EncryptionOption" => %{"enum" => ["SSE_S3", "SSE_KMS", "CSE_KMS"], "type" => "string"}, "ColumnInfoList" => %{"member" => %{"shape" => "ColumnInfo"}, "type" => "list"}, "QueryExecutionStatus" => %{"members" => %{"CompletionDateTime" => %{"shape" => "Date"}, "State" => %{"shape" => "QueryExecutionState"}, "StateChangeReason" => %{"shape" => "String"}, "SubmissionDateTime" => %{"shape" => "Date"}}, "type" => "structure"}, "Date" => %{"type" => "timestamp"}, "ResultConfiguration" => %{"members" => %{"EncryptionConfiguration" => %{"shape" => "EncryptionConfiguration"}, "OutputLocation" => %{"shape" => "String"}}, "required" => ["OutputLocation"], "type" => "structure"}, "GetQueryResultsInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxQueryResults"}, "NextToken" => %{"shape" => "Token"}, "QueryExecutionId" => %{"shape" => "QueryExecutionId"}}, "required" => ["QueryExecutionId"], "type" => "structure"}, "MaxQueryExecutionsCount" => %{"box" => true, "max" => 50, "min" => 0, "type" => "integer"}, "DeleteNamedQueryInput" => %{"members" => %{"NamedQueryId" => %{"idempotencyToken" => true, "shape" => "NamedQueryId"}}, "required" => ["NamedQueryId"], "type" => "structure"}, "QueryExecutionState" => %{"enum" => ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"], "type" => "string"}, "DeleteNamedQueryOutput" => %{"members" => %{}, "type" => "structure"}, "StopQueryExecutionInput" => %{"members" => %{"QueryExecutionId" => %{"idempotencyToken" => true, "shape" => "QueryExecutionId"}}, "required" => ["QueryExecutionId"], "type" => "structure"}, "QueryExecutionIdList" => %{"max" => 50, "member" => %{"shape" => "QueryExecutionId"}, "min" => 1, "type" => "list"}, "Long" => %{"type" => "long"}, "NamedQueryIdList" => %{"max" => 50, "member" => %{"shape" => "NamedQueryId"}, "min" => 1, "type" => "list"}, "DescriptionString" => %{"max" => 1024, "min" => 1, "type" => "string"}, "StartQueryExecutionInput" => %{"members" => %{"ClientRequestToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "QueryExecutionContext" => %{"shape" => "QueryExecutionContext"}, "QueryString" => %{"shape" => "QueryString"}, "ResultConfiguration" => %{"shape" => "ResultConfiguration"}}, "required" => ["QueryString", "ResultConfiguration"], "type" => "structure"}, "InvalidRequestException" => %{"exception" => true, "members" => %{"AthenaErrorCode" => %{"shape" => "ErrorCode"}, "Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "QueryExecution" => %{"members" => %{"Query" => %{"shape" => "QueryString"}, "QueryExecutionContext" => %{"shape" => "QueryExecutionContext"}, "QueryExecutionId" => %{"shape" => "QueryExecutionId"}, "ResultConfiguration" => %{"shape" => "ResultConfiguration"}, "Statistics" => %{"shape" => "QueryExecutionStatistics"}, "Status" => %{"shape" => "QueryExecutionStatus"}}, "type" => "structure"}, "BatchGetNamedQueryInput" => %{"members" => %{"NamedQueryIds" => %{"shape" => "NamedQueryIdList"}}, "required" => ["NamedQueryIds"], "type" => "structure"}, "GetNamedQueryOutput" => %{"members" => %{"NamedQuery" => %{"shape" => "NamedQuery"}}, "type" => "structure"}, "QueryExecutionContext" => %{"members" => %{"Database" => %{"shape" => "DatabaseString"}}, "type" => "structure"}, "MaxNamedQueriesCount" => %{"box" => true, "max" => 50, "min" => 0, "type" => "integer"}, "QueryExecutionId" => %{"type" => "string"}, "CreateNamedQueryInput" => %{"members" => %{"ClientRequestToken" => %{"idempotencyToken" => true, "shape" => "IdempotencyToken"}, "Database" => %{"shape" => "DatabaseString"}, "Description" => %{"shape" => "DescriptionString"}, "Name" => %{"shape" => "NameString"}, "QueryString" => %{"shape" => "QueryString"}}, "required" => ["Name", "Database", "QueryString"], "type" => "structure"}, "UnprocessedNamedQueryId" => %{"members" => %{"ErrorCode" => %{"shape" => "ErrorCode"}, "ErrorMessage" => %{"shape" => "ErrorMessage"}, "NamedQueryId" => %{"shape" => "NamedQueryId"}}, "type" => "structure"}, "NamedQueryList" => %{"member" => %{"shape" => "NamedQuery"}, "type" => "list"}, "BatchGetNamedQueryOutput" => %{"members" => %{"NamedQueries" => %{"shape" => "NamedQueryList"}, "UnprocessedNamedQueryIds" => %{"shape" => "UnprocessedNamedQueryIdList"}}, "type" => "structure"}, "GetQueryExecutionInput" => %{"members" => %{"QueryExecutionId" => %{"shape" => "QueryExecutionId"}}, "required" => ["QueryExecutionId"], "type" => "structure"}, "NamedQuery" => %{"members" => %{"Database" => %{"shape" => "DatabaseString"}, "Description" => %{"shape" => "DescriptionString"}, "Name" => %{"shape" => "NameString"}, "NamedQueryId" => %{"shape" => "NamedQueryId"}, "QueryString" => %{"shape" => "QueryString"}}, "required" => ["Name", "Database", "QueryString"], "type" => "structure"}, "UnprocessedQueryExecutionIdList" => %{"member" => %{"shape" => "UnprocessedQueryExecutionId"}, "type" => "list"}, "InternalServerException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "Datum" => %{"members" => %{"VarCharValue" => %{"shape" => "datumString"}}, "type" => "structure"}, "StartQueryExecutionOutput" => %{"members" => %{"QueryExecutionId" => %{"shape" => "QueryExecutionId"}}, "type" => "structure"}, "StopQueryExecutionOutput" => %{"members" => %{}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "ListNamedQueriesInput" => %{"members" => %{"MaxResults" => %{"shape" => "MaxNamedQueriesCount"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "ListNamedQueriesOutput" => %{"members" => %{"NamedQueryIds" => %{"shape" => "NamedQueryIdList"}, "NextToken" => %{"shape" => "Token"}}, "type" => "structure"}, "QueryString" => %{"max" => 262144, "min" => 1, "type" => "string"}, "MaxQueryResults" => %{"box" => true, "max" => 1000, "min" => 0, "type" => "integer"}, "IdempotencyToken" => %{"max" => 128, "min" => 32, "type" => "string"}, "QueryExecutionList" => %{"member" => %{"shape" => "QueryExecution"}, "type" => "list"}, "NameString" => %{"max" => 128, "min" => 1, "type" => "string"}, "ResultSetMetadata" => %{"members" => %{"ColumnInfo" => %{"shape" => "ColumnInfoList"}}, "type" => "structure"}, "datumString" => %{"type" => "string"}}
  end
end