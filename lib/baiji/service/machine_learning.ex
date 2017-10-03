defmodule Baiji.MachineLearning do
  @moduledoc """
  Definition of the public APIs exposed by Amazon Machine Learning
  """

  @doc """
  Adds one or more tags to an object, up to a limit of 10. Each tag consists
  of a key and an optional value. If you add a tag using a key that is
  already associated with the ML object, `AddTags` updates the tag's value.
  """
  def add_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTags",
      method:           :post,
      input_shape:      "AddTagsInput",
      output_shape:     "AddTagsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates predictions for a group of observations. The observations to
  process exist in one or more data files referenced by a `DataSource`. This
  operation creates a new `BatchPrediction`, and uses an `MLModel` and the
  data files referenced by the `DataSource` as information sources.

  `CreateBatchPrediction` is an asynchronous operation. In response to
  `CreateBatchPrediction`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `BatchPrediction` status to `PENDING`. After the
  `BatchPrediction` completes, Amazon ML sets the status to `COMPLETED`.

  You can poll for status updates by using the `GetBatchPrediction` operation
  and checking the `Status` parameter of the result. After the `COMPLETED`
  status appears, the results are available in the location specified by the
  `OutputUri` parameter.
  """
  def create_batch_prediction(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateBatchPrediction",
      method:           :post,
      input_shape:      "CreateBatchPredictionInput",
      output_shape:     "CreateBatchPredictionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `DataSource` object from an [ Amazon Relational Database
  Service](http://aws.amazon.com/rds/) (Amazon RDS). A `DataSource`
  references data that can be used to perform `CreateMLModel`,
  `CreateEvaluation`, or `CreateBatchPrediction` operations.

  `CreateDataSourceFromRDS` is an asynchronous operation. In response to
  `CreateDataSourceFromRDS`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `DataSource` status to `PENDING`. After the
  `DataSource` is created and ready for use, Amazon ML sets the `Status`
  parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or `PENDING`
  state can be used only to perform `&gt;CreateMLModel`&gt;,
  `CreateEvaluation`, or `CreateBatchPrediction` operations.

  If Amazon ML cannot accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.
  """
  def create_data_source_from_r_d_s(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDataSourceFromRDS",
      method:           :post,
      input_shape:      "CreateDataSourceFromRDSInput",
      output_shape:     "CreateDataSourceFromRDSOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `DataSource` from a database hosted on an Amazon Redshift
  cluster. A `DataSource` references data that can be used to perform either
  `CreateMLModel`, `CreateEvaluation`, or `CreateBatchPrediction` operations.

  `CreateDataSourceFromRedshift` is an asynchronous operation. In response to
  `CreateDataSourceFromRedshift`, Amazon Machine Learning (Amazon ML)
  immediately returns and sets the `DataSource` status to `PENDING`. After
  the `DataSource` is created and ready for use, Amazon ML sets the `Status`
  parameter to `COMPLETED`. `DataSource` in `COMPLETED` or `PENDING` states
  can be used to perform only `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.

  If Amazon ML can't accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.

  The observations should be contained in the database hosted on an Amazon
  Redshift cluster and should be specified by a `SelectSqlQuery` query.
  Amazon ML executes an `Unload` command in Amazon Redshift to transfer the
  result set of the `SelectSqlQuery` query to `S3StagingLocation`.

  After the `DataSource` has been created, it's ready for use in evaluations
  and batch predictions. If you plan to use the `DataSource` to train an
  `MLModel`, the `DataSource` also requires a recipe. A recipe describes how
  each input variable will be used in training an `MLModel`. Will the
  variable be included or excluded from training? Will the variable be
  manipulated; for example, will it be combined with another variable or will
  it be split apart into word combinations? The recipe provides answers to
  these questions.

  <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700">You
  can't change an existing datasource, but you can copy and modify the
  settings from an existing Amazon Redshift datasource to create a new
  datasource. To do so, call `GetDataSource` for an existing datasource and
  copy the values to a `CreateDataSource` call. Change the settings that you
  want to change and make sure that all required fields have the appropriate
  values.

  <?oxy_insert_end>
  """
  def create_data_source_from_redshift(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDataSourceFromRedshift",
      method:           :post,
      input_shape:      "CreateDataSourceFromRedshiftInput",
      output_shape:     "CreateDataSourceFromRedshiftOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a `DataSource` object. A `DataSource` references data that can be
  used to perform `CreateMLModel`, `CreateEvaluation`, or
  `CreateBatchPrediction` operations.

  `CreateDataSourceFromS3` is an asynchronous operation. In response to
  `CreateDataSourceFromS3`, Amazon Machine Learning (Amazon ML) immediately
  returns and sets the `DataSource` status to `PENDING`. After the
  `DataSource` has been created and is ready for use, Amazon ML sets the
  `Status` parameter to `COMPLETED`. `DataSource` in the `COMPLETED` or
  `PENDING` state can be used to perform only `CreateMLModel`,
  `CreateEvaluation` or `CreateBatchPrediction` operations.

  If Amazon ML can't accept the input source, it sets the `Status` parameter
  to `FAILED` and includes an error message in the `Message` attribute of the
  `GetDataSource` operation response.

  The observation data used in a `DataSource` should be ready to use; that
  is, it should have a consistent structure, and missing data values should
  be kept to a minimum. The observation data must reside in one or more .csv
  files in an Amazon Simple Storage Service (Amazon S3) location, along with
  a schema that describes the data items by name and type. The same schema
  must be used for all of the data files referenced by the `DataSource`.

  After the `DataSource` has been created, it's ready to use in evaluations
  and batch predictions. If you plan to use the `DataSource` to train an
  `MLModel`, the `DataSource` also needs a recipe. A recipe describes how
  each input variable will be used in training an `MLModel`. Will the
  variable be included or excluded from training? Will the variable be
  manipulated; for example, will it be combined with another variable or will
  it be split apart into word combinations? The recipe provides answers to
  these questions.
  """
  def create_data_source_from_s3(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateDataSourceFromS3",
      method:           :post,
      input_shape:      "CreateDataSourceFromS3Input",
      output_shape:     "CreateDataSourceFromS3Output",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `Evaluation` of an `MLModel`. An `MLModel` is evaluated on a
  set of observations associated to a `DataSource`. Like a `DataSource` for
  an `MLModel`, the `DataSource` for an `Evaluation` contains values for the
  `Target Variable`. The `Evaluation` compares the predicted result for each
  observation to the actual outcome and provides a summary so that you know
  how effective the `MLModel` functions on the test data. Evaluation
  generates a relevant performance metric, such as BinaryAUC, RegressionRMSE
  or MulticlassAvgFScore based on the corresponding `MLModelType`: `BINARY`,
  `REGRESSION` or `MULTICLASS`.

  `CreateEvaluation` is an asynchronous operation. In response to
  `CreateEvaluation`, Amazon Machine Learning (Amazon ML) immediately returns
  and sets the evaluation status to `PENDING`. After the `Evaluation` is
  created and ready for use, Amazon ML sets the status to `COMPLETED`.

  You can use the `GetEvaluation` operation to check progress of the
  evaluation during the creation operation.
  """
  def create_evaluation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateEvaluation",
      method:           :post,
      input_shape:      "CreateEvaluationInput",
      output_shape:     "CreateEvaluationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new `MLModel` using the `DataSource` and the recipe as
  information sources.

  An `MLModel` is nearly immutable. Users can update only the `MLModelName`
  and the `ScoreThreshold` in an `MLModel` without creating a new `MLModel`.

  `CreateMLModel` is an asynchronous operation. In response to
  `CreateMLModel`, Amazon Machine Learning (Amazon ML) immediately returns
  and sets the `MLModel` status to `PENDING`. After the `MLModel` has been
  created and ready is for use, Amazon ML sets the status to `COMPLETED`.

  You can use the `GetMLModel` operation to check the progress of the
  `MLModel` during the creation operation.

  `CreateMLModel` requires a `DataSource` with computed statistics, which can
  be created by setting `ComputeStatistics` to `true` in
  `CreateDataSourceFromRDS`, `CreateDataSourceFromS3`, or
  `CreateDataSourceFromRedshift` operations.
  """
  def create_m_l_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateMLModel",
      method:           :post,
      input_shape:      "CreateMLModelInput",
      output_shape:     "CreateMLModelOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a real-time endpoint for the `MLModel`. The endpoint contains the
  URI of the `MLModel`; that is, the location to send real-time prediction
  requests for the specified `MLModel`.
  """
  def create_realtime_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateRealtimeEndpoint",
      method:           :post,
      input_shape:      "CreateRealtimeEndpointInput",
      output_shape:     "CreateRealtimeEndpointOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns the DELETED status to a `BatchPrediction`, rendering it unusable.

  After using the `DeleteBatchPrediction` operation, you can use the
  `GetBatchPrediction` operation to verify that the status of the
  `BatchPrediction` changed to DELETED.

  **Caution:** The result of the `DeleteBatchPrediction` operation is
  irreversible.
  """
  def delete_batch_prediction(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteBatchPrediction",
      method:           :post,
      input_shape:      "DeleteBatchPredictionInput",
      output_shape:     "DeleteBatchPredictionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns the DELETED status to a `DataSource`, rendering it unusable.

  After using the `DeleteDataSource` operation, you can use the
  `GetDataSource` operation to verify that the status of the `DataSource`
  changed to DELETED.

  **Caution:** The results of the `DeleteDataSource` operation are
  irreversible.
  """
  def delete_data_source(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteDataSource",
      method:           :post,
      input_shape:      "DeleteDataSourceInput",
      output_shape:     "DeleteDataSourceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns the `DELETED` status to an `Evaluation`, rendering it unusable.

  After invoking the `DeleteEvaluation` operation, you can use the
  `GetEvaluation` operation to verify that the status of the `Evaluation`
  changed to `DELETED`.

  <caution><title>Caution</title> The results of the `DeleteEvaluation`
  operation are irreversible.

  </caution>
  """
  def delete_evaluation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteEvaluation",
      method:           :post,
      input_shape:      "DeleteEvaluationInput",
      output_shape:     "DeleteEvaluationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Assigns the `DELETED` status to an `MLModel`, rendering it unusable.

  After using the `DeleteMLModel` operation, you can use the `GetMLModel`
  operation to verify that the status of the `MLModel` changed to DELETED.

  **Caution:** The result of the `DeleteMLModel` operation is irreversible.
  """
  def delete_m_l_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteMLModel",
      method:           :post,
      input_shape:      "DeleteMLModelInput",
      output_shape:     "DeleteMLModelOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a real time endpoint of an `MLModel`.
  """
  def delete_realtime_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRealtimeEndpoint",
      method:           :post,
      input_shape:      "DeleteRealtimeEndpointInput",
      output_shape:     "DeleteRealtimeEndpointOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified tags associated with an ML object. After this
  operation is complete, you can't recover deleted tags.

  If you specify a tag that doesn't exist, Amazon ML ignores it.
  """
  def delete_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTags",
      method:           :post,
      input_shape:      "DeleteTagsInput",
      output_shape:     "DeleteTagsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of `BatchPrediction` operations that match the search
  criteria in the request.
  """
  def describe_batch_predictions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeBatchPredictions",
      method:           :post,
      input_shape:      "DescribeBatchPredictionsInput",
      output_shape:     "DescribeBatchPredictionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of `DataSource` that match the search criteria in the
  request.
  """
  def describe_data_sources(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeDataSources",
      method:           :post,
      input_shape:      "DescribeDataSourcesInput",
      output_shape:     "DescribeDataSourcesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of `DescribeEvaluations` that match the search criteria in
  the request.
  """
  def describe_evaluations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEvaluations",
      method:           :post,
      input_shape:      "DescribeEvaluationsInput",
      output_shape:     "DescribeEvaluationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of `MLModel` that match the search criteria in the request.
  """
  def describe_m_l_models(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMLModels",
      method:           :post,
      input_shape:      "DescribeMLModelsInput",
      output_shape:     "DescribeMLModelsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes one or more of the tags for your Amazon ML object.
  """
  def describe_tags(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeTags",
      method:           :post,
      input_shape:      "DescribeTagsInput",
      output_shape:     "DescribeTagsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a `BatchPrediction` that includes detailed metadata, status, and
  data file information for a `Batch Prediction` request.
  """
  def get_batch_prediction(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetBatchPrediction",
      method:           :post,
      input_shape:      "GetBatchPredictionInput",
      output_shape:     "GetBatchPredictionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a `DataSource` that includes metadata and data file information, as
  well as the current status of the `DataSource`.

  `GetDataSource` provides results in normal or verbose format. The verbose
  format adds the schema description and the list of files pointed to by the
  DataSource to the normal format.
  """
  def get_data_source(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDataSource",
      method:           :post,
      input_shape:      "GetDataSourceInput",
      output_shape:     "GetDataSourceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an `Evaluation` that includes metadata as well as the current
  status of the `Evaluation`.
  """
  def get_evaluation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetEvaluation",
      method:           :post,
      input_shape:      "GetEvaluationInput",
      output_shape:     "GetEvaluationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns an `MLModel` that includes detailed metadata, data source
  information, and the current status of the `MLModel`.

  `GetMLModel` provides results in normal or verbose format.
  """
  def get_m_l_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetMLModel",
      method:           :post,
      input_shape:      "GetMLModelInput",
      output_shape:     "GetMLModelOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a prediction for the observation using the specified `ML Model`.

  <note><title>Note</title> Not all response parameters will be populated.
  Whether a response parameter is populated depends on the type of model
  requested.

  </note>
  """
  def predict(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Predict",
      method:           :post,
      input_shape:      "PredictInput",
      output_shape:     "PredictOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the `BatchPredictionName` of a `BatchPrediction`.

  You can use the `GetBatchPrediction` operation to view the contents of the
  updated data element.
  """
  def update_batch_prediction(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateBatchPrediction",
      method:           :post,
      input_shape:      "UpdateBatchPredictionInput",
      output_shape:     "UpdateBatchPredictionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the `DataSourceName` of a `DataSource`.

  You can use the `GetDataSource` operation to view the contents of the
  updated data element.
  """
  def update_data_source(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDataSource",
      method:           :post,
      input_shape:      "UpdateDataSourceInput",
      output_shape:     "UpdateDataSourceOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the `EvaluationName` of an `Evaluation`.

  You can use the `GetEvaluation` operation to view the contents of the
  updated data element.
  """
  def update_evaluation(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateEvaluation",
      method:           :post,
      input_shape:      "UpdateEvaluationInput",
      output_shape:     "UpdateEvaluationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.

  You can use the `GetMLModel` operation to view the contents of the updated
  data element.
  """
  def update_m_l_model(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMLModel",
      method:           :post,
      input_shape:      "UpdateMLModelInput",
      output_shape:     "UpdateMLModelOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "machinelearning",
      target_prefix:    "AmazonML_20141212",
      endpoint_prefix:  "machinelearning",
      type:             :json,
      version:          "2014-12-12",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"RealtimeEndpointStatus" => %{"enum" => ["NONE", "READY", "UPDATING", "FAILED"], "type" => "string"}, "RDSMetadata" => %{"members" => %{"DataPipelineId" => %{"shape" => "EDPPipelineId"}, "Database" => %{"shape" => "RDSDatabase"}, "DatabaseUserName" => %{"shape" => "RDSDatabaseUsername"}, "ResourceRole" => %{"shape" => "EDPResourceRole"}, "SelectSqlQuery" => %{"shape" => "RDSSelectSqlQuery"}, "ServiceRole" => %{"shape" => "EDPServiceRole"}}, "type" => "structure"}, "UpdateBatchPredictionInput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}, "BatchPredictionName" => %{"shape" => "EntityName"}}, "required" => ["BatchPredictionId", "BatchPredictionName"], "type" => "structure"}, "DeleteRealtimeEndpointInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "required" => ["MLModelId"], "type" => "structure"}, "Recipe" => %{"max" => 131071, "type" => "string"}, "floatLabel" => %{"type" => "float"}, "GetBatchPredictionOutput" => %{"members" => %{"BatchPredictionDataSourceId" => %{"shape" => "EntityId"}, "BatchPredictionId" => %{"shape" => "EntityId"}, "ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "InvalidRecordCount" => %{"shape" => "LongType"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "LogUri" => %{"shape" => "PresignedS3Url"}, "MLModelId" => %{"shape" => "EntityId"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "OutputUri" => %{"shape" => "S3Url"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}, "TotalRecordCount" => %{"shape" => "LongType"}}, "type" => "structure"}, "EntityId" => %{"max" => 64, "min" => 1, "pattern" => "[a-zA-Z0-9_.-]+", "type" => "string"}, "TagKeyList" => %{"max" => 100, "member" => %{"shape" => "TagKey"}, "type" => "list"}, "GetMLModelOutput" => %{"members" => %{"ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "EndpointInfo" => %{"shape" => "RealtimeEndpointInfo"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "LogUri" => %{"shape" => "PresignedS3Url"}, "MLModelId" => %{"shape" => "EntityId"}, "MLModelType" => %{"shape" => "MLModelType"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "MLModelName"}, "Recipe" => %{"shape" => "Recipe"}, "Schema" => %{"shape" => "DataSchema"}, "ScoreThreshold" => %{"shape" => "ScoreThreshold"}, "ScoreThresholdLastUpdatedAt" => %{"shape" => "EpochTime"}, "SizeInBytes" => %{"shape" => "LongType"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}, "TrainingDataSourceId" => %{"shape" => "EntityId"}, "TrainingParameters" => %{"shape" => "TrainingParameters"}}, "type" => "structure"}, "RedshiftDatabaseUsername" => %{"max" => 128, "min" => 1, "type" => "string"}, "RedshiftMetadata" => %{"members" => %{"DatabaseUserName" => %{"shape" => "RedshiftDatabaseUsername"}, "RedshiftDatabase" => %{"shape" => "RedshiftDatabase"}, "SelectSqlQuery" => %{"shape" => "RedshiftSelectSqlQuery"}}, "type" => "structure"}, "AddTagsOutput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}}, "type" => "structure"}, "DeleteRealtimeEndpointOutput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "RealtimeEndpointInfo" => %{"shape" => "RealtimeEndpointInfo"}}, "type" => "structure"}, "EDPResourceRole" => %{"max" => 64, "min" => 1, "type" => "string"}, "CreateBatchPredictionInput" => %{"members" => %{"BatchPredictionDataSourceId" => %{"shape" => "EntityId"}, "BatchPredictionId" => %{"shape" => "EntityId"}, "BatchPredictionName" => %{"shape" => "EntityName"}, "MLModelId" => %{"shape" => "EntityId"}, "OutputUri" => %{"shape" => "S3Url"}}, "required" => ["BatchPredictionId", "MLModelId", "BatchPredictionDataSourceId", "OutputUri"], "type" => "structure"}, "GetDataSourceOutput" => %{"members" => %{"ComputeStatistics" => %{"shape" => "ComputeStatistics"}, "ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "DataLocationS3" => %{"shape" => "S3Url"}, "DataRearrangement" => %{"shape" => "DataRearrangement"}, "DataSizeInBytes" => %{"shape" => "LongType"}, "DataSourceId" => %{"shape" => "EntityId"}, "DataSourceSchema" => %{"shape" => "DataSchema"}, "FinishedAt" => %{"shape" => "EpochTime"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "LogUri" => %{"shape" => "PresignedS3Url"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "NumberOfFiles" => %{"shape" => "LongType"}, "RDSMetadata" => %{"shape" => "RDSMetadata"}, "RedshiftMetadata" => %{"shape" => "RedshiftMetadata"}, "RoleARN" => %{"shape" => "RoleARN"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}}, "type" => "structure"}, "UpdateEvaluationInput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}, "EvaluationName" => %{"shape" => "EntityName"}}, "required" => ["EvaluationId", "EvaluationName"], "type" => "structure"}, "RedshiftClusterIdentifier" => %{"max" => 63, "min" => 1, "pattern" => "[a-z0-9-]+", "type" => "string"}, "S3DataSpec" => %{"members" => %{"DataLocationS3" => %{"shape" => "S3Url"}, "DataRearrangement" => %{"shape" => "DataRearrangement"}, "DataSchema" => %{"shape" => "DataSchema"}, "DataSchemaLocationS3" => %{"shape" => "S3Url"}}, "required" => ["DataLocationS3"], "type" => "structure"}, "ErrorMessage" => %{"max" => 2048, "type" => "string"}, "RedshiftDatabaseName" => %{"max" => 64, "min" => 1, "pattern" => "[a-z0-9]+", "type" => "string"}, "RDSDatabaseCredentials" => %{"members" => %{"Password" => %{"shape" => "RDSDatabasePassword"}, "Username" => %{"shape" => "RDSDatabaseUsername"}}, "required" => ["Username", "Password"], "type" => "structure"}, "GetEvaluationOutput" => %{"members" => %{"ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "EvaluationDataSourceId" => %{"shape" => "EntityId"}, "EvaluationId" => %{"shape" => "EntityId"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "LogUri" => %{"shape" => "PresignedS3Url"}, "MLModelId" => %{"shape" => "EntityId"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "PerformanceMetrics" => %{"shape" => "PerformanceMetrics"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}}, "type" => "structure"}, "MLModelType" => %{"enum" => ["REGRESSION", "BINARY", "MULTICLASS"], "type" => "string"}, "AwsUserArn" => %{"pattern" => "arn:aws:iam::[0-9]+:((user/.+)|(root))", "type" => "string"}, "MLModelFilterVariable" => %{"enum" => ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "TrainingDataSourceId", "RealtimeEndpointStatus", "MLModelType", "Algorithm", "TrainingDataURI"], "type" => "string"}, "CreateRealtimeEndpointInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "required" => ["MLModelId"], "type" => "structure"}, "SortOrder" => %{"enum" => ["asc", "dsc"], "type" => "string"}, "DetailsAttributes" => %{"enum" => ["PredictiveModelType", "Algorithm"], "type" => "string"}, "EntityStatus" => %{"enum" => ["PENDING", "INPROGRESS", "FAILED", "COMPLETED", "DELETED"], "type" => "string"}, "Record" => %{"key" => %{"shape" => "VariableName"}, "type" => "map", "value" => %{"shape" => "VariableValue"}}, "PredictOutput" => %{"members" => %{"Prediction" => %{"shape" => "Prediction"}}, "type" => "structure"}, "UpdateMLModelInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "MLModelName" => %{"shape" => "EntityName"}, "ScoreThreshold" => %{"shape" => "ScoreThreshold"}}, "required" => ["MLModelId"], "type" => "structure"}, "CreateDataSourceFromRDSOutput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "DeleteBatchPredictionInput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}}, "required" => ["BatchPredictionId"], "type" => "structure"}, "DeleteBatchPredictionOutput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "ScoreValue" => %{"type" => "float"}, "PerformanceMetricsPropertyKey" => %{"type" => "string"}, "AddTagsInput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["Tags", "ResourceId", "ResourceType"], "type" => "structure"}, "TagLimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "PerformanceMetricsPropertyValue" => %{"type" => "string"}, "VariableValue" => %{"type" => "string"}, "DescribeBatchPredictionsInput" => %{"members" => %{"EQ" => %{"shape" => "ComparatorValue"}, "FilterVariable" => %{"shape" => "BatchPredictionFilterVariable"}, "GE" => %{"shape" => "ComparatorValue"}, "GT" => %{"shape" => "ComparatorValue"}, "LE" => %{"shape" => "ComparatorValue"}, "LT" => %{"shape" => "ComparatorValue"}, "Limit" => %{"shape" => "PageLimit"}, "NE" => %{"shape" => "ComparatorValue"}, "NextToken" => %{"shape" => "StringType"}, "Prefix" => %{"shape" => "ComparatorValue"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "RDSDataSpec" => %{"members" => %{"DataRearrangement" => %{"shape" => "DataRearrangement"}, "DataSchema" => %{"shape" => "DataSchema"}, "DataSchemaUri" => %{"shape" => "S3Url"}, "DatabaseCredentials" => %{"shape" => "RDSDatabaseCredentials"}, "DatabaseInformation" => %{"shape" => "RDSDatabase"}, "ResourceRole" => %{"shape" => "EDPResourceRole"}, "S3StagingLocation" => %{"shape" => "S3Url"}, "SecurityGroupIds" => %{"shape" => "EDPSecurityGroupIds"}, "SelectSqlQuery" => %{"shape" => "RDSSelectSqlQuery"}, "ServiceRole" => %{"shape" => "EDPServiceRole"}, "SubnetId" => %{"shape" => "EDPSubnetId"}}, "required" => ["DatabaseInformation", "SelectSqlQuery", "DatabaseCredentials", "S3StagingLocation", "ResourceRole", "ServiceRole", "SubnetId", "SecurityGroupIds"], "type" => "structure"}, "CreateRealtimeEndpointOutput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "RealtimeEndpointInfo" => %{"shape" => "RealtimeEndpointInfo"}}, "type" => "structure"}, "EDPServiceRole" => %{"max" => 64, "min" => 1, "type" => "string"}, "RDSDatabasePassword" => %{"max" => 128, "min" => 8, "type" => "string"}, "CreateEvaluationInput" => %{"members" => %{"EvaluationDataSourceId" => %{"shape" => "EntityId"}, "EvaluationId" => %{"shape" => "EntityId"}, "EvaluationName" => %{"shape" => "EntityName"}, "MLModelId" => %{"shape" => "EntityId"}}, "required" => ["EvaluationId", "MLModelId", "EvaluationDataSourceId"], "type" => "structure"}, "RoleARN" => %{"max" => 110, "min" => 1, "type" => "string"}, "DataSchema" => %{"max" => 131071, "type" => "string"}, "Prediction" => %{"members" => %{"details" => %{"shape" => "DetailsMap"}, "predictedLabel" => %{"shape" => "Label"}, "predictedScores" => %{"shape" => "ScoreValuePerLabelMap"}, "predictedValue" => %{"shape" => "floatLabel"}}, "type" => "structure"}, "DetailsValue" => %{"min" => 1, "type" => "string"}, "PerformanceMetricsProperties" => %{"key" => %{"shape" => "PerformanceMetricsPropertyKey"}, "type" => "map", "value" => %{"shape" => "PerformanceMetricsPropertyValue"}}, "UpdateDataSourceOutput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "ErrorCode" => %{"type" => "integer"}, "DeleteDataSourceOutput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "Message" => %{"max" => 10240, "type" => "string"}, "DescribeEvaluationsOutput" => %{"members" => %{"NextToken" => %{"shape" => "StringType"}, "Results" => %{"shape" => "Evaluations"}}, "type" => "structure"}, "Evaluation" => %{"members" => %{"ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "EvaluationDataSourceId" => %{"shape" => "EntityId"}, "EvaluationId" => %{"shape" => "EntityId"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "MLModelId" => %{"shape" => "EntityId"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "PerformanceMetrics" => %{"shape" => "PerformanceMetrics"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}}, "type" => "structure"}, "UpdateEvaluationOutput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "IntegerType" => %{"type" => "integer"}, "PresignedS3Url" => %{"type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "InvalidTagException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "EDPSecurityGroupIds" => %{"member" => %{"shape" => "EDPSecurityGroupId"}, "type" => "list"}, "EDPSubnetId" => %{"max" => 255, "min" => 1, "type" => "string"}, "IdempotentParameterMismatchException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "TagList" => %{"max" => 100, "member" => %{"shape" => "Tag"}, "type" => "list"}, "DeleteDataSourceInput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "required" => ["DataSourceId"], "type" => "structure"}, "PredictInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "PredictEndpoint" => %{"shape" => "VipURL"}, "Record" => %{"shape" => "Record"}}, "required" => ["MLModelId", "Record", "PredictEndpoint"], "type" => "structure"}, "CreateDataSourceFromS3Output" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "VipURL" => %{"max" => 2048, "pattern" => "https://[a-zA-Z0-9-.]*\\.amazon(aws)?\\.com[/]?", "type" => "string"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "EntityName" => %{"max" => 1024, "pattern" => ".*\\S.*|^$", "type" => "string"}, "DescribeEvaluationsInput" => %{"members" => %{"EQ" => %{"shape" => "ComparatorValue"}, "FilterVariable" => %{"shape" => "EvaluationFilterVariable"}, "GE" => %{"shape" => "ComparatorValue"}, "GT" => %{"shape" => "ComparatorValue"}, "LE" => %{"shape" => "ComparatorValue"}, "LT" => %{"shape" => "ComparatorValue"}, "Limit" => %{"shape" => "PageLimit"}, "NE" => %{"shape" => "ComparatorValue"}, "NextToken" => %{"shape" => "StringType"}, "Prefix" => %{"shape" => "ComparatorValue"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "RedshiftSelectSqlQuery" => %{"max" => 16777216, "min" => 1, "type" => "string"}, "ScoreValuePerLabelMap" => %{"key" => %{"shape" => "Label"}, "type" => "map", "value" => %{"shape" => "ScoreValue"}}, "MLModelName" => %{"max" => 1024, "type" => "string"}, "RDSDatabaseName" => %{"max" => 64, "min" => 1, "type" => "string"}, "TaggableResourceType" => %{"enum" => ["BatchPrediction", "DataSource", "Evaluation", "MLModel"], "type" => "string"}, "TrainingParameters" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "EDPPipelineId" => %{"max" => 1024, "min" => 1, "type" => "string"}, "CreateDataSourceFromRedshiftOutput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "BatchPrediction" => %{"members" => %{"BatchPredictionDataSourceId" => %{"shape" => "EntityId"}, "BatchPredictionId" => %{"shape" => "EntityId"}, "ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "InvalidRecordCount" => %{"shape" => "LongType"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "MLModelId" => %{"shape" => "EntityId"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "OutputUri" => %{"shape" => "S3Url"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}, "TotalRecordCount" => %{"shape" => "LongType"}}, "type" => "structure"}, "DescribeMLModelsInput" => %{"members" => %{"EQ" => %{"shape" => "ComparatorValue"}, "FilterVariable" => %{"shape" => "MLModelFilterVariable"}, "GE" => %{"shape" => "ComparatorValue"}, "GT" => %{"shape" => "ComparatorValue"}, "LE" => %{"shape" => "ComparatorValue"}, "LT" => %{"shape" => "ComparatorValue"}, "Limit" => %{"shape" => "PageLimit"}, "NE" => %{"shape" => "ComparatorValue"}, "NextToken" => %{"shape" => "StringType"}, "Prefix" => %{"shape" => "ComparatorValue"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "PerformanceMetrics" => %{"members" => %{"Properties" => %{"shape" => "PerformanceMetricsProperties"}}, "type" => "structure"}, "CreateMLModelOutput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 417}, "exception" => true, "members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "RDSDatabase" => %{"members" => %{"DatabaseName" => %{"shape" => "RDSDatabaseName"}, "InstanceIdentifier" => %{"shape" => "RDSInstanceIdentifier"}}, "required" => ["InstanceIdentifier", "DatabaseName"], "type" => "structure"}, "DeleteEvaluationOutput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "RedshiftDataSpec" => %{"members" => %{"DataRearrangement" => %{"shape" => "DataRearrangement"}, "DataSchema" => %{"shape" => "DataSchema"}, "DataSchemaUri" => %{"shape" => "S3Url"}, "DatabaseCredentials" => %{"shape" => "RedshiftDatabaseCredentials"}, "DatabaseInformation" => %{"shape" => "RedshiftDatabase"}, "S3StagingLocation" => %{"shape" => "S3Url"}, "SelectSqlQuery" => %{"shape" => "RedshiftSelectSqlQuery"}}, "required" => ["DatabaseInformation", "SelectSqlQuery", "DatabaseCredentials", "S3StagingLocation"], "type" => "structure"}, "DataRearrangement" => %{"type" => "string"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "RDSSelectSqlQuery" => %{"max" => 16777216, "min" => 1, "type" => "string"}, "PredictorNotMountedException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DeleteMLModelInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "required" => ["MLModelId"], "type" => "structure"}, "DeleteTagsOutput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}}, "type" => "structure"}, "GetMLModelInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "Verbose" => %{"shape" => "Verbose"}}, "required" => ["MLModelId"], "type" => "structure"}, "ComparatorValue" => %{"max" => 1024, "pattern" => ".*\\S.*|^$", "type" => "string"}, "GetBatchPredictionInput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}}, "required" => ["BatchPredictionId"], "type" => "structure"}, "DetailsMap" => %{"key" => %{"shape" => "DetailsAttributes"}, "type" => "map", "value" => %{"shape" => "DetailsValue"}}, "Algorithm" => %{"enum" => ["sgd"], "type" => "string"}, "EpochTime" => %{"type" => "timestamp"}, "CreateDataSourceFromS3Input" => %{"members" => %{"ComputeStatistics" => %{"shape" => "ComputeStatistics"}, "DataSourceId" => %{"shape" => "EntityId"}, "DataSourceName" => %{"shape" => "EntityName"}, "DataSpec" => %{"shape" => "S3DataSpec"}}, "required" => ["DataSourceId", "DataSpec"], "type" => "structure"}, "DataSourceFilterVariable" => %{"enum" => ["CreatedAt", "LastUpdatedAt", "Status", "Name", "DataLocationS3", "IAMUser"], "type" => "string"}, "DeleteTagsInput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}, "TagKeys" => %{"shape" => "TagKeyList"}}, "required" => ["TagKeys", "ResourceId", "ResourceType"], "type" => "structure"}, "UpdateMLModelOutput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "MLModel" => %{"members" => %{"Algorithm" => %{"shape" => "Algorithm"}, "ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "EndpointInfo" => %{"shape" => "RealtimeEndpointInfo"}, "FinishedAt" => %{"shape" => "EpochTime"}, "InputDataLocationS3" => %{"shape" => "S3Url"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "MLModelId" => %{"shape" => "EntityId"}, "MLModelType" => %{"shape" => "MLModelType"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "MLModelName"}, "ScoreThreshold" => %{"shape" => "ScoreThreshold"}, "ScoreThresholdLastUpdatedAt" => %{"shape" => "EpochTime"}, "SizeInBytes" => %{"shape" => "LongType"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}, "TrainingDataSourceId" => %{"shape" => "EntityId"}, "TrainingParameters" => %{"shape" => "TrainingParameters"}}, "type" => "structure"}, "RedshiftDatabasePassword" => %{"max" => 64, "min" => 8, "type" => "string"}, "CreateEvaluationOutput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "DescribeBatchPredictionsOutput" => %{"members" => %{"NextToken" => %{"shape" => "StringType"}, "Results" => %{"shape" => "BatchPredictions"}}, "type" => "structure"}, "DescribeTagsOutput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}, "Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "GetEvaluationInput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}}, "required" => ["EvaluationId"], "type" => "structure"}, "CreateDataSourceFromRDSInput" => %{"members" => %{"ComputeStatistics" => %{"shape" => "ComputeStatistics"}, "DataSourceId" => %{"shape" => "EntityId"}, "DataSourceName" => %{"shape" => "EntityName"}, "RDSData" => %{"shape" => "RDSDataSpec"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["DataSourceId", "RDSData", "RoleARN"], "type" => "structure"}, "UpdateDataSourceInput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}, "DataSourceName" => %{"shape" => "EntityName"}}, "required" => ["DataSourceId", "DataSourceName"], "type" => "structure"}, "RedshiftDatabaseCredentials" => %{"members" => %{"Password" => %{"shape" => "RedshiftDatabasePassword"}, "Username" => %{"shape" => "RedshiftDatabaseUsername"}}, "required" => ["Username", "Password"], "type" => "structure"}, "RDSDatabaseUsername" => %{"max" => 128, "min" => 1, "type" => "string"}, "DeleteMLModelOutput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "RealtimeEndpointInfo" => %{"members" => %{"CreatedAt" => %{"shape" => "EpochTime"}, "EndpointStatus" => %{"shape" => "RealtimeEndpointStatus"}, "EndpointUrl" => %{"shape" => "VipURL"}, "PeakRequestsPerSecond" => %{"shape" => "IntegerType"}}, "type" => "structure"}, "DescribeMLModelsOutput" => %{"members" => %{"NextToken" => %{"shape" => "StringType"}, "Results" => %{"shape" => "MLModels"}}, "type" => "structure"}, "UpdateBatchPredictionOutput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "type" => "string"}, "EvaluationFilterVariable" => %{"enum" => ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"], "type" => "string"}, "ScoreThreshold" => %{"type" => "float"}, "ComputeStatistics" => %{"type" => "boolean"}, "CreateBatchPredictionOutput" => %{"members" => %{"BatchPredictionId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "InternalServerException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "MLModels" => %{"member" => %{"shape" => "MLModel"}, "type" => "list"}, "RedshiftDatabase" => %{"members" => %{"ClusterIdentifier" => %{"shape" => "RedshiftClusterIdentifier"}, "DatabaseName" => %{"shape" => "RedshiftDatabaseName"}}, "required" => ["DatabaseName", "ClusterIdentifier"], "type" => "structure"}, "EDPSecurityGroupId" => %{"max" => 255, "min" => 1, "type" => "string"}, "BatchPredictionFilterVariable" => %{"enum" => ["CreatedAt", "LastUpdatedAt", "Status", "Name", "IAMUser", "MLModelId", "DataSourceId", "DataURI"], "type" => "string"}, "DeleteEvaluationInput" => %{"members" => %{"EvaluationId" => %{"shape" => "EntityId"}}, "required" => ["EvaluationId"], "type" => "structure"}, "DescribeDataSourcesInput" => %{"members" => %{"EQ" => %{"shape" => "ComparatorValue"}, "FilterVariable" => %{"shape" => "DataSourceFilterVariable"}, "GE" => %{"shape" => "ComparatorValue"}, "GT" => %{"shape" => "ComparatorValue"}, "LE" => %{"shape" => "ComparatorValue"}, "LT" => %{"shape" => "ComparatorValue"}, "Limit" => %{"shape" => "PageLimit"}, "NE" => %{"shape" => "ComparatorValue"}, "NextToken" => %{"shape" => "StringType"}, "Prefix" => %{"shape" => "ComparatorValue"}, "SortOrder" => %{"shape" => "SortOrder"}}, "type" => "structure"}, "Label" => %{"min" => 1, "type" => "string"}, "Verbose" => %{"type" => "boolean"}, "DataSources" => %{"member" => %{"shape" => "DataSource"}, "type" => "list"}, "LongType" => %{"type" => "long"}, "GetDataSourceInput" => %{"members" => %{"DataSourceId" => %{"shape" => "EntityId"}, "Verbose" => %{"shape" => "Verbose"}}, "required" => ["DataSourceId"], "type" => "structure"}, "VariableName" => %{"type" => "string"}, "RDSInstanceIdentifier" => %{"max" => 63, "min" => 1, "pattern" => "[a-z0-9-]+", "type" => "string"}, "BatchPredictions" => %{"member" => %{"shape" => "BatchPrediction"}, "type" => "list"}, "DescribeDataSourcesOutput" => %{"members" => %{"NextToken" => %{"shape" => "StringType"}, "Results" => %{"shape" => "DataSources"}}, "type" => "structure"}, "Evaluations" => %{"member" => %{"shape" => "Evaluation"}, "type" => "list"}, "PageLimit" => %{"max" => 100, "min" => 1, "type" => "integer"}, "S3Url" => %{"max" => 2048, "pattern" => "s3://([^/]+)(/.*)?", "type" => "string"}, "CreateMLModelInput" => %{"members" => %{"MLModelId" => %{"shape" => "EntityId"}, "MLModelName" => %{"shape" => "EntityName"}, "MLModelType" => %{"shape" => "MLModelType"}, "Parameters" => %{"shape" => "TrainingParameters"}, "Recipe" => %{"shape" => "Recipe"}, "RecipeUri" => %{"shape" => "S3Url"}, "TrainingDataSourceId" => %{"shape" => "EntityId"}}, "required" => ["MLModelId", "MLModelType", "TrainingDataSourceId"], "type" => "structure"}, "DataSource" => %{"members" => %{"ComputeStatistics" => %{"shape" => "ComputeStatistics"}, "ComputeTime" => %{"shape" => "LongType"}, "CreatedAt" => %{"shape" => "EpochTime"}, "CreatedByIamUser" => %{"shape" => "AwsUserArn"}, "DataLocationS3" => %{"shape" => "S3Url"}, "DataRearrangement" => %{"shape" => "DataRearrangement"}, "DataSizeInBytes" => %{"shape" => "LongType"}, "DataSourceId" => %{"shape" => "EntityId"}, "FinishedAt" => %{"shape" => "EpochTime"}, "LastUpdatedAt" => %{"shape" => "EpochTime"}, "Message" => %{"shape" => "Message"}, "Name" => %{"shape" => "EntityName"}, "NumberOfFiles" => %{"shape" => "LongType"}, "RDSMetadata" => %{"shape" => "RDSMetadata"}, "RedshiftMetadata" => %{"shape" => "RedshiftMetadata"}, "RoleARN" => %{"shape" => "RoleARN"}, "StartedAt" => %{"shape" => "EpochTime"}, "Status" => %{"shape" => "EntityStatus"}}, "type" => "structure"}, "StringType" => %{"type" => "string"}, "CreateDataSourceFromRedshiftInput" => %{"members" => %{"ComputeStatistics" => %{"shape" => "ComputeStatistics"}, "DataSourceId" => %{"shape" => "EntityId"}, "DataSourceName" => %{"shape" => "EntityName"}, "DataSpec" => %{"shape" => "RedshiftDataSpec"}, "RoleARN" => %{"shape" => "RoleARN"}}, "required" => ["DataSourceId", "DataSpec", "RoleARN"], "type" => "structure"}, "InvalidInputException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"code" => %{"shape" => "ErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DescribeTagsInput" => %{"members" => %{"ResourceId" => %{"shape" => "EntityId"}, "ResourceType" => %{"shape" => "TaggableResourceType"}}, "required" => ["ResourceId", "ResourceType"], "type" => "structure"}}
  end
end