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
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SubscribeToEvent",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Removes entire attributes (key and value pairs) from the findings that are
  specified by the ARNs of the findings where an attribute with the specified
  key exists.
  """
  def remove_attributes_from_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveAttributesFromFindings",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Updates the assessment target that is specified by the ARN of the
  assessment target.
  """
  def update_assessment_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateAssessmentTarget",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Disables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def unsubscribe_from_event(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UnsubscribeFromEvent",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the agents of the assessment runs that are specified by the ARNs of
  the assessment runs.
  """
  def list_assessment_run_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAssessmentRunAgents",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Stops the assessment run that is specified by the ARN of the assessment
  run.
  """
  def stop_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StopAssessmentRun",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Registers the IAM role that Amazon Inspector uses to list your EC2
  instances at the start of the assessment run or when you call the
  `PreviewAgents` action.
  """
  def register_cross_account_access_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RegisterCrossAccountAccessRole",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the assessment targets that are specified by the ARNs of the
  assessment targets.
  """
  def describe_assessment_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAssessmentTargets",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all tags associated with an assessment template.
  """
  def list_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTagsForResource",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the findings that are specified by the ARNs of the findings.
  """
  def describe_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeFindings",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes the assessment run that is specified by the ARN of the assessment
  run.
  """
  def delete_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAssessmentRun",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the assessment runs that are specified by the ARNs of the
  assessment runs.
  """
  def describe_assessment_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAssessmentRuns",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes the assessment template that is specified by the ARN of the
  assessment template.
  """
  def delete_assessment_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAssessmentTemplate",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Previews the agents installed on the EC2 instances that are part of the
  specified assessment target.
  """
  def preview_agents(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PreviewAgents",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Produces an assessment report that includes detailed and comprehensive
  results of a specified assessment run.
  """
  def get_assessment_report(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAssessmentReport",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Deletes the assessment target that is specified by the ARN of the
  assessment target.
  """
  def delete_assessment_target(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAssessmentTarget",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the IAM role that enables Amazon Inspector to access your AWS
  account.
  """
  def describe_cross_account_access_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeCrossAccountAccessRole",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the assessment templates that are specified by the ARNs of the
  assessment templates.
  """
  def describe_assessment_templates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeAssessmentTemplates",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Sets tags (key and value pairs) to the assessment template that is
  specified by the ARN of the assessment template.
  """
  def set_tags_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetTagsForResource",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Creates an assessment template for the assessment target that is specified
  by the ARN of the assessment target.
  """
  def create_assessment_template(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAssessmentTemplate",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Information about the data that is collected for the specified assessment
  run.
  """
  def get_telemetry_metadata(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTelemetryMetadata",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Assigns attributes (key and value pairs) to the findings that are specified
  by the ARNs of the findings.
  """
  def add_attributes_to_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddAttributesToFindings",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the ARNs of the assessment targets within this AWS account. For more
  information about assessment targets, see [Amazon Inspector Assessment
  Targets](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def list_assessment_targets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAssessmentTargets",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all the event subscriptions for the assessment template that is
  specified by the ARN of the assessment template. For more information, see
  `SubscribeToEvent` and `UnsubscribeFromEvent`.
  """
  def list_event_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListEventSubscriptions",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the rules packages that are specified by the ARNs of the rules
  packages.
  """
  def describe_rules_packages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeRulesPackages",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
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
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAssessmentTarget",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
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
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateResourceGroup",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the assessment templates that correspond to the assessment targets
  that are specified by the ARNs of the assessment targets.
  """
  def list_assessment_templates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAssessmentTemplates",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists findings that are generated by the assessment runs that are specified
  by the ARNs of the assessment runs.
  """
  def list_findings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListFindings",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists all available Amazon Inspector rules packages.
  """
  def list_rules_packages(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListRulesPackages",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Starts the assessment run specified by the ARN of the assessment template.
  For this API to function properly, you must not exceed the limit of running
  up to 500 concurrent agents per AWS account.
  """
  def start_assessment_run(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "StartAssessmentRun",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Lists the assessment runs that correspond to the assessment templates that
  are specified by the ARNs of the assessment templates.
  """
  def list_assessment_runs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAssessmentRuns",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
  @doc """
  Describes the resource groups that are specified by the ARNs of the
  resource groups.
  """
  def describe_resource_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "inspector",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeResourceGroups",
      
      target_prefix:  "InspectorService",
      
      type:           :json,
      method:         :post
    }
  end
  
end