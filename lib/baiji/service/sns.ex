defmodule Baiji.SNS do
  @moduledoc """
  Amazon Simple Notification Service

  Amazon Simple Notification Service (Amazon SNS) is a web service that
  enables you to build distributed web-enabled applications. Applications can
  use Amazon SNS to easily push real-time notification messages to interested
  subscribers over multiple delivery protocols. For more information about
  this product see [http://aws.amazon.com/sns](http://aws.amazon.com/sns/).
  For detailed information about Amazon SNS features and their associated API
  calls, see the [Amazon SNS Developer
  Guide](http://docs.aws.amazon.com/sns/latest/dg/).

  We also provide SDKs that enable you to access Amazon SNS from your
  preferred programming language. The SDKs contain functionality that
  automatically takes care of tasks such as: cryptographically signing your
  service requests, retrying requests, and handling error responses. For a
  list of available SDKs, go to [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/).
  """

  @doc """
  Adds a statement to a topic's access control policy, granting access for
  the specified AWS accounts to the specified actions.
  """
  def add_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddPermission",
      method:           :post,
      input_shape:      "AddPermissionInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Accepts a phone number and indicates whether the phone holder has opted out
  of receiving SMS messages from your account. You cannot send SMS messages
  to a number that is opted out.

  To resume sending messages, you can opt in the number by using the
  `OptInPhoneNumber` action.
  """
  def check_if_phone_number_is_opted_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CheckIfPhoneNumberIsOptedOut",
      method:           :post,
      input_shape:      "CheckIfPhoneNumberIsOptedOutInput",
      output_shape:     "CheckIfPhoneNumberIsOptedOutResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Verifies an endpoint owner's intent to receive messages by validating the
  token sent to the endpoint by an earlier `Subscribe` action. If the token
  is valid, the action creates a new subscription and returns its Amazon
  Resource Name (ARN). This call requires an AWS signature only when the
  `AuthenticateOnUnsubscribe` flag is set to "true".
  """
  def confirm_subscription(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmSubscription",
      method:           :post,
      input_shape:      "ConfirmSubscriptionInput",
      output_shape:     "ConfirmSubscriptionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a platform application object for one of the supported push
  notification services, such as APNS and GCM, to which devices and mobile
  apps may register. You must specify PlatformPrincipal and
  PlatformCredential attributes when using the `CreatePlatformApplication`
  action. The PlatformPrincipal is received from the notification service.
  For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM,
  PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client
  id". The PlatformCredential is also received from the notification service.
  For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS,
  PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is
  "API key".

  For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM,
  PlatformCredential is "API key". For ADM, PlatformCredential is "client
  secret". For WNS, PlatformCredential is "secret key". For MPNS,
  PlatformCredential is "private key". For Baidu, PlatformCredential is
  "secret key". The PlatformApplicationArn that is returned when using
  `CreatePlatformApplication` is then used as an attribute for the
  `CreatePlatformEndpoint` action. For more information, see [Using Amazon
  SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  For more information about obtaining the PlatformPrincipal and
  PlatformCredential for each of the supported push notification services,
  see [Getting Started with Apple Push Notification
  Service](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html),
  [Getting Started with Amazon Device
  Messaging](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html),
  [Getting Started with Baidu Cloud
  Push](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html),
  [Getting Started with Google Cloud Messaging for
  Android](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html),
  [Getting Started with
  MPNS](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html), or
  [Getting Started with
  WNS](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html).
  """
  def create_platform_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePlatformApplication",
      method:           :post,
      input_shape:      "CreatePlatformApplicationInput",
      output_shape:     "CreatePlatformApplicationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an endpoint for a device and mobile app on one of the supported
  push notification services, such as GCM and APNS. `CreatePlatformEndpoint`
  requires the PlatformApplicationArn that is returned from
  `CreatePlatformApplication`. The EndpointArn that is returned when using
  `CreatePlatformEndpoint` can then be used by the `Publish` action to send a
  message to a mobile app or by the `Subscribe` action for subscription to a
  topic. The `CreatePlatformEndpoint` action is idempotent, so if the
  requester already owns an endpoint with the same device token and
  attributes, that endpoint's ARN is returned without creating a new
  endpoint. For more information, see [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When using `CreatePlatformEndpoint` with Baidu, two attributes must be
  provided: ChannelId and UserId. The token field must also contain the
  ChannelId. For more information, see [Creating an Amazon SNS Endpoint for
  Baidu](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html).
  """
  def create_platform_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePlatformEndpoint",
      method:           :post,
      input_shape:      "CreatePlatformEndpointInput",
      output_shape:     "CreateEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a topic to which notifications can be published. Users can create
  at most 100,000 topics. For more information, see
  [http://aws.amazon.com/sns](http://aws.amazon.com/sns/). This action is
  idempotent, so if the requester already owns a topic with the specified
  name, that topic's ARN is returned without creating a new topic.
  """
  def create_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateTopic",
      method:           :post,
      input_shape:      "CreateTopicInput",
      output_shape:     "CreateTopicResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the endpoint for a device and mobile app from Amazon SNS. This
  action is idempotent. For more information, see [Using Amazon SNS Mobile
  Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When you delete an endpoint that is also subscribed to a topic, then you
  must also unsubscribe the endpoint from the topic.
  """
  def delete_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteEndpoint",
      method:           :post,
      input_shape:      "DeleteEndpointInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a platform application object for one of the supported push
  notification services, such as APNS and GCM. For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def delete_platform_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeletePlatformApplication",
      method:           :post,
      input_shape:      "DeletePlatformApplicationInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a topic and all its subscriptions. Deleting a topic might prevent
  some messages previously sent to the topic from being delivered to
  subscribers. This action is idempotent, so deleting a topic that does not
  exist does not result in an error.
  """
  def delete_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteTopic",
      method:           :post,
      input_shape:      "DeleteTopicInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the endpoint attributes for a device on one of the supported push
  notification services, such as GCM and APNS. For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def get_endpoint_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetEndpointAttributes",
      method:           :post,
      input_shape:      "GetEndpointAttributesInput",
      output_shape:     "GetEndpointAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the attributes of the platform application object for the
  supported push notification services, such as APNS and GCM. For more
  information, see [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def get_platform_application_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPlatformApplicationAttributes",
      method:           :post,
      input_shape:      "GetPlatformApplicationAttributesInput",
      output_shape:     "GetPlatformApplicationAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the settings for sending SMS messages from your account.

  These settings are set with the `SetSMSAttributes` action.
  """
  def get_s_m_s_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSMSAttributes",
      method:           :post,
      input_shape:      "GetSMSAttributesInput",
      output_shape:     "GetSMSAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all of the properties of a subscription.
  """
  def get_subscription_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSubscriptionAttributes",
      method:           :post,
      input_shape:      "GetSubscriptionAttributesInput",
      output_shape:     "GetSubscriptionAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns all of the properties of a topic. Topic properties returned might
  differ based on the authorization of the user.
  """
  def get_topic_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetTopicAttributes",
      method:           :post,
      input_shape:      "GetTopicAttributesInput",
      output_shape:     "GetTopicAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the endpoints and endpoint attributes for devices in a supported push
  notification service, such as GCM and APNS. The results for
  `ListEndpointsByPlatformApplication` are paginated and return a limited
  list of endpoints, up to 100. If additional records are available after the
  first page results, then a NextToken string will be returned. To receive
  the next page, you call `ListEndpointsByPlatformApplication` again using
  the NextToken string received from the previous call. When there are no
  more records to return, NextToken will be null. For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def list_endpoints_by_platform_application(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListEndpointsByPlatformApplication",
      method:           :post,
      input_shape:      "ListEndpointsByPlatformApplicationInput",
      output_shape:     "ListEndpointsByPlatformApplicationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of phone numbers that are opted out, meaning you cannot send
  SMS messages to them.

  The results for `ListPhoneNumbersOptedOut` are paginated, and each page
  returns up to 100 phone numbers. If additional phone numbers are available
  after the first page of results, then a `NextToken` string will be
  returned. To receive the next page, you call `ListPhoneNumbersOptedOut`
  again using the `NextToken` string received from the previous call. When
  there are no more records to return, `NextToken` will be null.
  """
  def list_phone_numbers_opted_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListPhoneNumbersOptedOut",
      method:           :post,
      input_shape:      "ListPhoneNumbersOptedOutInput",
      output_shape:     "ListPhoneNumbersOptedOutResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the platform application objects for the supported push notification
  services, such as APNS and GCM. The results for `ListPlatformApplications`
  are paginated and return a limited list of applications, up to 100. If
  additional records are available after the first page results, then a
  NextToken string will be returned. To receive the next page, you call
  `ListPlatformApplications` using the NextToken string received from the
  previous call. When there are no more records to return, NextToken will be
  null. For more information, see [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def list_platform_applications(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListPlatformApplications",
      method:           :post,
      input_shape:      "ListPlatformApplicationsInput",
      output_shape:     "ListPlatformApplicationsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of the requester's subscriptions. Each call returns a
  limited list of subscriptions, up to 100. If there are more subscriptions,
  a `NextToken` is also returned. Use the `NextToken` parameter in a new
  `ListSubscriptions` call to get further results.
  """
  def list_subscriptions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSubscriptions",
      method:           :post,
      input_shape:      "ListSubscriptionsInput",
      output_shape:     "ListSubscriptionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of the subscriptions to a specific topic. Each call returns
  a limited list of subscriptions, up to 100. If there are more
  subscriptions, a `NextToken` is also returned. Use the `NextToken`
  parameter in a new `ListSubscriptionsByTopic` call to get further results.
  """
  def list_subscriptions_by_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSubscriptionsByTopic",
      method:           :post,
      input_shape:      "ListSubscriptionsByTopicInput",
      output_shape:     "ListSubscriptionsByTopicResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of the requester's topics. Each call returns a limited list
  of topics, up to 100. If there are more topics, a `NextToken` is also
  returned. Use the `NextToken` parameter in a new `ListTopics` call to get
  further results.
  """
  def list_topics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTopics",
      method:           :post,
      input_shape:      "ListTopicsInput",
      output_shape:     "ListTopicsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use this request to opt in a phone number that is opted out, which enables
  you to resume sending SMS messages to the number.

  You can opt in a phone number only once every 30 days.
  """
  def opt_in_phone_number(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "OptInPhoneNumber",
      method:           :post,
      input_shape:      "OptInPhoneNumberInput",
      output_shape:     "OptInPhoneNumberResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sends a message to all of a topic's subscribed endpoints. When a
  `messageId` is returned, the message has been saved and Amazon SNS will
  attempt to deliver it to the topic's subscribers shortly. The format of the
  outgoing message to each subscribed endpoint depends on the notification
  protocol.

  To use the `Publish` action for sending a message to a mobile endpoint,
  such as an app on a Kindle device or mobile phone, you must specify the
  EndpointArn for the TargetArn parameter. The EndpointArn is returned when
  making a call with the `CreatePlatformEndpoint` action.

  For more information about formatting messages, see [Send Custom
  Platform-Specific Payloads in Messages to Mobile
  Devices](http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html).
  """
  def publish(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Publish",
      method:           :post,
      input_shape:      "PublishInput",
      output_shape:     "PublishResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a statement from a topic's access control policy.
  """
  def remove_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemovePermission",
      method:           :post,
      input_shape:      "RemovePermissionInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the attributes for an endpoint for a device on one of the supported
  push notification services, such as GCM and APNS. For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def set_endpoint_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetEndpointAttributes",
      method:           :post,
      input_shape:      "SetEndpointAttributesInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the attributes of the platform application object for the supported
  push notification services, such as APNS and GCM. For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  For information on configuring attributes for message delivery status, see
  [Using Amazon SNS Application Attributes for Message Delivery
  Status](http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).
  """
  def set_platform_application_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetPlatformApplicationAttributes",
      method:           :post,
      input_shape:      "SetPlatformApplicationAttributesInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Use this request to set the default settings for sending SMS messages and
  receiving daily SMS usage reports.

  You can override some of these settings for a single message when you use
  the `Publish` action with the `MessageAttributes.entry.N` parameter. For
  more information, see [Sending an SMS
  Message](http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html)
  in the *Amazon SNS Developer Guide*.
  """
  def set_s_m_s_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetSMSAttributes",
      method:           :post,
      input_shape:      "SetSMSAttributesInput",
      output_shape:     "SetSMSAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a subscription owner to set an attribute of the topic to a new
  value.
  """
  def set_subscription_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetSubscriptionAttributes",
      method:           :post,
      input_shape:      "SetSubscriptionAttributesInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a topic owner to set an attribute of the topic to a new value.
  """
  def set_topic_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetTopicAttributes",
      method:           :post,
      input_shape:      "SetTopicAttributesInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Prepares to subscribe an endpoint by sending the endpoint a confirmation
  message. To actually create a subscription, the endpoint owner must call
  the `ConfirmSubscription` action with the token from the confirmation
  message. Confirmation tokens are valid for three days.
  """
  def subscribe(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Subscribe",
      method:           :post,
      input_shape:      "SubscribeInput",
      output_shape:     "SubscribeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a subscription. If the subscription requires authentication for
  deletion, only the owner of the subscription or the topic's owner can
  unsubscribe, and an AWS signature is required. If the `Unsubscribe` call
  does not require authentication and the requester is not the subscription
  owner, a final cancellation message is delivered to the endpoint, so that
  the endpoint owner can easily resubscribe to the topic if the `Unsubscribe`
  request was unintended.
  """
  def unsubscribe(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "Unsubscribe",
      method:           :post,
      input_shape:      "UnsubscribeInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "sns",
      target_prefix:    nil,
      endpoint_prefix:  "sns",
      type:             :xml,
      version:          "2010-03-31",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"SubscriptionsList" => %{"member" => %{"shape" => "Subscription"}, "type" => "list"}, "ListSubscriptionsByTopicInput" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn"], "type" => "structure"}, "SubscribeResponse" => %{"members" => %{"SubscriptionArn" => %{"shape" => "subscriptionARN"}}, "type" => "structure"}, "MessageAttributeMap" => %{"key" => %{"locationName" => "Name", "shape" => "String"}, "type" => "map", "value" => %{"locationName" => "Value", "shape" => "MessageAttributeValue"}}, "ActionsList" => %{"member" => %{"shape" => "action"}, "type" => "list"}, "InvalidParameterException" => %{"error" => %{"code" => "InvalidParameter", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "EndpointDisabledException" => %{"error" => %{"code" => "EndpointDisabled", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "String" => %{"type" => "string"}, "Topic" => %{"members" => %{"TopicArn" => %{"shape" => "topicARN"}}, "type" => "structure"}, "action" => %{"type" => "string"}, "PlatformApplication" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "PlatformApplicationArn" => %{"shape" => "String"}}, "type" => "structure"}, "PublishInput" => %{"members" => %{"Message" => %{"shape" => "message"}, "MessageAttributes" => %{"shape" => "MessageAttributeMap"}, "MessageStructure" => %{"shape" => "messageStructure"}, "PhoneNumber" => %{"shape" => "String"}, "Subject" => %{"shape" => "subject"}, "TargetArn" => %{"shape" => "String"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["Message"], "type" => "structure"}, "OptInPhoneNumberResponse" => %{"members" => %{}, "type" => "structure"}, "GetSubscriptionAttributesInput" => %{"members" => %{"SubscriptionArn" => %{"shape" => "subscriptionARN"}}, "required" => ["SubscriptionArn"], "type" => "structure"}, "ListPhoneNumbersOptedOutResponse" => %{"members" => %{"nextToken" => %{"shape" => "string"}, "phoneNumbers" => %{"shape" => "PhoneNumberList"}}, "type" => "structure"}, "ConfirmSubscriptionResponse" => %{"members" => %{"SubscriptionArn" => %{"shape" => "subscriptionARN"}}, "type" => "structure"}, "GetSubscriptionAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "SubscriptionAttributesMap"}}, "type" => "structure"}, "SetSMSAttributesInput" => %{"members" => %{"attributes" => %{"shape" => "MapStringToString"}}, "required" => ["attributes"], "type" => "structure"}, "CreateTopicResponse" => %{"members" => %{"TopicArn" => %{"shape" => "topicARN"}}, "type" => "structure"}, "ListSubscriptionsResponse" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}, "Subscriptions" => %{"shape" => "SubscriptionsList"}}, "type" => "structure"}, "ListPlatformApplicationsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "PlatformApplications" => %{"shape" => "ListOfPlatformApplications"}}, "type" => "structure"}, "GetTopicAttributesInput" => %{"members" => %{"TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn"], "type" => "structure"}, "boolean" => %{"type" => "boolean"}, "CheckIfPhoneNumberIsOptedOutResponse" => %{"members" => %{"isOptedOut" => %{"shape" => "boolean"}}, "type" => "structure"}, "ListOfPlatformApplications" => %{"member" => %{"shape" => "PlatformApplication"}, "type" => "list"}, "InvalidParameterValueException" => %{"error" => %{"code" => "ParameterValueInvalid", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "TopicLimitExceededException" => %{"error" => %{"code" => "TopicLimitExceeded", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "DelegatesList" => %{"member" => %{"shape" => "delegate"}, "type" => "list"}, "ListPlatformApplicationsInput" => %{"members" => %{"NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "TopicAttributesMap" => %{"key" => %{"shape" => "attributeName"}, "type" => "map", "value" => %{"shape" => "attributeValue"}}, "PhoneNumberList" => %{"member" => %{"shape" => "PhoneNumber"}, "type" => "list"}, "SetTopicAttributesInput" => %{"members" => %{"AttributeName" => %{"shape" => "attributeName"}, "AttributeValue" => %{"shape" => "attributeValue"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn", "AttributeName"], "type" => "structure"}, "token" => %{"type" => "string"}, "SetPlatformApplicationAttributesInput" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "PlatformApplicationArn" => %{"shape" => "String"}}, "required" => ["PlatformApplicationArn", "Attributes"], "type" => "structure"}, "SetSubscriptionAttributesInput" => %{"members" => %{"AttributeName" => %{"shape" => "attributeName"}, "AttributeValue" => %{"shape" => "attributeValue"}, "SubscriptionArn" => %{"shape" => "subscriptionARN"}}, "required" => ["SubscriptionArn", "AttributeName"], "type" => "structure"}, "RemovePermissionInput" => %{"members" => %{"Label" => %{"shape" => "label"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn", "Label"], "type" => "structure"}, "GetTopicAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "TopicAttributesMap"}}, "type" => "structure"}, "Endpoint" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "EndpointArn" => %{"shape" => "String"}}, "type" => "structure"}, "MapStringToString" => %{"key" => %{"shape" => "String"}, "type" => "map", "value" => %{"shape" => "String"}}, "InternalErrorException" => %{"error" => %{"code" => "InternalError", "httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "GetPlatformApplicationAttributesInput" => %{"members" => %{"PlatformApplicationArn" => %{"shape" => "String"}}, "required" => ["PlatformApplicationArn"], "type" => "structure"}, "GetSMSAttributesResponse" => %{"members" => %{"attributes" => %{"shape" => "MapStringToString"}}, "type" => "structure"}, "NotFoundException" => %{"error" => %{"code" => "NotFound", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "string" => %{"type" => "string"}, "CheckIfPhoneNumberIsOptedOutInput" => %{"members" => %{"phoneNumber" => %{"shape" => "PhoneNumber"}}, "required" => ["phoneNumber"], "type" => "structure"}, "nextToken" => %{"type" => "string"}, "ListOfEndpoints" => %{"member" => %{"shape" => "Endpoint"}, "type" => "list"}, "SubscriptionLimitExceededException" => %{"error" => %{"code" => "SubscriptionLimitExceeded", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "DeleteTopicInput" => %{"members" => %{"TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn"], "type" => "structure"}, "Subscription" => %{"members" => %{"Endpoint" => %{"shape" => "endpoint"}, "Owner" => %{"shape" => "account"}, "Protocol" => %{"shape" => "protocol"}, "SubscriptionArn" => %{"shape" => "subscriptionARN"}, "TopicArn" => %{"shape" => "topicARN"}}, "type" => "structure"}, "ListString" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "SubscribeInput" => %{"members" => %{"Endpoint" => %{"shape" => "endpoint"}, "Protocol" => %{"shape" => "protocol"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn", "Protocol"], "type" => "structure"}, "ConfirmSubscriptionInput" => %{"members" => %{"AuthenticateOnUnsubscribe" => %{"shape" => "authenticateOnUnsubscribe"}, "Token" => %{"shape" => "token"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn", "Token"], "type" => "structure"}, "CreateEndpointResponse" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}}, "type" => "structure"}, "delegate" => %{"type" => "string"}, "ListEndpointsByPlatformApplicationResponse" => %{"members" => %{"Endpoints" => %{"shape" => "ListOfEndpoints"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "GetEndpointAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}}, "type" => "structure"}, "authenticateOnUnsubscribe" => %{"type" => "string"}, "MessageAttributeValue" => %{"members" => %{"BinaryValue" => %{"shape" => "Binary"}, "DataType" => %{"shape" => "String"}, "StringValue" => %{"shape" => "String"}}, "required" => ["DataType"], "type" => "structure"}, "PublishResponse" => %{"members" => %{"MessageId" => %{"shape" => "messageId"}}, "type" => "structure"}, "message" => %{"type" => "string"}, "GetEndpointAttributesInput" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}}, "required" => ["EndpointArn"], "type" => "structure"}, "SetEndpointAttributesInput" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "EndpointArn" => %{"shape" => "String"}}, "required" => ["EndpointArn", "Attributes"], "type" => "structure"}, "CreatePlatformApplicationResponse" => %{"members" => %{"PlatformApplicationArn" => %{"shape" => "String"}}, "type" => "structure"}, "ListEndpointsByPlatformApplicationInput" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "PlatformApplicationArn" => %{"shape" => "String"}}, "required" => ["PlatformApplicationArn"], "type" => "structure"}, "ListTopicsInput" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "label" => %{"type" => "string"}, "UnsubscribeInput" => %{"members" => %{"SubscriptionArn" => %{"shape" => "subscriptionARN"}}, "required" => ["SubscriptionArn"], "type" => "structure"}, "endpoint" => %{"type" => "string"}, "CreatePlatformApplicationInput" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "Name" => %{"shape" => "String"}, "Platform" => %{"shape" => "String"}}, "required" => ["Name", "Platform", "Attributes"], "type" => "structure"}, "subscriptionARN" => %{"type" => "string"}, "Binary" => %{"type" => "blob"}, "GetPlatformApplicationAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}}, "type" => "structure"}, "CreatePlatformEndpointInput" => %{"members" => %{"Attributes" => %{"shape" => "MapStringToString"}, "CustomUserData" => %{"shape" => "String"}, "PlatformApplicationArn" => %{"shape" => "String"}, "Token" => %{"shape" => "String"}}, "required" => ["PlatformApplicationArn", "Token"], "type" => "structure"}, "ListSubscriptionsByTopicResponse" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}, "Subscriptions" => %{"shape" => "SubscriptionsList"}}, "type" => "structure"}, "attributeValue" => %{"type" => "string"}, "ThrottledException" => %{"error" => %{"code" => "Throttled", "httpStatusCode" => 429, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "OptInPhoneNumberInput" => %{"members" => %{"phoneNumber" => %{"shape" => "PhoneNumber"}}, "required" => ["phoneNumber"], "type" => "structure"}, "messageStructure" => %{"type" => "string"}, "DeletePlatformApplicationInput" => %{"members" => %{"PlatformApplicationArn" => %{"shape" => "String"}}, "required" => ["PlatformApplicationArn"], "type" => "structure"}, "account" => %{"type" => "string"}, "ListTopicsResponse" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}, "Topics" => %{"shape" => "TopicsList"}}, "type" => "structure"}, "messageId" => %{"type" => "string"}, "ListPhoneNumbersOptedOutInput" => %{"members" => %{"nextToken" => %{"shape" => "string"}}, "type" => "structure"}, "AddPermissionInput" => %{"members" => %{"AWSAccountId" => %{"shape" => "DelegatesList"}, "ActionName" => %{"shape" => "ActionsList"}, "Label" => %{"shape" => "label"}, "TopicArn" => %{"shape" => "topicARN"}}, "required" => ["TopicArn", "Label", "AWSAccountId", "ActionName"], "type" => "structure"}, "attributeName" => %{"type" => "string"}, "DeleteEndpointInput" => %{"members" => %{"EndpointArn" => %{"shape" => "String"}}, "required" => ["EndpointArn"], "type" => "structure"}, "SubscriptionAttributesMap" => %{"key" => %{"shape" => "attributeName"}, "type" => "map", "value" => %{"shape" => "attributeValue"}}, "PhoneNumber" => %{"type" => "string"}, "topicARN" => %{"type" => "string"}, "CreateTopicInput" => %{"members" => %{"Name" => %{"shape" => "topicName"}}, "required" => ["Name"], "type" => "structure"}, "GetSMSAttributesInput" => %{"members" => %{"attributes" => %{"shape" => "ListString"}}, "type" => "structure"}, "TopicsList" => %{"member" => %{"shape" => "Topic"}, "type" => "list"}, "topicName" => %{"type" => "string"}, "protocol" => %{"type" => "string"}, "subject" => %{"type" => "string"}, "AuthorizationErrorException" => %{"error" => %{"code" => "AuthorizationError", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "ListSubscriptionsInput" => %{"members" => %{"NextToken" => %{"shape" => "nextToken"}}, "type" => "structure"}, "PlatformApplicationDisabledException" => %{"error" => %{"code" => "PlatformApplicationDisabled", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "string"}}, "type" => "structure"}, "SetSMSAttributesResponse" => %{"members" => %{}, "type" => "structure"}}
  end
end