defmodule Baiji.Kinesisanalytics do
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
      input:    input,
      options:  options,
      action:   "AddApplicationCloudWatchLoggingOption",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AddApplicationInput",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AddApplicationOutput",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "AddApplicationReferenceDataSource",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreateApplication",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteApplication",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteApplicationCloudWatchLoggingOption",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteApplicationOutput",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeleteApplicationReferenceDataSource",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DescribeApplication",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DiscoverInputSchema",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ListApplications",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "StartApplication",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "StopApplication",
      type:     :json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "UpdateApplication",
      type:     :json,
      method:   :post
    }
  end
  
end