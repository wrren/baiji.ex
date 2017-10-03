defmodule Baiji.Inspector do
  @moduledoc """
  Amazon Inspector

  Amazon Inspector enables you to analyze the behavior of your AWS resources
  and to identify potential security issues. For more information, see [
  Amazon Inspector User
  Guide](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
  """
  
  @doc """
  Enables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def subscribe_to_event(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SubscribeToEvent",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "SubscribeToEventRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes entire attributes (key and value pairs) from the findings that are
  specified by the ARNs of the findings where an attribute with the specified
  key exists.
  """
  def remove_attributes_from_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveAttributesFromFindings",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "RemoveAttributesFromFindingsRequest",
      output_shape:     "RemoveAttributesFromFindingsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the assessment target that is specified by the ARN of the
  assessment target.
  """
  def update_assessment_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateAssessmentTarget",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "UpdateAssessmentTargetRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def unsubscribe_from_event(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UnsubscribeFromEvent",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "UnsubscribeFromEventRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the agents of the assessment runs that are specified by the ARNs of
  the assessment runs.
  """
  def list_assessment_run_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssessmentRunAgents",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListAssessmentRunAgentsRequest",
      output_shape:     "ListAssessmentRunAgentsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Stops the assessment run that is specified by the ARN of the assessment
  run.
  """
  def stop_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopAssessmentRun",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "StopAssessmentRunRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Registers the IAM role that Amazon Inspector uses to list your EC2
  instances at the start of the assessment run or when you call the
  `PreviewAgents` action.
  """
  def register_cross_account_access_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterCrossAccountAccessRole",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "RegisterCrossAccountAccessRoleRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the assessment targets that are specified by the ARNs of the
  assessment targets.
  """
  def describe_assessment_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAssessmentTargets",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeAssessmentTargetsRequest",
      output_shape:     "DescribeAssessmentTargetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all tags associated with an assessment template.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForResource",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListTagsForResourceRequest",
      output_shape:     "ListTagsForResourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the findings that are specified by the ARNs of the findings.
  """
  def describe_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFindings",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeFindingsRequest",
      output_shape:     "DescribeFindingsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the assessment run that is specified by the ARN of the assessment
  run.
  """
  def delete_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAssessmentRun",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DeleteAssessmentRunRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the assessment runs that are specified by the ARNs of the
  assessment runs.
  """
  def describe_assessment_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAssessmentRuns",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeAssessmentRunsRequest",
      output_shape:     "DescribeAssessmentRunsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the assessment template that is specified by the ARN of the
  assessment template.
  """
  def delete_assessment_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAssessmentTemplate",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DeleteAssessmentTemplateRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Previews the agents installed on the EC2 instances that are part of the
  specified assessment target.
  """
  def preview_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PreviewAgents",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "PreviewAgentsRequest",
      output_shape:     "PreviewAgentsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Produces an assessment report that includes detailed and comprehensive
  results of a specified assessment run.
  """
  def get_assessment_report(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetAssessmentReport",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "GetAssessmentReportRequest",
      output_shape:     "GetAssessmentReportResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the assessment target that is specified by the ARN of the
  assessment target.
  """
  def delete_assessment_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAssessmentTarget",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DeleteAssessmentTargetRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the IAM role that enables Amazon Inspector to access your AWS
  account.
  """
  def describe_cross_account_access_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCrossAccountAccessRole",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "",
      output_shape:     "DescribeCrossAccountAccessRoleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the assessment templates that are specified by the ARNs of the
  assessment templates.
  """
  def describe_assessment_templates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAssessmentTemplates",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeAssessmentTemplatesRequest",
      output_shape:     "DescribeAssessmentTemplatesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets tags (key and value pairs) to the assessment template that is
  specified by the ARN of the assessment template.
  """
  def set_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetTagsForResource",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "SetTagsForResourceRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an assessment template for the assessment target that is specified
  by the ARN of the assessment target.
  """
  def create_assessment_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAssessmentTemplate",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "CreateAssessmentTemplateRequest",
      output_shape:     "CreateAssessmentTemplateResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Information about the data that is collected for the specified assessment
  run.
  """
  def get_telemetry_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetTelemetryMetadata",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "GetTelemetryMetadataRequest",
      output_shape:     "GetTelemetryMetadataResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Assigns attributes (key and value pairs) to the findings that are specified
  by the ARNs of the findings.
  """
  def add_attributes_to_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddAttributesToFindings",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "AddAttributesToFindingsRequest",
      output_shape:     "AddAttributesToFindingsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the ARNs of the assessment targets within this AWS account. For more
  information about assessment targets, see [Amazon Inspector Assessment
  Targets](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def list_assessment_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssessmentTargets",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListAssessmentTargetsRequest",
      output_shape:     "ListAssessmentTargetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all the event subscriptions for the assessment template that is
  specified by the ARN of the assessment template. For more information, see
  `SubscribeToEvent` and `UnsubscribeFromEvent`.
  """
  def list_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListEventSubscriptions",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListEventSubscriptionsRequest",
      output_shape:     "ListEventSubscriptionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the rules packages that are specified by the ARNs of the rules
  packages.
  """
  def describe_rules_packages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRulesPackages",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeRulesPackagesRequest",
      output_shape:     "DescribeRulesPackagesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new assessment target using the ARN of the resource group that is
  generated by `CreateResourceGroup`. You can create up to 50 assessment
  targets per AWS account. You can run up to 500 concurrent agents per AWS
  account. For more information, see [ Amazon Inspector Assessment
  Targets](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def create_assessment_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAssessmentTarget",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "CreateAssessmentTargetRequest",
      output_shape:     "CreateAssessmentTargetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a resource group using the specified set of tags (key and value
  pairs) that are used to select the EC2 instances to be included in an
  Amazon Inspector assessment target. The created resource group is then used
  to create an Amazon Inspector assessment target. For more information, see
  `CreateAssessmentTarget`.
  """
  def create_resource_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateResourceGroup",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "CreateResourceGroupRequest",
      output_shape:     "CreateResourceGroupResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the assessment templates that correspond to the assessment targets
  that are specified by the ARNs of the assessment targets.
  """
  def list_assessment_templates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssessmentTemplates",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListAssessmentTemplatesRequest",
      output_shape:     "ListAssessmentTemplatesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists findings that are generated by the assessment runs that are specified
  by the ARNs of the assessment runs.
  """
  def list_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListFindings",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListFindingsRequest",
      output_shape:     "ListFindingsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all available Amazon Inspector rules packages.
  """
  def list_rules_packages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRulesPackages",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListRulesPackagesRequest",
      output_shape:     "ListRulesPackagesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Starts the assessment run specified by the ARN of the assessment template.
  For this API to function properly, you must not exceed the limit of running
  up to 500 concurrent agents per AWS account.
  """
  def start_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartAssessmentRun",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "StartAssessmentRunRequest",
      output_shape:     "StartAssessmentRunResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the assessment runs that correspond to the assessment templates that
  are specified by the ARNs of the assessment templates.
  """
  def list_assessment_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAssessmentRuns",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "ListAssessmentRunsRequest",
      output_shape:     "ListAssessmentRunsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes the resource groups that are specified by the ARNs of the
  resource groups.
  """
  def describe_resource_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "inspector",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeResourceGroups",
      
      target_prefix:    "InspectorService",
      
      endpoint_prefix:  "inspector",
      type:             :json,
      version:          "2016-02-16",
      method:           :post,
      input_shape:      "DescribeResourceGroupsRequest",
      output_shape:     "DescribeResourceGroupsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"ListTagsForResourceResponse" => %{"members" => %{"tags" => %{"shape" => "TagList"}}, "required" => ["tags"], "type" => "structure"}, "Url" => %{"max" => 2048, "type" => "string"}, "AgentHealthList" => %{"max" => 10, "member" => %{"shape" => "AgentHealth"}, "min" => 0, "type" => "list"}, "InspectorServiceAttributes" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}, "rulesPackageArn" => %{"shape" => "Arn"}, "schemaVersion" => %{"shape" => "NumericVersion"}}, "required" => ["schemaVersion"], "type" => "structure"}, "AssessmentRunStateChange" => %{"members" => %{"state" => %{"shape" => "AssessmentRunState"}, "stateChangedAt" => %{"shape" => "Timestamp"}}, "required" => ["stateChangedAt", "state"], "type" => "structure"}, "AddRemoveAttributesFindingArnList" => %{"max" => 10, "member" => %{"shape" => "Arn"}, "min" => 1, "type" => "list"}, "InspectorEvent" => %{"enum" => ["ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"], "type" => "string"}, "NumericVersion" => %{"min" => 0, "type" => "integer"}, "AgentsAlreadyRunningAssessmentException" => %{"exception" => true, "members" => %{"agents" => %{"shape" => "AgentAlreadyRunningAssessmentList"}, "agentsTruncated" => %{"shape" => "Bool"}, "canRetry" => %{"shape" => "Bool"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "agents", "agentsTruncated", "canRetry"], "type" => "structure"}, "ServiceName" => %{"max" => 128, "min" => 0, "type" => "string"}, "UpdateAssessmentTargetRequest" => %{"members" => %{"assessmentTargetArn" => %{"shape" => "Arn"}, "assessmentTargetName" => %{"shape" => "AssessmentTargetName"}, "resourceGroupArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTargetArn", "assessmentTargetName", "resourceGroupArn"], "type" => "structure"}, "RegisterCrossAccountAccessRoleRequest" => %{"members" => %{"roleArn" => %{"shape" => "Arn"}}, "required" => ["roleArn"], "type" => "structure"}, "AgentPreviewList" => %{"max" => 100, "member" => %{"shape" => "AgentPreview"}, "min" => 0, "type" => "list"}, "DescribeRulesPackagesRequest" => %{"members" => %{"locale" => %{"shape" => "Locale"}, "rulesPackageArns" => %{"shape" => "BatchDescribeArnList"}}, "required" => ["rulesPackageArns"], "type" => "structure"}, "ErrorMessage" => %{"max" => 1000, "min" => 0, "type" => "string"}, "DescribeAssessmentTemplatesRequest" => %{"members" => %{"assessmentTemplateArns" => %{"shape" => "BatchDescribeArnList"}}, "required" => ["assessmentTemplateArns"], "type" => "structure"}, "AssessmentRunList" => %{"max" => 10, "member" => %{"shape" => "AssessmentRun"}, "min" => 0, "type" => "list"}, "DescribeFindingsRequest" => %{"members" => %{"findingArns" => %{"shape" => "BatchDescribeArnList"}, "locale" => %{"shape" => "Locale"}}, "required" => ["findingArns"], "type" => "structure"}, "AssessmentRunNotification" => %{"members" => %{"date" => %{"shape" => "Timestamp"}, "error" => %{"shape" => "Bool"}, "event" => %{"shape" => "InspectorEvent"}, "message" => %{"shape" => "Message"}, "snsPublishStatusCode" => %{"shape" => "AssessmentRunNotificationSnsStatusCode"}, "snsTopicArn" => %{"shape" => "Arn"}}, "required" => ["date", "event", "error"], "type" => "structure"}, "FailedItemErrorCode" => %{"enum" => ["INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"], "type" => "string"}, "SeverityList" => %{"max" => 50, "member" => %{"shape" => "Severity"}, "min" => 0, "type" => "list"}, "StartAssessmentRunRequest" => %{"members" => %{"assessmentRunName" => %{"shape" => "AssessmentRunName"}, "assessmentTemplateArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTemplateArn"], "type" => "structure"}, "GetTelemetryMetadataResponse" => %{"members" => %{"telemetryMetadata" => %{"shape" => "TelemetryMetadataList"}}, "required" => ["telemetryMetadata"], "type" => "structure"}, "Attribute" => %{"members" => %{"key" => %{"shape" => "AttributeKey"}, "value" => %{"shape" => "AttributeValue"}}, "required" => ["key"], "type" => "structure"}, "AccessDeniedException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "errorCode" => %{"shape" => "AccessDeniedErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "errorCode", "canRetry"], "type" => "structure"}, "ListAssessmentRunsResponse" => %{"members" => %{"assessmentRunArns" => %{"shape" => "ListReturnedArnList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["assessmentRunArns"], "type" => "structure"}, "InternalException" => %{"exception" => true, "fault" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "canRetry"], "type" => "structure"}, "DescribeAssessmentTargetsRequest" => %{"members" => %{"assessmentTargetArns" => %{"shape" => "BatchDescribeArnList"}}, "required" => ["assessmentTargetArns"], "type" => "structure"}, "AssessmentRunState" => %{"enum" => ["CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "START_EVALUATING_RULES_PENDING", "EVALUATING_RULES", "FAILED", "ERROR", "COMPLETED", "COMPLETED_WITH_ERRORS", "CANCELED"], "type" => "string"}, "ReportType" => %{"enum" => ["FINDING", "FULL"], "type" => "string"}, "AssessmentRunName" => %{"max" => 140, "min" => 1, "type" => "string"}, "DescribeCrossAccountAccessRoleResponse" => %{"members" => %{"registeredAt" => %{"shape" => "Timestamp"}, "roleArn" => %{"shape" => "Arn"}, "valid" => %{"shape" => "Bool"}}, "required" => ["roleArn", "valid", "registeredAt"], "type" => "structure"}, "ListEventSubscriptionsMaxResults" => %{"type" => "integer"}, "CreateAssessmentTargetRequest" => %{"members" => %{"assessmentTargetName" => %{"shape" => "AssessmentTargetName"}, "resourceGroupArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTargetName", "resourceGroupArn"], "type" => "structure"}, "AgentFilter" => %{"members" => %{"agentHealthCodes" => %{"shape" => "AgentHealthCodeList"}, "agentHealths" => %{"shape" => "AgentHealthList"}}, "required" => ["agentHealths", "agentHealthCodes"], "type" => "structure"}, "SetTagsForResourceRequest" => %{"members" => %{"resourceArn" => %{"shape" => "Arn"}, "tags" => %{"shape" => "TagList"}}, "required" => ["resourceArn"], "type" => "structure"}, "RulesPackage" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "description" => %{"shape" => "Text"}, "name" => %{"shape" => "RulesPackageName"}, "provider" => %{"shape" => "ProviderName"}, "version" => %{"shape" => "Version"}}, "required" => ["arn", "name", "version", "provider"], "type" => "structure"}, "AssessmentRunFilter" => %{"members" => %{"completionTimeRange" => %{"shape" => "TimestampRange"}, "durationRange" => %{"shape" => "DurationRange"}, "namePattern" => %{"shape" => "NamePattern"}, "rulesPackageArns" => %{"shape" => "FilterRulesPackageArnList"}, "startTimeRange" => %{"shape" => "TimestampRange"}, "stateChangeTimeRange" => %{"shape" => "TimestampRange"}, "states" => %{"shape" => "AssessmentRunStateList"}}, "type" => "structure"}, "StopAssessmentRunRequest" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}, "stopAction" => %{"shape" => "StopAction"}}, "required" => ["assessmentRunArn"], "type" => "structure"}, "ListTagsForResourceRequest" => %{"members" => %{"resourceArn" => %{"shape" => "Arn"}}, "required" => ["resourceArn"], "type" => "structure"}, "RemoveAttributesFromFindingsResponse" => %{"members" => %{"failedItems" => %{"shape" => "FailedItems"}}, "required" => ["failedItems"], "type" => "structure"}, "NoSuchEntityErrorCode" => %{"enum" => ["ASSESSMENT_TARGET_DOES_NOT_EXIST", "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST", "ASSESSMENT_RUN_DOES_NOT_EXIST", "FINDING_DOES_NOT_EXIST", "RESOURCE_GROUP_DOES_NOT_EXIST", "RULES_PACKAGE_DOES_NOT_EXIST", "SNS_TOPIC_DOES_NOT_EXIST", "IAM_ROLE_DOES_NOT_EXIST"], "type" => "string"}, "UserAttributeKeyList" => %{"max" => 10, "member" => %{"shape" => "AttributeKey"}, "min" => 0, "type" => "list"}, "DescribeFindingsResponse" => %{"members" => %{"failedItems" => %{"shape" => "FailedItems"}, "findings" => %{"shape" => "FindingList"}}, "required" => ["findings", "failedItems"], "type" => "structure"}, "Finding" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "assetAttributes" => %{"shape" => "AssetAttributes"}, "assetType" => %{"shape" => "AssetType"}, "attributes" => %{"shape" => "AttributeList"}, "confidence" => %{"shape" => "IocConfidence"}, "createdAt" => %{"shape" => "Timestamp"}, "description" => %{"shape" => "Text"}, "id" => %{"shape" => "FindingId"}, "indicatorOfCompromise" => %{"shape" => "Bool"}, "numericSeverity" => %{"shape" => "NumericSeverity"}, "recommendation" => %{"shape" => "Text"}, "schemaVersion" => %{"shape" => "NumericVersion"}, "service" => %{"shape" => "ServiceName"}, "serviceAttributes" => %{"shape" => "InspectorServiceAttributes"}, "severity" => %{"shape" => "Severity"}, "title" => %{"shape" => "Text"}, "updatedAt" => %{"shape" => "Timestamp"}, "userAttributes" => %{"shape" => "UserAttributeList"}}, "required" => ["arn", "attributes", "userAttributes", "createdAt", "updatedAt"], "type" => "structure"}, "DescribeResourceGroupsRequest" => %{"members" => %{"resourceGroupArns" => %{"shape" => "BatchDescribeArnList"}}, "required" => ["resourceGroupArns"], "type" => "structure"}, "RulesPackageName" => %{"max" => 1000, "min" => 0, "type" => "string"}, "AssessmentRunInProgressArnList" => %{"max" => 10, "member" => %{"shape" => "Arn"}, "min" => 1, "type" => "list"}, "AssessmentTemplateRulesPackageArnList" => %{"max" => 50, "member" => %{"shape" => "Arn"}, "min" => 0, "type" => "list"}, "ListFindingsRequest" => %{"members" => %{"assessmentRunArns" => %{"shape" => "ListParentArnList"}, "filter" => %{"shape" => "FindingFilter"}, "maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "DescribeRulesPackagesResponse" => %{"members" => %{"failedItems" => %{"shape" => "FailedItems"}, "rulesPackages" => %{"shape" => "RulesPackageList"}}, "required" => ["rulesPackages", "failedItems"], "type" => "structure"}, "Bool" => %{"type" => "boolean"}, "AmiId" => %{"max" => 256, "min" => 0, "type" => "string"}, "AssessmentRunStateChangeList" => %{"max" => 50, "member" => %{"shape" => "AssessmentRunStateChange"}, "min" => 0, "type" => "list"}, "FilterRulesPackageArnList" => %{"max" => 50, "member" => %{"shape" => "Arn"}, "min" => 0, "type" => "list"}, "DescribeAssessmentRunsRequest" => %{"members" => %{"assessmentRunArns" => %{"shape" => "BatchDescribeArnList"}}, "required" => ["assessmentRunArns"], "type" => "structure"}, "PreviewAgentsMaxResults" => %{"type" => "integer"}, "AddAttributesToFindingsResponse" => %{"members" => %{"failedItems" => %{"shape" => "FailedItems"}}, "required" => ["failedItems"], "type" => "structure"}, "AssetAttributes" => %{"members" => %{"agentId" => %{"shape" => "AgentId"}, "amiId" => %{"shape" => "AmiId"}, "autoScalingGroup" => %{"shape" => "AutoScalingGroup"}, "hostname" => %{"shape" => "Hostname"}, "ipv4Addresses" => %{"shape" => "Ipv4AddressList"}, "schemaVersion" => %{"shape" => "NumericVersion"}}, "required" => ["schemaVersion"], "type" => "structure"}, "DescribeAssessmentRunsResponse" => %{"members" => %{"assessmentRuns" => %{"shape" => "AssessmentRunList"}, "failedItems" => %{"shape" => "FailedItems"}}, "required" => ["assessmentRuns", "failedItems"], "type" => "structure"}, "FindingCount" => %{"type" => "integer"}, "NamePattern" => %{"max" => 140, "min" => 1, "type" => "string"}, "Version" => %{"max" => 1000, "min" => 0, "type" => "string"}, "UserAttributeList" => %{"max" => 10, "member" => %{"shape" => "Attribute"}, "min" => 0, "type" => "list"}, "ListAssessmentRunAgentsRequest" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}, "filter" => %{"shape" => "AgentFilter"}, "maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["assessmentRunArn"], "type" => "structure"}, "FailedItemDetails" => %{"members" => %{"failureCode" => %{"shape" => "FailedItemErrorCode"}, "retryable" => %{"shape" => "Bool"}}, "required" => ["failureCode", "retryable"], "type" => "structure"}, "Message" => %{"max" => 1000, "min" => 0, "type" => "string"}, "RuleNameList" => %{"max" => 50, "member" => %{"shape" => "RuleName"}, "min" => 0, "type" => "list"}, "ListReturnedArnList" => %{"max" => 100, "member" => %{"shape" => "Arn"}, "min" => 0, "type" => "list"}, "AssessmentRunDuration" => %{"max" => 86400, "min" => 180, "type" => "integer"}, "EventSubscription" => %{"members" => %{"event" => %{"shape" => "InspectorEvent"}, "subscribedAt" => %{"shape" => "Timestamp"}}, "required" => ["event", "subscribedAt"], "type" => "structure"}, "BatchDescribeArnList" => %{"max" => 10, "member" => %{"shape" => "Arn"}, "min" => 1, "type" => "list"}, "AssessmentRunStateList" => %{"max" => 50, "member" => %{"shape" => "AssessmentRunState"}, "min" => 0, "type" => "list"}, "Tag" => %{"members" => %{"key" => %{"shape" => "TagKey"}, "value" => %{"shape" => "TagValue"}}, "required" => ["key"], "type" => "structure"}, "InvalidCrossAccountRoleException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "errorCode" => %{"shape" => "InvalidCrossAccountRoleErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "errorCode", "canRetry"], "type" => "structure"}, "AttributeList" => %{"max" => 50, "member" => %{"shape" => "Attribute"}, "min" => 0, "type" => "list"}, "AddAttributesToFindingsRequest" => %{"members" => %{"attributes" => %{"shape" => "UserAttributeList"}, "findingArns" => %{"shape" => "AddRemoveAttributesFindingArnList"}}, "required" => ["findingArns", "attributes"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "AutoScalingGroupList" => %{"max" => 20, "member" => %{"shape" => "AutoScalingGroup"}, "min" => 0, "type" => "list"}, "ResourceGroup" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "createdAt" => %{"shape" => "Timestamp"}, "tags" => %{"shape" => "ResourceGroupTags"}}, "required" => ["arn", "tags", "createdAt"], "type" => "structure"}, "AssessmentRunNotificationList" => %{"max" => 50, "member" => %{"shape" => "AssessmentRunNotification"}, "min" => 0, "type" => "list"}, "Hostname" => %{"max" => 256, "min" => 0, "type" => "string"}, "ListEventSubscriptionsRequest" => %{"members" => %{"maxResults" => %{"shape" => "ListEventSubscriptionsMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}, "resourceArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "Ipv4AddressList" => %{"max" => 50, "member" => %{"shape" => "Ipv4Address"}, "min" => 0, "type" => "list"}, "TagList" => %{"max" => 10, "member" => %{"shape" => "Tag"}, "min" => 0, "type" => "list"}, "AssessmentTargetList" => %{"max" => 10, "member" => %{"shape" => "AssessmentTarget"}, "min" => 0, "type" => "list"}, "AssessmentRunFindingCounts" => %{"key" => %{"shape" => "Severity"}, "type" => "map", "value" => %{"shape" => "FindingCount"}}, "StartAssessmentRunResponse" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}}, "required" => ["assessmentRunArn"], "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "NumericSeverity" => %{"max" => 10.0, "min" => 0.0, "type" => "double"}, "Subscription" => %{"members" => %{"eventSubscriptions" => %{"shape" => "EventSubscriptionList"}, "resourceArn" => %{"shape" => "Arn"}, "topicArn" => %{"shape" => "Arn"}}, "required" => ["resourceArn", "topicArn", "eventSubscriptions"], "type" => "structure"}, "ReportFileFormat" => %{"enum" => ["HTML", "PDF"], "type" => "string"}, "TimestampRange" => %{"members" => %{"beginDate" => %{"shape" => "Timestamp"}, "endDate" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "AccessDeniedErrorCode" => %{"enum" => ["ACCESS_DENIED_TO_ASSESSMENT_TARGET", "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE", "ACCESS_DENIED_TO_ASSESSMENT_RUN", "ACCESS_DENIED_TO_FINDING", "ACCESS_DENIED_TO_RESOURCE_GROUP", "ACCESS_DENIED_TO_RULES_PACKAGE", "ACCESS_DENIED_TO_SNS_TOPIC", "ACCESS_DENIED_TO_IAM_ROLE"], "type" => "string"}, "Arn" => %{"max" => 300, "min" => 1, "type" => "string"}, "AssetType" => %{"enum" => ["ec2-instance"], "type" => "string"}, "TelemetryMetadataList" => %{"max" => 5000, "member" => %{"shape" => "TelemetryMetadata"}, "min" => 0, "type" => "list"}, "SubscribeToEventRequest" => %{"members" => %{"event" => %{"shape" => "InspectorEvent"}, "resourceArn" => %{"shape" => "Arn"}, "topicArn" => %{"shape" => "Arn"}}, "required" => ["resourceArn", "event", "topicArn"], "type" => "structure"}, "IocConfidence" => %{"max" => 10, "min" => 0, "type" => "integer"}, "ListRulesPackagesResponse" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "rulesPackageArns" => %{"shape" => "ListReturnedArnList"}}, "required" => ["rulesPackageArns"], "type" => "structure"}, "CreateResourceGroupResponse" => %{"members" => %{"resourceGroupArn" => %{"shape" => "Arn"}}, "required" => ["resourceGroupArn"], "type" => "structure"}, "ResourceGroupList" => %{"max" => 10, "member" => %{"shape" => "ResourceGroup"}, "min" => 0, "type" => "list"}, "PreviewAgentsRequest" => %{"members" => %{"maxResults" => %{"shape" => "PreviewAgentsMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}, "previewAgentsArn" => %{"shape" => "Arn"}}, "required" => ["previewAgentsArn"], "type" => "structure"}, "AssessmentTemplateName" => %{"max" => 140, "min" => 1, "type" => "string"}, "RulesPackageList" => %{"max" => 10, "member" => %{"shape" => "RulesPackage"}, "min" => 0, "type" => "list"}, "AgentHealth" => %{"enum" => ["HEALTHY", "UNHEALTHY"], "type" => "string"}, "GetAssessmentReportRequest" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}, "reportFileFormat" => %{"shape" => "ReportFileFormat"}, "reportType" => %{"shape" => "ReportType"}}, "required" => ["assessmentRunArn", "reportFileFormat", "reportType"], "type" => "structure"}, "SubscriptionList" => %{"max" => 50, "member" => %{"shape" => "Subscription"}, "min" => 0, "type" => "list"}, "AttributeKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "errorCode" => %{"shape" => "LimitExceededErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "errorCode", "canRetry"], "type" => "structure"}, "PreviewAgentsResponse" => %{"members" => %{"agentPreviews" => %{"shape" => "AgentPreviewList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["agentPreviews"], "type" => "structure"}, "TelemetryMetadata" => %{"members" => %{"count" => %{"shape" => "Long"}, "dataSize" => %{"shape" => "Long"}, "messageType" => %{"shape" => "MessageType"}}, "required" => ["messageType", "count"], "type" => "structure"}, "DurationRange" => %{"members" => %{"maxSeconds" => %{"shape" => "AssessmentRunDuration"}, "minSeconds" => %{"shape" => "AssessmentRunDuration"}}, "type" => "structure"}, "AssessmentTarget" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "createdAt" => %{"shape" => "Timestamp"}, "name" => %{"shape" => "AssessmentTargetName"}, "resourceGroupArn" => %{"shape" => "Arn"}, "updatedAt" => %{"shape" => "Timestamp"}}, "required" => ["arn", "name", "resourceGroupArn", "createdAt", "updatedAt"], "type" => "structure"}, "Long" => %{"type" => "long"}, "DeleteAssessmentTargetRequest" => %{"members" => %{"assessmentTargetArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTargetArn"], "type" => "structure"}, "AssessmentTemplate" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "assessmentTargetArn" => %{"shape" => "Arn"}, "createdAt" => %{"shape" => "Timestamp"}, "durationInSeconds" => %{"shape" => "AssessmentRunDuration"}, "name" => %{"shape" => "AssessmentTemplateName"}, "rulesPackageArns" => %{"shape" => "AssessmentTemplateRulesPackageArnList"}, "userAttributesForFindings" => %{"shape" => "UserAttributeList"}}, "required" => ["arn", "name", "assessmentTargetArn", "durationInSeconds", "rulesPackageArns", "userAttributesForFindings", "createdAt"], "type" => "structure"}, "AssessmentRunInProgressException" => %{"exception" => true, "members" => %{"assessmentRunArns" => %{"shape" => "AssessmentRunInProgressArnList"}, "assessmentRunArnsTruncated" => %{"shape" => "Bool"}, "canRetry" => %{"shape" => "Bool"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "assessmentRunArns", "assessmentRunArnsTruncated", "canRetry"], "type" => "structure"}, "AssessmentTargetName" => %{"max" => 140, "min" => 1, "type" => "string"}, "GetTelemetryMetadataRequest" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}}, "required" => ["assessmentRunArn"], "type" => "structure"}, "AssessmentRunNotificationSnsStatusCode" => %{"enum" => ["SUCCESS", "TOPIC_DOES_NOT_EXIST", "ACCESS_DENIED", "INTERNAL_ERROR"], "type" => "string"}, "Locale" => %{"enum" => ["EN_US"], "type" => "string"}, "UnsubscribeFromEventRequest" => %{"members" => %{"event" => %{"shape" => "InspectorEvent"}, "resourceArn" => %{"shape" => "Arn"}, "topicArn" => %{"shape" => "Arn"}}, "required" => ["resourceArn", "event", "topicArn"], "type" => "structure"}, "CreateAssessmentTargetResponse" => %{"members" => %{"assessmentTargetArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTargetArn"], "type" => "structure"}, "FindingList" => %{"max" => 100, "member" => %{"shape" => "Finding"}, "min" => 0, "type" => "list"}, "AgentIdList" => %{"max" => 500, "member" => %{"shape" => "AgentId"}, "min" => 0, "type" => "list"}, "RemoveAttributesFromFindingsRequest" => %{"members" => %{"attributeKeys" => %{"shape" => "UserAttributeKeyList"}, "findingArns" => %{"shape" => "AddRemoveAttributesFindingArnList"}}, "required" => ["findingArns", "attributeKeys"], "type" => "structure"}, "ListAssessmentRunsRequest" => %{"members" => %{"assessmentTemplateArns" => %{"shape" => "ListParentArnList"}, "filter" => %{"shape" => "AssessmentRunFilter"}, "maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ResourceGroupTag" => %{"members" => %{"key" => %{"shape" => "TagKey"}, "value" => %{"shape" => "TagValue"}}, "required" => ["key"], "type" => "structure"}, "RuleName" => %{"max" => 1000, "type" => "string"}, "FindingFilter" => %{"members" => %{"agentIds" => %{"shape" => "AgentIdList"}, "attributes" => %{"shape" => "AttributeList"}, "autoScalingGroups" => %{"shape" => "AutoScalingGroupList"}, "creationTimeRange" => %{"shape" => "TimestampRange"}, "ruleNames" => %{"shape" => "RuleNameList"}, "rulesPackageArns" => %{"shape" => "FilterRulesPackageArnList"}, "severities" => %{"shape" => "SeverityList"}, "userAttributes" => %{"shape" => "AttributeList"}}, "type" => "structure"}, "MessageType" => %{"max" => 300, "min" => 1, "type" => "string"}, "LimitExceededErrorCode" => %{"enum" => ["ASSESSMENT_TARGET_LIMIT_EXCEEDED", "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED", "ASSESSMENT_RUN_LIMIT_EXCEEDED", "RESOURCE_GROUP_LIMIT_EXCEEDED", "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED"], "type" => "string"}, "ListAssessmentTargetsRequest" => %{"members" => %{"filter" => %{"shape" => "AssessmentTargetFilter"}, "maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "CreateAssessmentTemplateResponse" => %{"members" => %{"assessmentTemplateArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTemplateArn"], "type" => "structure"}, "PaginationToken" => %{"max" => 300, "min" => 1, "type" => "string"}, "AssessmentRulesPackageArnList" => %{"max" => 50, "member" => %{"shape" => "Arn"}, "min" => 1, "type" => "list"}, "GetAssessmentReportResponse" => %{"members" => %{"status" => %{"shape" => "ReportStatus"}, "url" => %{"shape" => "Url"}}, "required" => ["status"], "type" => "structure"}, "ProviderName" => %{"max" => 1000, "min" => 0, "type" => "string"}, "FailedItems" => %{"key" => %{"shape" => "Arn"}, "type" => "map", "value" => %{"shape" => "FailedItemDetails"}}, "Severity" => %{"enum" => ["Low", "Medium", "High", "Informational", "Undefined"], "type" => "string"}, "AssessmentTemplateList" => %{"max" => 10, "member" => %{"shape" => "AssessmentTemplate"}, "min" => 0, "type" => "list"}, "FindingId" => %{"max" => 128, "min" => 0, "type" => "string"}, "ListMaxResults" => %{"type" => "integer"}, "AttributeValue" => %{"max" => 256, "min" => 1, "type" => "string"}, "TagKey" => %{"max" => 128, "min" => 1, "type" => "string"}, "AgentPreview" => %{"members" => %{"agentId" => %{"shape" => "AgentId"}, "autoScalingGroup" => %{"shape" => "AutoScalingGroup"}}, "required" => ["agentId"], "type" => "structure"}, "ListFindingsResponse" => %{"members" => %{"findingArns" => %{"shape" => "ListReturnedArnList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["findingArns"], "type" => "structure"}, "DescribeResourceGroupsResponse" => %{"members" => %{"failedItems" => %{"shape" => "FailedItems"}, "resourceGroups" => %{"shape" => "ResourceGroupList"}}, "required" => ["resourceGroups", "failedItems"], "type" => "structure"}, "ListAssessmentTemplatesRequest" => %{"members" => %{"assessmentTargetArns" => %{"shape" => "ListParentArnList"}, "filter" => %{"shape" => "AssessmentTemplateFilter"}, "maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "ListAssessmentTemplatesResponse" => %{"members" => %{"assessmentTemplateArns" => %{"shape" => "ListReturnedArnList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["assessmentTemplateArns"], "type" => "structure"}, "ResourceGroupTags" => %{"max" => 10, "member" => %{"shape" => "ResourceGroupTag"}, "min" => 1, "type" => "list"}, "CreateAssessmentTemplateRequest" => %{"members" => %{"assessmentTargetArn" => %{"shape" => "Arn"}, "assessmentTemplateName" => %{"shape" => "AssessmentTemplateName"}, "durationInSeconds" => %{"shape" => "AssessmentRunDuration"}, "rulesPackageArns" => %{"shape" => "AssessmentTemplateRulesPackageArnList"}, "userAttributesForFindings" => %{"shape" => "UserAttributeList"}}, "required" => ["assessmentTargetArn", "assessmentTemplateName", "durationInSeconds", "rulesPackageArns"], "type" => "structure"}, "AssessmentRunAgent" => %{"members" => %{"agentHealth" => %{"shape" => "AgentHealth"}, "agentHealthCode" => %{"shape" => "AgentHealthCode"}, "agentHealthDetails" => %{"shape" => "Message"}, "agentId" => %{"shape" => "AgentId"}, "assessmentRunArn" => %{"shape" => "Arn"}, "autoScalingGroup" => %{"shape" => "AutoScalingGroup"}, "telemetryMetadata" => %{"shape" => "TelemetryMetadataList"}}, "required" => ["agentId", "assessmentRunArn", "agentHealth", "agentHealthCode", "telemetryMetadata"], "type" => "structure"}, "NoSuchEntityException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "errorCode" => %{"shape" => "NoSuchEntityErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "errorCode", "canRetry"], "type" => "structure"}, "AssessmentTargetFilter" => %{"members" => %{"assessmentTargetNamePattern" => %{"shape" => "NamePattern"}}, "type" => "structure"}, "DeleteAssessmentRunRequest" => %{"members" => %{"assessmentRunArn" => %{"shape" => "Arn"}}, "required" => ["assessmentRunArn"], "type" => "structure"}, "StopAction" => %{"enum" => ["START_EVALUATION", "SKIP_EVALUATION"], "type" => "string"}, "AgentId" => %{"max" => 128, "min" => 1, "type" => "string"}, "AssessmentRun" => %{"members" => %{"arn" => %{"shape" => "Arn"}, "assessmentTemplateArn" => %{"shape" => "Arn"}, "completedAt" => %{"shape" => "Timestamp"}, "createdAt" => %{"shape" => "Timestamp"}, "dataCollected" => %{"shape" => "Bool"}, "durationInSeconds" => %{"shape" => "AssessmentRunDuration"}, "findingCounts" => %{"shape" => "AssessmentRunFindingCounts"}, "name" => %{"shape" => "AssessmentRunName"}, "notifications" => %{"shape" => "AssessmentRunNotificationList"}, "rulesPackageArns" => %{"shape" => "AssessmentRulesPackageArnList"}, "startedAt" => %{"shape" => "Timestamp"}, "state" => %{"shape" => "AssessmentRunState"}, "stateChangedAt" => %{"shape" => "Timestamp"}, "stateChanges" => %{"shape" => "AssessmentRunStateChangeList"}, "userAttributesForFindings" => %{"shape" => "UserAttributeList"}}, "required" => ["arn", "name", "assessmentTemplateArn", "state", "durationInSeconds", "rulesPackageArns", "userAttributesForFindings", "createdAt", "stateChangedAt", "dataCollected", "stateChanges", "notifications", "findingCounts"], "type" => "structure"}, "ListEventSubscriptionsResponse" => %{"members" => %{"nextToken" => %{"shape" => "PaginationToken"}, "subscriptions" => %{"shape" => "SubscriptionList"}}, "required" => ["subscriptions"], "type" => "structure"}, "AutoScalingGroup" => %{"max" => 256, "min" => 1, "type" => "string"}, "CreateResourceGroupRequest" => %{"members" => %{"resourceGroupTags" => %{"shape" => "ResourceGroupTags"}}, "required" => ["resourceGroupTags"], "type" => "structure"}, "ListAssessmentTargetsResponse" => %{"members" => %{"assessmentTargetArns" => %{"shape" => "ListReturnedArnList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["assessmentTargetArns"], "type" => "structure"}, "AssessmentTemplateFilter" => %{"members" => %{"durationRange" => %{"shape" => "DurationRange"}, "namePattern" => %{"shape" => "NamePattern"}, "rulesPackageArns" => %{"shape" => "FilterRulesPackageArnList"}}, "type" => "structure"}, "DescribeAssessmentTemplatesResponse" => %{"members" => %{"assessmentTemplates" => %{"shape" => "AssessmentTemplateList"}, "failedItems" => %{"shape" => "FailedItems"}}, "required" => ["assessmentTemplates", "failedItems"], "type" => "structure"}, "Text" => %{"max" => 20000, "min" => 0, "type" => "string"}, "ReportStatus" => %{"enum" => ["WORK_IN_PROGRESS", "FAILED", "COMPLETED"], "type" => "string"}, "DescribeAssessmentTargetsResponse" => %{"members" => %{"assessmentTargets" => %{"shape" => "AssessmentTargetList"}, "failedItems" => %{"shape" => "FailedItems"}}, "required" => ["assessmentTargets", "failedItems"], "type" => "structure"}, "ListAssessmentRunAgentsResponse" => %{"members" => %{"assessmentRunAgents" => %{"shape" => "AssessmentRunAgentList"}, "nextToken" => %{"shape" => "PaginationToken"}}, "required" => ["assessmentRunAgents"], "type" => "structure"}, "ListParentArnList" => %{"max" => 50, "member" => %{"shape" => "Arn"}, "min" => 0, "type" => "list"}, "AgentAlreadyRunningAssessment" => %{"members" => %{"agentId" => %{"shape" => "AgentId"}, "assessmentRunArn" => %{"shape" => "Arn"}}, "required" => ["agentId", "assessmentRunArn"], "type" => "structure"}, "AgentHealthCode" => %{"enum" => ["IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"], "type" => "string"}, "AgentAlreadyRunningAssessmentList" => %{"max" => 10, "member" => %{"shape" => "AgentAlreadyRunningAssessment"}, "min" => 1, "type" => "list"}, "AssessmentRunAgentList" => %{"max" => 500, "member" => %{"shape" => "AssessmentRunAgent"}, "min" => 0, "type" => "list"}, "ListRulesPackagesRequest" => %{"members" => %{"maxResults" => %{"shape" => "ListMaxResults"}, "nextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "UnsupportedFeatureException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "canRetry"], "type" => "structure"}, "DeleteAssessmentTemplateRequest" => %{"members" => %{"assessmentTemplateArn" => %{"shape" => "Arn"}}, "required" => ["assessmentTemplateArn"], "type" => "structure"}, "InvalidInputException" => %{"exception" => true, "members" => %{"canRetry" => %{"shape" => "Bool"}, "errorCode" => %{"shape" => "InvalidInputErrorCode"}, "message" => %{"shape" => "ErrorMessage"}}, "required" => ["message", "errorCode", "canRetry"], "type" => "structure"}, "AgentHealthCodeList" => %{"max" => 10, "member" => %{"shape" => "AgentHealthCode"}, "min" => 0, "type" => "list"}, "InvalidCrossAccountRoleErrorCode" => %{"enum" => ["ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP", "ROLE_DOES_NOT_HAVE_CORRECT_POLICY"], "type" => "string"}, "Ipv4Address" => %{"max" => 15, "min" => 7, "type" => "string"}, "EventSubscriptionList" => %{"max" => 50, "member" => %{"shape" => "EventSubscription"}, "min" => 1, "type" => "list"}, "InvalidInputErrorCode" => %{"enum" => ["INVALID_ASSESSMENT_TARGET_ARN", "INVALID_ASSESSMENT_TEMPLATE_ARN", "INVALID_ASSESSMENT_RUN_ARN", "INVALID_FINDING_ARN", "INVALID_RESOURCE_GROUP_ARN", "INVALID_RULES_PACKAGE_ARN", "INVALID_RESOURCE_ARN", "INVALID_SNS_TOPIC_ARN", "INVALID_IAM_ROLE_ARN", "INVALID_ASSESSMENT_TARGET_NAME", "INVALID_ASSESSMENT_TARGET_NAME_PATTERN", "INVALID_ASSESSMENT_TEMPLATE_NAME", "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN", "INVALID_ASSESSMENT_TEMPLATE_DURATION", "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE", "INVALID_ASSESSMENT_RUN_DURATION_RANGE", "INVALID_ASSESSMENT_RUN_START_TIME_RANGE", "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE", "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE", "INVALID_ASSESSMENT_RUN_STATE", "INVALID_TAG", "INVALID_TAG_KEY", "INVALID_TAG_VALUE", "INVALID_RESOURCE_GROUP_TAG_KEY", "INVALID_RESOURCE_GROUP_TAG_VALUE", "INVALID_ATTRIBUTE", "INVALID_USER_ATTRIBUTE", "INVALID_USER_ATTRIBUTE_KEY", "INVALID_USER_ATTRIBUTE_VALUE", "INVALID_PAGINATION_TOKEN", "INVALID_MAX_RESULTS", "INVALID_AGENT_ID", "INVALID_AUTO_SCALING_GROUP", "INVALID_RULE_NAME", "INVALID_SEVERITY", "INVALID_LOCALE", "INVALID_EVENT", "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN", "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN", "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS", "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS", "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS", "INVALID_NUMBER_OF_FINDING_ARNS", "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS", "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS", "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES", "INVALID_NUMBER_OF_TAGS", "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS", "INVALID_NUMBER_OF_ATTRIBUTES", "INVALID_NUMBER_OF_USER_ATTRIBUTES", "INVALID_NUMBER_OF_AGENT_IDS", "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS", "INVALID_NUMBER_OF_RULE_NAMES", "INVALID_NUMBER_OF_SEVERITIES"], "type" => "string"}}
  end
end