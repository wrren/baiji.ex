defmodule Baiji.AWSBudgets do
  @moduledoc """
  All public APIs for AWS Budgets
  """
  
  @doc """
  Create a new budget
  """
  def create_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateBudget",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "CreateBudgetRequest",
      output_shape:     "CreateBudgetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new Notification with subscribers for a budget
  """
  def create_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateNotification",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "CreateNotificationRequest",
      output_shape:     "CreateNotificationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Create a new Subscriber for a notification
  """
  def create_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSubscriber",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "CreateSubscriberRequest",
      output_shape:     "CreateSubscriberResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete a budget and related notifications
  """
  def delete_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteBudget",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DeleteBudgetRequest",
      output_shape:     "DeleteBudgetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete a notification and related subscribers
  """
  def delete_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteNotification",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DeleteNotificationRequest",
      output_shape:     "DeleteNotificationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Delete a Subscriber for a notification
  """
  def delete_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSubscriber",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DeleteSubscriberRequest",
      output_shape:     "DeleteSubscriberResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get a single budget
  """
  def describe_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBudget",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DescribeBudgetRequest",
      output_shape:     "DescribeBudgetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get all budgets for an account
  """
  def describe_budgets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBudgets",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DescribeBudgetsRequest",
      output_shape:     "DescribeBudgetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get notifications of a budget
  """
  def describe_notifications_for_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNotificationsForBudget",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DescribeNotificationsForBudgetRequest",
      output_shape:     "DescribeNotificationsForBudgetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Get subscribers of a notification
  """
  def describe_subscribers_for_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeSubscribersForNotification",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "DescribeSubscribersForNotificationRequest",
      output_shape:     "DescribeSubscribersForNotificationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Update the information of a budget already created
  """
  def update_budget(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateBudget",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "UpdateBudgetRequest",
      output_shape:     "UpdateBudgetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Update the information about a notification already created
  """
  def update_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateNotification",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "UpdateNotificationRequest",
      output_shape:     "UpdateNotificationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Update a subscriber
  """
  def update_subscriber(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "budgets",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSubscriber",
      
      target_prefix:    "AWSBudgetServiceGateway",
      
      endpoint_prefix:  "budgets",
      type:             :json,
      version:          "2016-10-20",
      method:           :post,
      input_shape:      "UpdateSubscriberRequest",
      output_shape:     "UpdateSubscriberResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"DeleteNotificationResponse" => %{"members" => %{}, "type" => "structure"}, "CostTypes" => %{"members" => %{"IncludeSubscription" => %{"shape" => "GenericBoolean"}, "IncludeTax" => %{"shape" => "GenericBoolean"}, "UseBlended" => %{"shape" => "GenericBoolean"}}, "required" => ["IncludeTax", "IncludeSubscription", "UseBlended"], "type" => "structure"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "GenericString" => %{"type" => "string"}, "TimePeriod" => %{"members" => %{"End" => %{"shape" => "GenericTimestamp"}, "Start" => %{"shape" => "GenericTimestamp"}}, "required" => ["Start", "End"], "type" => "structure"}, "NotificationWithSubscribers" => %{"members" => %{"Notification" => %{"shape" => "Notification"}, "Subscribers" => %{"shape" => "Subscribers"}}, "required" => ["Notification", "Subscribers"], "type" => "structure"}, "UpdateBudgetRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "NewBudget" => %{"shape" => "Budget"}}, "required" => ["AccountId", "NewBudget"], "type" => "structure"}, "CreateNotificationResponse" => %{"members" => %{}, "type" => "structure"}, "CalculatedSpend" => %{"members" => %{"ActualSpend" => %{"shape" => "Spend"}, "ForecastedSpend" => %{"shape" => "Spend"}}, "required" => ["ActualSpend"], "type" => "structure"}, "DescribeNotificationsForBudgetResponse" => %{"members" => %{"NextToken" => %{"shape" => "GenericString"}, "Notifications" => %{"shape" => "Notifications"}}, "type" => "structure"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "NumericValue" => %{"pattern" => "[0-9]*(\\.)?[0-9]+", "type" => "string"}, "NotificationThreshold" => %{"max" => 1000000000, "min" => 0.1, "type" => "double"}, "BudgetName" => %{"max" => 100, "pattern" => "[^:\\\\]+", "type" => "string"}, "SubscriptionType" => %{"enum" => ["SNS", "EMAIL"], "type" => "string"}, "DescribeSubscribersForNotificationResponse" => %{"members" => %{"NextToken" => %{"shape" => "GenericString"}, "Subscribers" => %{"shape" => "Subscribers"}}, "type" => "structure"}, "AccountId" => %{"max" => 12, "min" => 12, "type" => "string"}, "DuplicateRecordException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "BudgetType" => %{"enum" => ["USAGE", "COST", "RI_UTILIZATION"], "type" => "string"}, "DescribeBudgetRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}}, "required" => ["AccountId", "BudgetName"], "type" => "structure"}, "GenericTimestamp" => %{"type" => "timestamp"}, "CreationLimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteBudgetResponse" => %{"members" => %{}, "type" => "structure"}, "NotificationWithSubscribersList" => %{"max" => 5, "member" => %{"shape" => "NotificationWithSubscribers"}, "type" => "list"}, "errorMessage" => %{"type" => "string"}, "DimensionValues" => %{"member" => %{"shape" => "GenericString"}, "type" => "list"}, "InternalErrorException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "CreateBudgetResponse" => %{"members" => %{}, "type" => "structure"}, "NotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "MaxResults" => %{"box" => true, "max" => 100, "min" => 1, "type" => "integer"}, "Subscriber" => %{"members" => %{"Address" => %{"shape" => "GenericString"}, "SubscriptionType" => %{"shape" => "SubscriptionType"}}, "required" => ["SubscriptionType", "Address"], "type" => "structure"}, "Notification" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "NotificationType" => %{"shape" => "NotificationType"}, "Threshold" => %{"shape" => "NotificationThreshold"}, "ThresholdType" => %{"shape" => "ThresholdType"}}, "required" => ["NotificationType", "ComparisonOperator", "Threshold"], "type" => "structure"}, "Subscribers" => %{"max" => 11, "member" => %{"shape" => "Subscriber"}, "min" => 1, "type" => "list"}, "DescribeSubscribersForNotificationRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "GenericString"}, "Notification" => %{"shape" => "Notification"}}, "required" => ["AccountId", "BudgetName", "Notification"], "type" => "structure"}, "Notifications" => %{"member" => %{"shape" => "Notification"}, "type" => "list"}, "UnitValue" => %{"min" => 1, "type" => "string"}, "TimeUnit" => %{"enum" => ["DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"], "type" => "string"}, "DescribeBudgetResponse" => %{"members" => %{"Budget" => %{"shape" => "Budget"}}, "type" => "structure"}, "DeleteSubscriberRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "Notification" => %{"shape" => "Notification"}, "Subscriber" => %{"shape" => "Subscriber"}}, "required" => ["AccountId", "BudgetName", "Notification", "Subscriber"], "type" => "structure"}, "UpdateNotificationRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "NewNotification" => %{"shape" => "Notification"}, "OldNotification" => %{"shape" => "Notification"}}, "required" => ["AccountId", "BudgetName", "OldNotification", "NewNotification"], "type" => "structure"}, "Budget" => %{"members" => %{"BudgetLimit" => %{"shape" => "Spend"}, "BudgetName" => %{"shape" => "BudgetName"}, "BudgetType" => %{"shape" => "BudgetType"}, "CalculatedSpend" => %{"shape" => "CalculatedSpend"}, "CostFilters" => %{"shape" => "CostFilters"}, "CostTypes" => %{"shape" => "CostTypes"}, "TimePeriod" => %{"shape" => "TimePeriod"}, "TimeUnit" => %{"shape" => "TimeUnit"}}, "required" => ["BudgetName", "BudgetLimit", "CostTypes", "TimeUnit", "TimePeriod", "BudgetType"], "type" => "structure"}, "UpdateBudgetResponse" => %{"members" => %{}, "type" => "structure"}, "ComparisonOperator" => %{"enum" => ["GREATER_THAN", "LESS_THAN", "EQUAL_TO"], "type" => "string"}, "UpdateSubscriberResponse" => %{"members" => %{}, "type" => "structure"}, "CreateSubscriberRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "Notification" => %{"shape" => "Notification"}, "Subscriber" => %{"shape" => "Subscriber"}}, "required" => ["AccountId", "BudgetName", "Notification", "Subscriber"], "type" => "structure"}, "CreateBudgetRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "Budget" => %{"shape" => "Budget"}, "NotificationsWithSubscribers" => %{"shape" => "NotificationWithSubscribersList"}}, "required" => ["AccountId", "Budget"], "type" => "structure"}, "NotificationType" => %{"enum" => ["ACTUAL", "FORECASTED"], "type" => "string"}, "DescribeNotificationsForBudgetRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "GenericString"}}, "required" => ["AccountId", "BudgetName"], "type" => "structure"}, "DescribeBudgetsResponse" => %{"members" => %{"Budgets" => %{"shape" => "Budgets"}, "NextToken" => %{"shape" => "GenericString"}}, "type" => "structure"}, "CostFilters" => %{"key" => %{"shape" => "GenericString"}, "type" => "map", "value" => %{"shape" => "DimensionValues"}}, "ThresholdType" => %{"enum" => ["PERCENTAGE", "ABSOLUTE_VALUE"], "type" => "string"}, "ExpiredNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "CreateSubscriberResponse" => %{"members" => %{}, "type" => "structure"}, "Spend" => %{"members" => %{"Amount" => %{"shape" => "NumericValue"}, "Unit" => %{"shape" => "UnitValue"}}, "required" => ["Amount", "Unit"], "type" => "structure"}, "DeleteBudgetRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}}, "required" => ["AccountId", "BudgetName"], "type" => "structure"}, "DescribeBudgetsRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "GenericString"}}, "required" => ["AccountId"], "type" => "structure"}, "GenericBoolean" => %{"type" => "boolean"}, "UpdateSubscriberRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "NewSubscriber" => %{"shape" => "Subscriber"}, "Notification" => %{"shape" => "Notification"}, "OldSubscriber" => %{"shape" => "Subscriber"}}, "required" => ["AccountId", "BudgetName", "Notification", "OldSubscriber", "NewSubscriber"], "type" => "structure"}, "DeleteSubscriberResponse" => %{"members" => %{}, "type" => "structure"}, "CreateNotificationRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "Notification" => %{"shape" => "Notification"}, "Subscribers" => %{"shape" => "Subscribers"}}, "required" => ["AccountId", "BudgetName", "Notification", "Subscribers"], "type" => "structure"}, "Budgets" => %{"member" => %{"shape" => "Budget"}, "type" => "list"}, "UpdateNotificationResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteNotificationRequest" => %{"members" => %{"AccountId" => %{"shape" => "AccountId"}, "BudgetName" => %{"shape" => "BudgetName"}, "Notification" => %{"shape" => "Notification"}}, "required" => ["AccountId", "BudgetName", "Notification"], "type" => "structure"}}
  end
end