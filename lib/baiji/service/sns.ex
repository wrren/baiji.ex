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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddPermission",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CheckIfPhoneNumberIsOptedOut",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ConfirmSubscription",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePlatformApplication",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePlatformEndpoint",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateTopic",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteEndpoint",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePlatformApplication",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteTopic",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetEndpointAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPlatformApplicationAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Returns the settings for sending SMS messages from your account.

  These settings are set with the `SetSMSAttributes` action.
  """
  def get_s_m_s_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSMSAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Returns all of the properties of a subscription.
  """
  def get_subscription_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSubscriptionAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Returns all of the properties of a topic. Topic properties returned might
  differ based on the authorization of the user.
  """
  def get_topic_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetTopicAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListEndpointsByPlatformApplication",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListPhoneNumbersOptedOut",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListPlatformApplications",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSubscriptions",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSubscriptionsByTopic",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListTopics",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Use this request to opt in a phone number that is opted out, which enables
  you to resume sending SMS messages to the number.

  You can opt in a phone number only once every 30 days.
  """
  def opt_in_phone_number(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "OptInPhoneNumber",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "Publish",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Removes a statement from a topic's access control policy.
  """
  def remove_permission(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemovePermission",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetEndpointAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetPlatformApplicationAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetSMSAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Allows a subscription owner to set an attribute of the topic to a new
  value.
  """
  def set_subscription_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetSubscriptionAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
  @doc """
  Allows a topic owner to set an attribute of the topic to a new value.
  """
  def set_topic_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetTopicAttributes",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "Subscribe",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
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
      service:        "sns",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "Unsubscribe",
      
      type:           :xml,
      version:        "2010-03-31",
      method:         :post
    }
  end
  
end