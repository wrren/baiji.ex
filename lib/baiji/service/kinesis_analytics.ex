defmodule Baiji.KinesisAnalytics do
  @moduledoc """

  """
  
  @doc """
  Adds a CloudWatch log stream to monitor application configuration errors.
  For more information about using CloudWatch log streams with Amazon Kinesis
  Analytics applications, see [Working with Amazon CloudWatch
  Logs](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  def add_application_cloud_watch_logging_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddApplicationCloudWatchLoggingOption",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "AddApplicationCloudWatchLoggingOptionRequest",
      output_shape:     "AddApplicationCloudWatchLoggingOptionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds a streaming source to your Amazon Kinesis application. For conceptual
  information, see [Configuring Application
  Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

  You can add a streaming source either when you create an application or you
  can use this operation to add a streaming source after you create an
  application. For more information, see `CreateApplication`.

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  `DescribeApplication` operation to find the current application version.

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationInput` action.
  """
  def add_application_input(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddApplicationInput",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "AddApplicationInputRequest",
      output_shape:     "AddApplicationInputResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds an external destination to your Amazon Kinesis Analytics application.

  If you want Amazon Kinesis Analytics to deliver data from an in-application
  stream within your application to an external destination (such as an
  Amazon Kinesis stream or a Firehose delivery stream), you add the relevant
  configuration to your application using this operation. You can configure
  one or more outputs for your application. Each output configuration maps an
  in-application stream and an external destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can
  analyze the errors. For conceptual information, see [Understanding
  Application Output
  (Destination)](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

  Note that any configuration update, including adding a streaming source
  using this operation, results in a new version of the application. You can
  use the `DescribeApplication` operation to find the current application
  version.

  For the limits on the number of application inputs and outputs you can
  configure, see
  [Limits](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  def add_application_output(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddApplicationOutput",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "AddApplicationOutputRequest",
      output_shape:     "AddApplicationOutputResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds a reference data source to an existing application.

  Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
  object) and creates an in-application table within your application. In the
  request, you provide the source (S3 bucket name and object key name), name
  of the in-application table to create, and the necessary mapping
  information that describes how data in Amazon S3 object maps to columns in
  the resulting in-application table.

  For conceptual information, see [Configuring Application
  Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  For the limits on data sources you can add to your application, see
  [Limits](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  def add_application_reference_data_source(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddApplicationReferenceDataSource",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "AddApplicationReferenceDataSourceRequest",
      output_shape:     "AddApplicationReferenceDataSourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an Amazon Kinesis Analytics application. You can configure each
  application with one streaming source as input, application code to process
  the input, and up to five streaming destinations where you want Amazon
  Kinesis Analytics to write the output data from your application. For an
  overview, see [How it
  Works](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

  In the input configuration, you map the streaming source to an
  in-application stream, which you can think of as a constantly updating
  table. In the mapping, you must provide a schema for the in-application
  stream and map each data column in the in-application stream to a data
  element in the streaming source.

  Your application code is one or more SQL statements that read input data,
  transform it, and generate output. Your application code can create one or
  more SQL artifacts like SQL streams or pumps.

  In the output configuration, you can configure the application to write
  data from in-application streams created in your applications to up to five
  streaming destinations.

  To read data from your source stream or write data to destination streams,
  Amazon Kinesis Analytics needs your permissions. You grant these
  permissions by creating IAM roles. This operation requires permissions to
  perform the `kinesisanalytics:CreateApplication` action.

  For introductory exercises to create an Amazon Kinesis Analytics
  application, see [Getting
  Started](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).
  """
  def create_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "CreateApplicationRequest",
      output_shape:     "CreateApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified application. Amazon Kinesis Analytics halts
  application execution and deletes the application, including any
  application artifacts (such as in-application streams, reference table, and
  application code).

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplication` action.
  """
  def delete_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DeleteApplicationRequest",
      output_shape:     "DeleteApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a CloudWatch log stream from an application. For more information
  about using CloudWatch log streams with Amazon Kinesis Analytics
  applications, see [Working with Amazon CloudWatch
  Logs](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  def delete_application_cloud_watch_logging_option(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplicationCloudWatchLoggingOption",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DeleteApplicationCloudWatchLoggingOptionRequest",
      output_shape:     "DeleteApplicationCloudWatchLoggingOptionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes output destination configuration from your application
  configuration. Amazon Kinesis Analytics will no longer write data from the
  corresponding in-application stream to the external output destination.

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplicationOutput` action.
  """
  def delete_application_output(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplicationOutput",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DeleteApplicationOutputRequest",
      output_shape:     "DeleteApplicationOutputResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a reference data source configuration from the specified
  application configuration.

  If the application is running, Amazon Kinesis Analytics immediately removes
  the in-application table that you created using the
  `AddApplicationReferenceDataSource` operation.

  This operation requires permissions to perform the
  `kinesisanalytics.DeleteApplicationReferenceDataSource` action.
  """
  def delete_application_reference_data_source(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteApplicationReferenceDataSource",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DeleteApplicationReferenceDataSourceRequest",
      output_shape:     "DeleteApplicationReferenceDataSourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns information about a specific Amazon Kinesis Analytics application.

  If you want to retrieve a list of all applications in your account, use the
  `ListApplications` operation.

  This operation requires permissions to perform the
  `kinesisanalytics:DescribeApplication` action. You can use
  `DescribeApplication` to get the current application versionId, which you
  need to call other operations such as `Update`.
  """
  def describe_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DescribeApplicationRequest",
      output_shape:     "DescribeApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Infers a schema by evaluating sample records on the specified streaming
  source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream).
  In the response, the operation returns the inferred schema and also the
  sample records that the operation used to infer the schema.

  You can use the inferred schema when configuring a streaming source for
  your application. For conceptual information, see [Configuring Application
  Input](http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  Note that when you create an application using the Amazon Kinesis Analytics
  console, the console uses this operation to infer a schema and show it in
  the console user interface.

  This operation requires permissions to perform the
  `kinesisanalytics:DiscoverInputSchema` action.
  """
  def discover_input_schema(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DiscoverInputSchema",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "DiscoverInputSchemaRequest",
      output_shape:     "DiscoverInputSchemaResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of Amazon Kinesis Analytics applications in your account.
  For each application, the response includes the application name, Amazon
  Resource Name (ARN), and status. If the response returns the
  `HasMoreApplications` value as true, you can send another request by adding
  the `ExclusiveStartApplicationName` in the request body, and set the value
  of this to the last application name from the previous response.

  If you want detailed information about a specific application, use
  `DescribeApplication`.

  This operation requires permissions to perform the
  `kinesisanalytics:ListApplications` action.
  """
  def list_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListApplications",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "ListApplicationsRequest",
      output_shape:     "ListApplicationsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts the specified Amazon Kinesis Analytics application. After creating
  an application, you must exclusively call this operation to start your
  application.

  After the application starts, it begins consuming the input data, processes
  it, and writes the output to the configured destination.

  The application status must be `READY` for you to start an application. You
  can get the application status in the console or using the
  `DescribeApplication` operation.

  After you start the application, you can stop the application from
  processing the input by calling the `StopApplication` operation.

  This operation requires permissions to perform the
  `kinesisanalytics:StartApplication` action.
  """
  def start_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "StartApplicationRequest",
      output_shape:     "StartApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops the application from processing input data. You can stop an
  application only if it is in the running state. You can use the
  `DescribeApplication` operation to find the application state. After the
  application is stopped, Amazon Kinesis Analytics stops reading data from
  the input, the application stops processing data, and there is no output
  written to the destination.

  This operation requires permissions to perform the
  `kinesisanalytics:StopApplication` action.
  """
  def stop_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "StopApplicationRequest",
      output_shape:     "StopApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates an existing Amazon Kinesis Analytics application. Using this API,
  you can update application code, input configuration, and output
  configuration.

  Note that Amazon Kinesis Analytics updates the
  `CurrentApplicationVersionId` each time you update your application.

  This operation requires permission for the
  `kinesisanalytics:UpdateApplication` action.
  """
  def update_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "kinesisanalytics",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateApplication",
      
      target_prefix:    "KinesisAnalytics_20150814",
      
      endpoint_prefix:  "kinesisanalytics",
      type:             :json,
      version:          "2015-08-14",
      method:           :post,
      input_shape:      "UpdateApplicationRequest",
      output_shape:     "UpdateApplicationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"RawInputRecord" => %{"type" => "string"}, "RecordFormatType" => %{"enum" => ["JSON", "CSV"], "type" => "string"}, "InputConfigurations" => %{"member" => %{"shape" => "InputConfiguration"}, "type" => "list"}, "DiscoverInputSchemaRequest" => %{"members" => %{"InputStartingPositionConfiguration" => %{"shape" => "InputStartingPositionConfiguration"}, "ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["ResourceARN", "RoleARN", "InputStartingPositionConfiguration"], "type" => "structure"}, "ListApplicationsInputLimit" => %{"max" => 50, "min" => 1, "type" => "integer"}, "UpdateApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "RecordFormat" => %{"members" => %{"MappingParameters" => %{"shape" => "MappingParameters"}, "RecordFormatType" => %{"shape" => "RecordFormatType"}}, "required" => ["RecordFormatType"], "type" => "structure"}, "DiscoverInputSchemaResponse" => %{"members" => %{"InputSchema" => %{"shape" => "SourceSchema"}, "ParsedInputRecords" => %{"shape" => "ParsedInputRecords"}, "RawInputRecords" => %{"shape" => "RawInputRecords"}}, "type" => "structure"}, "StartApplicationRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "InputConfigurations" => %{"shape" => "InputConfigurations"}}, "required" => ["ApplicationName", "InputConfigurations"], "type" => "structure"}, "InputParallelismUpdate" => %{"members" => %{"CountUpdate" => %{"shape" => "InputParallelismCount"}}, "type" => "structure"}, "DeleteApplicationReferenceDataSourceResponse" => %{"members" => %{}, "type" => "structure"}, "Id" => %{"max" => 50, "min" => 1, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "CloudWatchLoggingOption" => %{"members" => %{"LogStreamARN" => %{"shape" => "LogStreamARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["LogStreamARN", "RoleARN"], "type" => "structure"}, "FileKey" => %{"type" => "string"}, "ErrorMessage" => %{"type" => "string"}, "RecordEncoding" => %{"pattern" => "UTF-8", "type" => "string"}, "CloudWatchLoggingOptionUpdate" => %{"members" => %{"CloudWatchLoggingOptionId" => %{"shape" => "Id"}, "LogStreamARNUpdate" => %{"shape" => "LogStreamARN"}, "RoleARNUpdate" => %{"shape" => "RoleARN"}}, "required" => ["CloudWatchLoggingOptionId"], "type" => "structure"}, "KinesisFirehoseInputDescription" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "InputParallelismCount" => %{"max" => 64, "min" => 1, "type" => "integer"}, "ListApplicationsRequest" => %{"members" => %{"ExclusiveStartApplicationName" => %{"shape" => "ApplicationName"}, "Limit" => %{"shape" => "ListApplicationsInputLimit"}}, "type" => "structure"}, "ParsedInputRecords" => %{"member" => %{"shape" => "ParsedInputRecord"}, "type" => "list"}, "OutputDescriptions" => %{"member" => %{"shape" => "OutputDescription"}, "type" => "list"}, "DestinationSchema" => %{"members" => %{"RecordFormatType" => %{"shape" => "RecordFormatType"}}, "type" => "structure"}, "AddApplicationOutputRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "Output" => %{"shape" => "Output"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "Output"], "type" => "structure"}, "InputDescriptions" => %{"member" => %{"shape" => "InputDescription"}, "type" => "list"}, "RecordColumns" => %{"max" => 1000, "member" => %{"shape" => "RecordColumn"}, "min" => 1, "type" => "list"}, "KinesisFirehoseInputUpdate" => %{"members" => %{"ResourceARNUpdate" => %{"shape" => "ResourceARN"}, "RoleARNUpdate" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "AddApplicationOutputResponse" => %{"members" => %{}, "type" => "structure"}, "OutputUpdate" => %{"members" => %{"DestinationSchemaUpdate" => %{"shape" => "DestinationSchema"}, "KinesisFirehoseOutputUpdate" => %{"shape" => "KinesisFirehoseOutputUpdate"}, "KinesisStreamsOutputUpdate" => %{"shape" => "KinesisStreamsOutputUpdate"}, "NameUpdate" => %{"shape" => "InAppStreamName"}, "OutputId" => %{"shape" => "Id"}}, "required" => ["OutputId"], "type" => "structure"}, "ApplicationDetail" => %{"members" => %{"ApplicationARN" => %{"shape" => "ResourceARN"}, "ApplicationCode" => %{"shape" => "ApplicationCode"}, "ApplicationDescription" => %{"shape" => "ApplicationDescription"}, "ApplicationName" => %{"shape" => "ApplicationName"}, "ApplicationStatus" => %{"shape" => "ApplicationStatus"}, "ApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "CloudWatchLoggingOptionDescriptions" => %{"shape" => "CloudWatchLoggingOptionDescriptions"}, "CreateTimestamp" => %{"shape" => "Timestamp"}, "InputDescriptions" => %{"shape" => "InputDescriptions"}, "LastUpdateTimestamp" => %{"shape" => "Timestamp"}, "OutputDescriptions" => %{"shape" => "OutputDescriptions"}, "ReferenceDataSourceDescriptions" => %{"shape" => "ReferenceDataSourceDescriptions"}}, "required" => ["ApplicationName", "ApplicationARN", "ApplicationStatus", "ApplicationVersionId"], "type" => "structure"}, "DeleteApplicationCloudWatchLoggingOptionRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CloudWatchLoggingOptionId" => %{"shape" => "Id"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "CloudWatchLoggingOptionId"], "type" => "structure"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "KinesisFirehoseInput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["ResourceARN", "RoleARN"], "type" => "structure"}, "KinesisStreamsOutputDescription" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "InputDescription" => %{"members" => %{"InAppStreamNames" => %{"shape" => "InAppStreamNames"}, "InputId" => %{"shape" => "Id"}, "InputParallelism" => %{"shape" => "InputParallelism"}, "InputSchema" => %{"shape" => "SourceSchema"}, "InputStartingPositionConfiguration" => %{"shape" => "InputStartingPositionConfiguration"}, "KinesisFirehoseInputDescription" => %{"shape" => "KinesisFirehoseInputDescription"}, "KinesisStreamsInputDescription" => %{"shape" => "KinesisStreamsInputDescription"}, "NamePrefix" => %{"shape" => "InAppStreamName"}}, "type" => "structure"}, "InvalidApplicationConfigurationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "KinesisFirehoseOutput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["ResourceARN", "RoleARN"], "type" => "structure"}, "ServiceUnavailableException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "JSONMappingParameters" => %{"members" => %{"RecordRowPath" => %{"shape" => "RecordRowPath"}}, "required" => ["RecordRowPath"], "type" => "structure"}, "BooleanObject" => %{"type" => "boolean"}, "OutputDescription" => %{"members" => %{"DestinationSchema" => %{"shape" => "DestinationSchema"}, "KinesisFirehoseOutputDescription" => %{"shape" => "KinesisFirehoseOutputDescription"}, "KinesisStreamsOutputDescription" => %{"shape" => "KinesisStreamsOutputDescription"}, "Name" => %{"shape" => "InAppStreamName"}, "OutputId" => %{"shape" => "Id"}}, "type" => "structure"}, "RecordColumn" => %{"members" => %{"Mapping" => %{"shape" => "RecordColumnMapping"}, "Name" => %{"shape" => "RecordColumnName"}, "SqlType" => %{"shape" => "RecordColumnSqlType"}}, "required" => ["Name", "SqlType"], "type" => "structure"}, "OutputUpdates" => %{"member" => %{"shape" => "OutputUpdate"}, "type" => "list"}, "ApplicationVersionId" => %{"max" => 999999999, "min" => 1, "type" => "long"}, "InAppTableName" => %{"max" => 32, "min" => 1, "pattern" => "[a-zA-Z][a-zA-Z0-9_]+", "type" => "string"}, "DeleteApplicationReferenceDataSourceRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "ReferenceId" => %{"shape" => "Id"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "ReferenceId"], "type" => "structure"}, "RoleARN" => %{"max" => 2048, "min" => 1, "pattern" => "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+", "type" => "string"}, "AddApplicationCloudWatchLoggingOptionResponse" => %{"members" => %{}, "type" => "structure"}, "ApplicationUpdate" => %{"members" => %{"ApplicationCodeUpdate" => %{"shape" => "ApplicationCode"}, "CloudWatchLoggingOptionUpdates" => %{"shape" => "CloudWatchLoggingOptionUpdates"}, "InputUpdates" => %{"shape" => "InputUpdates"}, "OutputUpdates" => %{"shape" => "OutputUpdates"}, "ReferenceDataSourceUpdates" => %{"shape" => "ReferenceDataSourceUpdates"}}, "type" => "structure"}, "InputParallelism" => %{"members" => %{"Count" => %{"shape" => "InputParallelismCount"}}, "type" => "structure"}, "ResourceARN" => %{"max" => 2048, "min" => 1, "pattern" => "arn:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:\\d{12}:[a-zA-Z_0-9+=,.@\\-_/:]+", "type" => "string"}, "KinesisFirehoseOutputUpdate" => %{"members" => %{"ResourceARNUpdate" => %{"shape" => "ResourceARN"}, "RoleARNUpdate" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "DeleteApplicationOutputResponse" => %{"members" => %{}, "type" => "structure"}, "CreateApplicationRequest" => %{"members" => %{"ApplicationCode" => %{"shape" => "ApplicationCode"}, "ApplicationDescription" => %{"shape" => "ApplicationDescription"}, "ApplicationName" => %{"shape" => "ApplicationName"}, "CloudWatchLoggingOptions" => %{"shape" => "CloudWatchLoggingOptions"}, "Inputs" => %{"shape" => "Inputs"}, "Outputs" => %{"shape" => "Outputs"}}, "required" => ["ApplicationName"], "type" => "structure"}, "ApplicationSummaries" => %{"member" => %{"shape" => "ApplicationSummary"}, "type" => "list"}, "ParsedInputRecord" => %{"member" => %{"shape" => "ParsedInputRecordField"}, "type" => "list"}, "CreateApplicationResponse" => %{"members" => %{"ApplicationSummary" => %{"shape" => "ApplicationSummary"}}, "required" => ["ApplicationSummary"], "type" => "structure"}, "ReferenceDataSourceUpdates" => %{"member" => %{"shape" => "ReferenceDataSourceUpdate"}, "type" => "list"}, "KinesisStreamsOutputUpdate" => %{"members" => %{"ResourceARNUpdate" => %{"shape" => "ResourceARN"}, "RoleARNUpdate" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "KinesisStreamsInput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["ResourceARN", "RoleARN"], "type" => "structure"}, "InAppStreamName" => %{"max" => 32, "min" => 1, "pattern" => "[a-zA-Z][a-zA-Z0-9_]+", "type" => "string"}, "InputUpdates" => %{"member" => %{"shape" => "InputUpdate"}, "type" => "list"}, "RawInputRecords" => %{"member" => %{"shape" => "RawInputRecord"}, "type" => "list"}, "BucketARN" => %{"max" => 2048, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "ApplicationStatus" => %{"enum" => ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"], "type" => "string"}, "ReferenceDataSourceDescriptions" => %{"member" => %{"shape" => "ReferenceDataSourceDescription"}, "type" => "list"}, "ResourceProvisionedThroughputExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListApplicationsResponse" => %{"members" => %{"ApplicationSummaries" => %{"shape" => "ApplicationSummaries"}, "HasMoreApplications" => %{"shape" => "BooleanObject"}}, "required" => ["ApplicationSummaries", "HasMoreApplications"], "type" => "structure"}, "DescribeApplicationResponse" => %{"members" => %{"ApplicationDetail" => %{"shape" => "ApplicationDetail"}}, "required" => ["ApplicationDetail"], "type" => "structure"}, "KinesisStreamsInputDescription" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "InvalidArgumentException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "CodeValidationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "InAppStreamNames" => %{"member" => %{"shape" => "InAppStreamName"}, "type" => "list"}, "UnableToDetectSchemaException" => %{"exception" => true, "members" => %{"RawInputRecords" => %{"shape" => "RawInputRecords"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeleteApplicationRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CreateTimestamp" => %{"shape" => "Timestamp"}}, "required" => ["ApplicationName", "CreateTimestamp"], "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "RecordColumnMapping" => %{"type" => "string"}, "LogStreamARN" => %{"max" => 2048, "min" => 1, "pattern" => "arn:.*", "type" => "string"}, "InputStartingPosition" => %{"enum" => ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"], "type" => "string"}, "DeleteApplicationCloudWatchLoggingOptionResponse" => %{"members" => %{}, "type" => "structure"}, "Inputs" => %{"member" => %{"shape" => "Input"}, "type" => "list"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ReferenceDataSourceUpdate" => %{"members" => %{"ReferenceId" => %{"shape" => "Id"}, "ReferenceSchemaUpdate" => %{"shape" => "SourceSchema"}, "S3ReferenceDataSourceUpdate" => %{"shape" => "S3ReferenceDataSourceUpdate"}, "TableNameUpdate" => %{"shape" => "InAppTableName"}}, "required" => ["ReferenceId"], "type" => "structure"}, "AddApplicationReferenceDataSourceRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "ReferenceDataSource" => %{"shape" => "ReferenceDataSource"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "ReferenceDataSource"], "type" => "structure"}, "AddApplicationReferenceDataSourceResponse" => %{"members" => %{}, "type" => "structure"}, "ReferenceDataSource" => %{"members" => %{"ReferenceSchema" => %{"shape" => "SourceSchema"}, "S3ReferenceDataSource" => %{"shape" => "S3ReferenceDataSource"}, "TableName" => %{"shape" => "InAppTableName"}}, "required" => ["TableName", "ReferenceSchema"], "type" => "structure"}, "CloudWatchLoggingOptionDescription" => %{"members" => %{"CloudWatchLoggingOptionId" => %{"shape" => "Id"}, "LogStreamARN" => %{"shape" => "LogStreamARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["LogStreamARN", "RoleARN"], "type" => "structure"}, "CloudWatchLoggingOptions" => %{"member" => %{"shape" => "CloudWatchLoggingOption"}, "type" => "list"}, "DescribeApplicationRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}}, "required" => ["ApplicationName"], "type" => "structure"}, "AddApplicationInputResponse" => %{"members" => %{}, "type" => "structure"}, "Outputs" => %{"member" => %{"shape" => "Output"}, "type" => "list"}, "S3ReferenceDataSource" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "FileKey" => %{"shape" => "FileKey"}, "ReferenceRoleARN" => %{"shape" => "RoleARN"}}, "required" => ["BucketARN", "FileKey", "ReferenceRoleARN"], "type" => "structure"}, "RecordRowPath" => %{"type" => "string"}, "AddApplicationCloudWatchLoggingOptionRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CloudWatchLoggingOption" => %{"shape" => "CloudWatchLoggingOption"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "CloudWatchLoggingOption"], "type" => "structure"}, "ApplicationSummary" => %{"members" => %{"ApplicationARN" => %{"shape" => "ResourceARN"}, "ApplicationName" => %{"shape" => "ApplicationName"}, "ApplicationStatus" => %{"shape" => "ApplicationStatus"}}, "required" => ["ApplicationName", "ApplicationARN", "ApplicationStatus"], "type" => "structure"}, "DeleteApplicationOutputRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "OutputId" => %{"shape" => "Id"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "OutputId"], "type" => "structure"}, "InputConfiguration" => %{"members" => %{"Id" => %{"shape" => "Id"}, "InputStartingPositionConfiguration" => %{"shape" => "InputStartingPositionConfiguration"}}, "required" => ["Id", "InputStartingPositionConfiguration"], "type" => "structure"}, "CloudWatchLoggingOptionDescriptions" => %{"member" => %{"shape" => "CloudWatchLoggingOptionDescription"}, "type" => "list"}, "RecordColumnName" => %{"pattern" => "[a-zA-Z_][a-zA-Z0-9_]*", "type" => "string"}, "SourceSchema" => %{"members" => %{"RecordColumns" => %{"shape" => "RecordColumns"}, "RecordEncoding" => %{"shape" => "RecordEncoding"}, "RecordFormat" => %{"shape" => "RecordFormat"}}, "required" => ["RecordFormat", "RecordColumns"], "type" => "structure"}, "CSVMappingParameters" => %{"members" => %{"RecordColumnDelimiter" => %{"shape" => "RecordColumnDelimiter"}, "RecordRowDelimiter" => %{"shape" => "RecordRowDelimiter"}}, "required" => ["RecordRowDelimiter", "RecordColumnDelimiter"], "type" => "structure"}, "ApplicationName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "S3ReferenceDataSourceUpdate" => %{"members" => %{"BucketARNUpdate" => %{"shape" => "BucketARN"}, "FileKeyUpdate" => %{"shape" => "FileKey"}, "ReferenceRoleARNUpdate" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "ParsedInputRecordField" => %{"type" => "string"}, "Input" => %{"members" => %{"InputParallelism" => %{"shape" => "InputParallelism"}, "InputSchema" => %{"shape" => "SourceSchema"}, "KinesisFirehoseInput" => %{"shape" => "KinesisFirehoseInput"}, "KinesisStreamsInput" => %{"shape" => "KinesisStreamsInput"}, "NamePrefix" => %{"shape" => "InAppStreamName"}}, "required" => ["NamePrefix", "InputSchema"], "type" => "structure"}, "MappingParameters" => %{"members" => %{"CSVMappingParameters" => %{"shape" => "CSVMappingParameters"}, "JSONMappingParameters" => %{"shape" => "JSONMappingParameters"}}, "type" => "structure"}, "S3ReferenceDataSourceDescription" => %{"members" => %{"BucketARN" => %{"shape" => "BucketARN"}, "FileKey" => %{"shape" => "FileKey"}, "ReferenceRoleARN" => %{"shape" => "RoleARN"}}, "required" => ["BucketARN", "FileKey", "ReferenceRoleARN"], "type" => "structure"}, "AddApplicationInputRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}, "Input" => %{"shape" => "Input"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "Input"], "type" => "structure"}, "ApplicationDescription" => %{"max" => 1024, "min" => 0, "type" => "string"}, "KinesisStreamsInputUpdate" => %{"members" => %{"ResourceARNUpdate" => %{"shape" => "ResourceARN"}, "RoleARNUpdate" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "ApplicationCode" => %{"max" => 51200, "min" => 0, "type" => "string"}, "StartApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "StopApplicationRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}}, "required" => ["ApplicationName"], "type" => "structure"}, "Output" => %{"members" => %{"DestinationSchema" => %{"shape" => "DestinationSchema"}, "KinesisFirehoseOutput" => %{"shape" => "KinesisFirehoseOutput"}, "KinesisStreamsOutput" => %{"shape" => "KinesisStreamsOutput"}, "Name" => %{"shape" => "InAppStreamName"}}, "required" => ["Name", "DestinationSchema"], "type" => "structure"}, "RecordColumnDelimiter" => %{"min" => 1, "type" => "string"}, "DeleteApplicationResponse" => %{"members" => %{}, "type" => "structure"}, "KinesisStreamsOutput" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["ResourceARN", "RoleARN"], "type" => "structure"}, "RecordRowDelimiter" => %{"min" => 1, "type" => "string"}, "CloudWatchLoggingOptionUpdates" => %{"member" => %{"shape" => "CloudWatchLoggingOptionUpdate"}, "type" => "list"}, "InputStartingPositionConfiguration" => %{"members" => %{"InputStartingPosition" => %{"shape" => "InputStartingPosition"}}, "type" => "structure"}, "ReferenceDataSourceDescription" => %{"members" => %{"ReferenceId" => %{"shape" => "Id"}, "ReferenceSchema" => %{"shape" => "SourceSchema"}, "S3ReferenceDataSourceDescription" => %{"shape" => "S3ReferenceDataSourceDescription"}, "TableName" => %{"shape" => "InAppTableName"}}, "required" => ["ReferenceId", "TableName", "S3ReferenceDataSourceDescription"], "type" => "structure"}, "InputSchemaUpdate" => %{"members" => %{"RecordColumnUpdates" => %{"shape" => "RecordColumns"}, "RecordEncodingUpdate" => %{"shape" => "RecordEncoding"}, "RecordFormatUpdate" => %{"shape" => "RecordFormat"}}, "type" => "structure"}, "KinesisFirehoseOutputDescription" => %{"members" => %{"ResourceARN" => %{"shape" => "ResourceARN"}, "RoleARN" => %{"shape" => "RoleARN"}}, "type" => "structure"}, "RecordColumnSqlType" => %{"type" => "string"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateApplicationRequest" => %{"members" => %{"ApplicationName" => %{"shape" => "ApplicationName"}, "ApplicationUpdate" => %{"shape" => "ApplicationUpdate"}, "CurrentApplicationVersionId" => %{"shape" => "ApplicationVersionId"}}, "required" => ["ApplicationName", "CurrentApplicationVersionId", "ApplicationUpdate"], "type" => "structure"}, "InputUpdate" => %{"members" => %{"InputId" => %{"shape" => "Id"}, "InputParallelismUpdate" => %{"shape" => "InputParallelismUpdate"}, "InputSchemaUpdate" => %{"shape" => "InputSchemaUpdate"}, "KinesisFirehoseInputUpdate" => %{"shape" => "KinesisFirehoseInputUpdate"}, "KinesisStreamsInputUpdate" => %{"shape" => "KinesisStreamsInputUpdate"}, "NamePrefixUpdate" => %{"shape" => "InAppStreamName"}}, "required" => ["InputId"], "type" => "structure"}, "StopApplicationResponse" => %{"members" => %{}, "type" => "structure"}}
  end
end