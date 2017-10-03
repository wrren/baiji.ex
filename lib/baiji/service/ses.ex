defmodule Baiji.SES do
  @moduledoc """
  Amazon Simple Email Service

  This is the API Reference for Amazon Simple Email Service (Amazon SES).
  This documentation is intended to be used in conjunction with the [Amazon
  SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

  <note> For a list of Amazon SES endpoints to use in service requests, see
  [Regions and Amazon
  SES](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html) in
  the Amazon SES Developer Guide.

  </note>
  """
  
  @doc """
  Deletes the specified receipt rule set and all of the receipt rules it
  contains.

  <note> The currently active rule set cannot be deleted.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  This action is throttled at one request per second.
  """
  def delete_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteReceiptRuleSetRequest",
      output_shape:     "DeleteReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sends an email message, with header and content specified by the client.
  The `SendRawEmail` action is useful for sending multipart MIME emails. The
  raw text of the message must comply with Internet email standards;
  otherwise, the message cannot be sent.

  There are several important points to know about `SendRawEmail`:

  <ul> <li> You can only send email from verified email addresses and
  domains; otherwise, you will get an "Email address not verified" error. If
  your account is still in the Amazon SES sandbox, you must also verify every
  recipient email address except for the recipients provided by the Amazon
  SES mailbox simulator. For more information, go to the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

  </li> <li> The total size of the message cannot exceed 10 MB. This includes
  any attachments that are part of the message.

  </li> <li> You must provide at least one recipient email address. The
  recipient address can be a To: address, a CC: address, or a BCC: address.
  If any email address you provide is invalid, Amazon SES rejects the entire
  email.

  </li> <li> Amazon SES has a limit on the total number of recipients per
  message. The combined number of To:, CC: and BCC: email addresses cannot
  exceed 50. If you need to send an email message to a larger audience, you
  can divide your recipient list into groups of 50 or fewer, and then call
  Amazon SES repeatedly to send the message to each group.

  </li> <li> The To:, CC:, and BCC: headers in the raw message can contain a
  group list. Note that each recipient in a group list counts towards the
  50-recipient limit.

  </li> <li> Amazon SES overrides any Message-ID and Date headers you
  provide.

  </li> <li> For every message that you send, the total number of recipients
  (To:, CC: and BCC:) is counted against your sending quota - the maximum
  number of emails you can send in a 24-hour period. For information about
  your sending quota, go to the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html).

  </li> <li> If you are using sending authorization to send on behalf of
  another user, `SendRawEmail` enables you to specify the cross-account
  identity for the email's "Source," "From," and "Return-Path" parameters in
  one of two ways: you can pass optional parameters `SourceArn`, `FromArn`,
  and/or `ReturnPathArn` to the API, or you can include the following
  X-headers in the header of your raw email:

  <ul> <li> `X-SES-SOURCE-ARN`

  </li> <li> `X-SES-FROM-ARN`

  </li> <li> `X-SES-RETURN-PATH-ARN`

  </li> </ul> <important> Do not include these X-headers in the DKIM
  signature, because they are removed by Amazon SES before sending the email.

  </important> For the most common sending authorization use case, we
  recommend that you specify the `SourceIdentityArn` and do not specify
  either the `FromIdentityArn` or `ReturnPathIdentityArn`. (The same note
  applies to the corresponding X-headers.) If you only specify the
  `SourceIdentityArn`, Amazon SES will simply set the "From" address and the
  "Return Path" address to the identity specified in `SourceIdentityArn`. For
  more information about sending authorization, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  </li> </ul>
  """
  def send_raw_email(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendRawEmail",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SendRawEmailRequest",
      output_shape:     "SendRawEmailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the metadata and receipt rules for the receipt rule set that is
  currently active.

  For information about setting up receipt rule sets, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  This action is throttled at one request per second.
  """
  def describe_active_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeActiveReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeActiveReceiptRuleSetRequest",
      output_shape:     "DescribeActiveReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the position of the specified receipt rule in the receipt rule set.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  This action is throttled at one request per second.
  """
  def set_receipt_rule_position(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetReceiptRulePosition",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetReceiptRulePositionRequest",
      output_shape:     "SetReceiptRulePositionResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the details of the specified configuration set.

  Configuration sets enable you to publish email sending events. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def describe_configuration_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeConfigurationSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeConfigurationSetRequest",
      output_shape:     "DescribeConfigurationSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a receipt rule.

  For information about setting up receipt rules, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

  This action is throttled at one request per second.
  """
  def create_receipt_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateReceiptRule",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateReceiptRuleRequest",
      output_shape:     "CreateReceiptRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a configuration set.

  Configuration sets enable you to publish email sending events. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def create_configuration_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateConfigurationSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateConfigurationSetRequest",
      output_shape:     "CreateConfigurationSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the details of the specified receipt rule set.

  For information about managing receipt rule sets, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  This action is throttled at one request per second.
  """
  def describe_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeReceiptRuleSetRequest",
      output_shape:     "DescribeReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  This action is throttled at one request per second.
  """
  def delete_receipt_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteReceiptRule",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteReceiptRuleRequest",
      output_shape:     "DeleteReceiptRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the IP address filters associated with your AWS account.

  For information about managing IP address filters, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

  This action is throttled at one request per second.
  """
  def list_receipt_filters(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListReceiptFilters",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListReceiptFiltersRequest",
      output_shape:     "ListReceiptFiltersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a configuration set event destination.

  <note> When you create or update an event destination, you must provide
  one, and only one, destination. The destination can be Amazon CloudWatch,
  Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
  SNS).

  </note> An event destination is the AWS service to which Amazon SES
  publishes the email sending events associated with a configuration set. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def create_configuration_set_event_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateConfigurationSetEventDestination",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateConfigurationSetEventDestinationRequest",
      output_shape:     "CreateConfigurationSetEventDestinationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates the event destination of a configuration set.

  <note> When you create or update an event destination, you must provide
  one, and only one, destination. The destination can be Amazon CloudWatch,
  Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
  SNS).

  </note> Event destinations are associated with configuration sets, which
  enable you to publish email sending events to Amazon CloudWatch, Amazon
  Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def update_configuration_set_event_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateConfigurationSetEventDestination",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateConfigurationSetEventDestinationRequest",
      output_shape:     "UpdateConfigurationSetEventDestinationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a new IP address filter.

  For information about setting up IP address filters, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

  This action is throttled at one request per second.
  """
  def create_receipt_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateReceiptFilter",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateReceiptFilterRequest",
      output_shape:     "CreateReceiptFilterResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given an identity (an email address or a domain), sets the Amazon Simple
  Notification Service (Amazon SNS) topic to which Amazon SES will publish
  bounce, complaint, and/or delivery notifications for emails sent with that
  identity as the `Source`.

  <note> Unless feedback forwarding is enabled, you must specify Amazon SNS
  topics for bounce and complaint notifications. For more information, see
  `SetIdentityFeedbackForwardingEnabled`.

  </note> This action is throttled at one request per second.

  For more information about feedback notification, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_notification_topic(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIdentityNotificationTopic",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetIdentityNotificationTopicRequest",
      output_shape:     "SetIdentityNotificationTopicResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a configuration set.

  Configuration sets enable you to publish email sending events. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def delete_configuration_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteConfigurationSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteConfigurationSetRequest",
      output_shape:     "DeleteConfigurationSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the details of the specified receipt rule.

  For information about setting up receipt rules, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

  This action is throttled at one request per second.
  """
  def describe_receipt_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeReceiptRule",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DescribeReceiptRuleRequest",
      output_shape:     "DescribeReceiptRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified sending authorization policy for the given identity
  (an email address or a domain). This API returns successfully even if a
  policy with the specified name does not exist.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  This action is throttled at one request per second.
  """
  def delete_identity_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteIdentityPolicy",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteIdentityPolicyRequest",
      output_shape:     "DeleteIdentityPolicyResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list containing all of the email addresses that have been
  verified.

  <important> The ListVerifiedEmailAddresses action is deprecated as of the
  May 15, 2012 release of Domain Verification. The ListIdentities action is
  now preferred.

  </important> This action is throttled at one request per second.
  """
  def list_verified_email_addresses(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListVerifiedEmailAddresses",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "ListVerifiedEmailAddressesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list containing all of the identities (email addresses and
  domains) for your AWS account, regardless of verification status.

  This action is throttled at one request per second.
  """
  def list_identities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListIdentities",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListIdentitiesRequest",
      output_shape:     "ListIdentitiesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given a list of verified identities (email addresses and/or domains),
  returns a structure describing identity notification attributes.

  This action is throttled at one request per second and can only get
  notification attributes for up to 100 identities at a time.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def get_identity_notification_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityNotificationAttributes",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "GetIdentityNotificationAttributesRequest",
      output_shape:     "GetIdentityNotificationAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the user's current sending limits.

  This action is throttled at one request per second.
  """
  def get_send_quota(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSendQuota",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetSendQuotaResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a list of sending authorization policies that are attached to the
  given identity (an email address or a domain). This API returns only a
  list. If you want the actual policy content, you can use
  `GetIdentityPolicies`.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  This action is throttled at one request per second.
  """
  def list_identity_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListIdentityPolicies",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListIdentityPoliciesRequest",
      output_shape:     "ListIdentityPoliciesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the custom MAIL FROM attributes for a list of identities (email
  addresses and/or domains).

  This action is throttled at one request per second and can only get custom
  MAIL FROM attributes for up to 100 identities at a time.
  """
  def get_identity_mail_from_domain_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityMailFromDomainAttributes",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "GetIdentityMailFromDomainAttributesRequest",
      output_shape:     "GetIdentityMailFromDomainAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a receipt rule set by cloning an existing one. All receipt rules
  and configurations are copied to the new receipt rule set and are
  completely independent of the source rule set.

  For information about setting up rule sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  This action is throttled at one request per second.
  """
  def clone_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CloneReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CloneReceiptRuleSetRequest",
      output_shape:     "CloneReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified IP address filter.

  For information about managing IP address filters, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

  This action is throttled at one request per second.
  """
  def delete_receipt_filter(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteReceiptFilter",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteReceiptFilterRequest",
      output_shape:     "DeleteReceiptFilterResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given an identity (an email address or a domain), sets whether Amazon SES
  includes the original email headers in the Amazon Simple Notification
  Service (Amazon SNS) notifications of a specified type.

  This action is throttled at one request per second.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_headers_in_notifications_enabled(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIdentityHeadersInNotificationsEnabled",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetIdentityHeadersInNotificationsEnabledRequest",
      output_shape:     "SetIdentityHeadersInNotificationsEnabledResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the user's sending statistics. The result is a list of data points,
  representing the last two weeks of sending activity.

  Each data point in the list contains statistics for a 15-minute interval.

  This action is throttled at one request per second.
  """
  def get_send_statistics(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSendStatistics",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetSendStatisticsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables or disables the custom MAIL FROM domain setup for a verified
  identity (an email address or a domain).

  <important> To send emails using the specified MAIL FROM domain, you must
  add an MX record to your MAIL FROM domain's DNS settings. If you want your
  emails to pass Sender Policy Framework (SPF) checks, you must also add or
  update an SPF record. For more information, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html).

  </important> This action is throttled at one request per second.
  """
  def set_identity_mail_from_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIdentityMailFromDomain",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetIdentityMailFromDomainRequest",
      output_shape:     "SetIdentityMailFromDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns a set of DKIM tokens for a domain. DKIM *tokens* are character
  strings that represent your domain's identity. Using these tokens, you will
  need to create DNS CNAME records that point to DKIM public keys hosted by
  Amazon SES. Amazon Web Services will eventually detect that you have
  updated your DNS records; this detection process may take up to 72 hours.
  Upon successful detection, Amazon SES will be able to DKIM-sign email
  originating from that domain.

  This action is throttled at one request per second.

  To enable or disable Easy DKIM signing for a domain, use the
  `SetIdentityDkimEnabled` action.

  For more information about creating DNS records using DKIM tokens, go to
  the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).
  """
  def verify_domain_dkim(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "VerifyDomainDkim",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "VerifyDomainDkimRequest",
      output_shape:     "VerifyDomainDkimResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the configuration sets associated with your AWS account.

  Configuration sets enable you to publish email sending events. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second and can return up to 50
  configuration sets at a time.
  """
  def list_configuration_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListConfigurationSets",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListConfigurationSetsRequest",
      output_shape:     "ListConfigurationSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates a receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  This action is throttled at one request per second.
  """
  def update_receipt_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateReceiptRule",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "UpdateReceiptRuleRequest",
      output_shape:     "UpdateReceiptRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Verifies an email address. This action causes a confirmation email message
  to be sent to the specified address.

  <important> The VerifyEmailAddress action is deprecated as of the May 15,
  2012 release of Domain Verification. The VerifyEmailIdentity action is now
  preferred.

  </important> This action is throttled at one request per second.
  """
  def verify_email_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "VerifyEmailAddress",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "VerifyEmailAddressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a configuration set event destination.

  Configuration set event destinations are associated with configuration
  sets, which enable you to publish email sending events. For information
  about using configuration sets, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  This action is throttled at one request per second.
  """
  def delete_configuration_set_event_destination(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteConfigurationSetEventDestination",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteConfigurationSetEventDestinationRequest",
      output_shape:     "DeleteConfigurationSetEventDestinationResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the requested sending authorization policies for the given identity
  (an email address or a domain). The policies are returned as a map of
  policy names to policy contents. You can retrieve a maximum of 20 policies
  at a time.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  This action is throttled at one request per second.
  """
  def get_identity_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityPolicies",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "GetIdentityPoliciesRequest",
      output_shape:     "GetIdentityPoliciesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the current status of Easy DKIM signing for an entity. For domain
  name identities, this action also returns the DKIM tokens that are required
  for Easy DKIM signing, and whether Amazon SES has successfully verified
  that these tokens have been published.

  This action takes a list of identities as input and returns the following
  information for each:

  <ul> <li> Whether Easy DKIM signing is enabled or disabled.

  </li> <li> A set of DKIM tokens that represent the identity. If the
  identity is an email address, the tokens represent the domain of that
  address.

  </li> <li> Whether Amazon SES has successfully verified the DKIM tokens
  published in the domain's DNS. This information is only returned for domain
  name identities, not for email addresses.

  </li> </ul> This action is throttled at one request per second and can only
  get DKIM attributes for up to 100 identities at a time.

  For more information about creating DNS records using DKIM tokens, go to
  the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).
  """
  def get_identity_dkim_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityDkimAttributes",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "GetIdentityDkimAttributesRequest",
      output_shape:     "GetIdentityDkimAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given an identity (an email address or a domain), enables or disables
  whether Amazon SES forwards bounce and complaint notifications as email.
  Feedback forwarding can only be disabled when Amazon Simple Notification
  Service (Amazon SNS) topics are specified for both bounces and complaints.

  <note> Feedback forwarding does not apply to delivery notifications.
  Delivery notifications are only available through Amazon SNS.

  </note> This action is throttled at one request per second.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_feedback_forwarding_enabled(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIdentityFeedbackForwardingEnabled",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetIdentityFeedbackForwardingEnabledRequest",
      output_shape:     "SetIdentityFeedbackForwardingEnabledResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Composes an email message based on input data, and then immediately queues
  the message for sending.

  There are several important points to know about `SendEmail`:

  <ul> <li> You can only send email from verified email addresses and
  domains; otherwise, you will get an "Email address not verified" error. If
  your account is still in the Amazon SES sandbox, you must also verify every
  recipient email address except for the recipients provided by the Amazon
  SES mailbox simulator. For more information, go to the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

  </li> <li> The total size of the message cannot exceed 10 MB. This includes
  any attachments that are part of the message.

  </li> <li> You must provide at least one recipient email address. The
  recipient address can be a To: address, a CC: address, or a BCC: address.
  If any email address you provide is invalid, Amazon SES rejects the entire
  email.

  </li> <li> Amazon SES has a limit on the total number of recipients per
  message. The combined number of To:, CC: and BCC: email addresses cannot
  exceed 50. If you need to send an email message to a larger audience, you
  can divide your recipient list into groups of 50 or fewer, and then call
  Amazon SES repeatedly to send the message to each group.

  </li> <li> For every message that you send, the total number of recipients
  (To:, CC: and BCC:) is counted against your sending quota - the maximum
  number of emails you can send in a 24-hour period. For information about
  your sending quota, go to the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html).

  </li> </ul>
  """
  def send_email(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendEmail",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SendEmailRequest",
      output_shape:     "SendEmailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Generates and sends a bounce message to the sender of an email you received
  through Amazon SES. You can only use this API on an email up to 24 hours
  after you receive it.

  <note> You cannot use this API to send generic bounces for mail that was
  not received by Amazon SES.

  </note> For information about receiving email through Amazon SES, see the
  [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

  This action is throttled at one request per second.
  """
  def send_bounce(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SendBounce",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SendBounceRequest",
      output_shape:     "SendBounceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Sets the specified receipt rule set as the active receipt rule set.

  <note> To disable your email-receiving through Amazon SES completely, you
  can call this API with RuleSetName set to null.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  This action is throttled at one request per second.
  """
  def set_active_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetActiveReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetActiveReceiptRuleSetRequest",
      output_shape:     "SetActiveReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Given a list of identities (email addresses and/or domains), returns the
  verification status and (for domain identities) the verification token for
  each identity.

  The verification status of an email address is "Pending" until the email
  address owner clicks the link within the verification email that Amazon SES
  sent to that address. If the email address owner clicks the link within 24
  hours, the verification status of the email address changes to "Success".
  If the link is not clicked within 24 hours, the verification status changes
  to "Failed." In that case, if you still want to verify the email address,
  you must restart the verification process from the beginning.

  For domain identities, the domain's verification status is "Pending" as
  Amazon SES searches for the required TXT record in the DNS settings of the
  domain. When Amazon SES detects the record, the domain's verification
  status changes to "Success". If Amazon SES is unable to detect the record
  within 72 hours, the domain's verification status changes to "Failed." In
  that case, if you still want to verify the domain, you must restart the
  verification process from the beginning.

  This action is throttled at one request per second and can only get
  verification attributes for up to 100 identities at a time.
  """
  def get_identity_verification_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityVerificationAttributes",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "GetIdentityVerificationAttributesRequest",
      output_shape:     "GetIdentityVerificationAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified email address from the list of verified addresses.

  <important> The DeleteVerifiedEmailAddress action is deprecated as of the
  May 15, 2012 release of Domain Verification. The DeleteIdentity action is
  now preferred.

  </important> This action is throttled at one request per second.
  """
  def delete_verified_email_address(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVerifiedEmailAddress",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteVerifiedEmailAddressRequest",
      output_shape:     "",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the specified identity (an email address or a domain) from the list
  of verified identities.

  This action is throttled at one request per second.
  """
  def delete_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteIdentity",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "DeleteIdentityRequest",
      output_shape:     "DeleteIdentityResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Adds or updates a sending authorization policy for the specified identity
  (an email address or a domain).

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  This action is throttled at one request per second.
  """
  def put_identity_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutIdentityPolicy",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "PutIdentityPolicyRequest",
      output_shape:     "PutIdentityPolicyResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Verifies a domain.

  This action is throttled at one request per second.
  """
  def verify_domain_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "VerifyDomainIdentity",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "VerifyDomainIdentityRequest",
      output_shape:     "VerifyDomainIdentityResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Reorders the receipt rules within a receipt rule set.

  <note> All of the rules in the rule set must be represented in this
  request. That is, this API will return an error if the reorder request
  doesn't explicitly position all of the rules.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  This action is throttled at one request per second.
  """
  def reorder_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ReorderReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ReorderReceiptRuleSetRequest",
      output_shape:     "ReorderReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an empty receipt rule set.

  For information about setting up receipt rule sets, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  This action is throttled at one request per second.
  """
  def create_receipt_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateReceiptRuleSet",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "CreateReceiptRuleSetRequest",
      output_shape:     "CreateReceiptRuleSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Enables or disables Easy DKIM signing of email sent from an identity:

  <ul> <li> If Easy DKIM signing is enabled for a domain name identity (e.g.,
  `example.com`), then Amazon SES will DKIM-sign all email sent by addresses
  under that domain name (e.g., `user@example.com`).

  </li> <li> If Easy DKIM signing is enabled for an email address, then
  Amazon SES will DKIM-sign all email sent by that email address.

  </li> </ul> For email addresses (e.g., `user@example.com`), you can only
  enable Easy DKIM signing if the corresponding domain (e.g., `example.com`)
  has been set up for Easy DKIM using the AWS Console or the
  `VerifyDomainDkim` action.

  This action is throttled at one request per second.

  For more information about Easy DKIM signing, go to the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).
  """
  def set_identity_dkim_enabled(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetIdentityDkimEnabled",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "SetIdentityDkimEnabledRequest",
      output_shape:     "SetIdentityDkimEnabledResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Verifies an email address. This action causes a confirmation email message
  to be sent to the specified address.

  This action is throttled at one request per second.
  """
  def verify_email_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "VerifyEmailIdentity",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "VerifyEmailIdentityRequest",
      output_shape:     "VerifyEmailIdentityResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists the receipt rule sets that exist under your AWS account. If there are
  additional receipt rule sets to be retrieved, you will receive a
  `NextToken` that you can provide to the next call to `ListReceiptRuleSets`
  to retrieve the additional entries.

  For information about managing receipt rule sets, see the [Amazon SES
  Developer
  Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  This action is throttled at one request per second.
  """
  def list_receipt_rule_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "email",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListReceiptRuleSets",
      
      endpoint_prefix:  "email",
      type:             :xml,
      version:          "2010-12-01",
      method:           :post,
      input_shape:      "ListReceiptRuleSetsRequest",
      output_shape:     "ListReceiptRuleSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"InvalidSnsTopicException" => %{"error" => %{"code" => "InvalidSnsTopic", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Topic" => %{"shape" => "AmazonResourceName"}}, "type" => "structure"}, "Max24HourSend" => %{"type" => "double"}, "UpdateConfigurationSetEventDestinationRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestination" => %{"shape" => "EventDestination"}}, "required" => ["ConfigurationSetName", "EventDestination"], "type" => "structure"}, "GetIdentityDkimAttributesResponse" => %{"members" => %{"DkimAttributes" => %{"shape" => "DkimAttributes"}}, "required" => ["DkimAttributes"], "type" => "structure"}, "SetIdentityMailFromDomainRequest" => %{"members" => %{"BehaviorOnMXFailure" => %{"shape" => "BehaviorOnMXFailure"}, "Identity" => %{"shape" => "Identity"}, "MailFromDomain" => %{"shape" => "MailFromDomainName"}}, "required" => ["Identity"], "type" => "structure"}, "InvocationType" => %{"enum" => ["Event", "RequestResponse"], "type" => "string"}, "MessageTagList" => %{"member" => %{"shape" => "MessageTag"}, "type" => "list"}, "ExtensionFieldName" => %{"type" => "string"}, "ExtensionFieldValue" => %{"type" => "string"}, "InvalidConfigurationSetException" => %{"error" => %{"code" => "InvalidConfigurationSet", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "SendRawEmailResponse" => %{"members" => %{"MessageId" => %{"shape" => "MessageId"}}, "required" => ["MessageId"], "type" => "structure"}, "RemoteMta" => %{"type" => "string"}, "EventDestination" => %{"members" => %{"CloudWatchDestination" => %{"shape" => "CloudWatchDestination"}, "Enabled" => %{"shape" => "Enabled"}, "KinesisFirehoseDestination" => %{"shape" => "KinesisFirehoseDestination"}, "MatchingEventTypes" => %{"shape" => "EventTypes"}, "Name" => %{"shape" => "EventDestinationName"}, "SNSDestination" => %{"shape" => "SNSDestination"}}, "required" => ["Name", "MatchingEventTypes"], "type" => "structure"}, "DeleteReceiptFilterResponse" => %{"members" => %{}, "type" => "structure"}, "DimensionName" => %{"type" => "string"}, "EventDestinations" => %{"member" => %{"shape" => "EventDestination"}, "type" => "list"}, "ListIdentityPoliciesRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}}, "required" => ["Identity"], "type" => "structure"}, "S3BucketName" => %{"type" => "string"}, "PutIdentityPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "KinesisFirehoseDestination" => %{"members" => %{"DeliveryStreamARN" => %{"shape" => "AmazonResourceName"}, "IAMRoleARN" => %{"shape" => "AmazonResourceName"}}, "required" => ["IAMRoleARN", "DeliveryStreamARN"], "type" => "structure"}, "Explanation" => %{"type" => "string"}, "ListIdentitiesResponse" => %{"members" => %{"Identities" => %{"shape" => "IdentityList"}, "NextToken" => %{"shape" => "NextToken"}}, "required" => ["Identities"], "type" => "structure"}, "EventDestinationDoesNotExistException" => %{"error" => %{"code" => "EventDestinationDoesNotExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "type" => "structure"}, "IdentityVerificationAttributes" => %{"members" => %{"VerificationStatus" => %{"shape" => "VerificationStatus"}, "VerificationToken" => %{"shape" => "VerificationToken"}}, "required" => ["VerificationStatus"], "type" => "structure"}, "ExtensionFieldList" => %{"member" => %{"shape" => "ExtensionField"}, "type" => "list"}, "ReceiptRuleSetsLists" => %{"member" => %{"shape" => "ReceiptRuleSetMetadata"}, "type" => "list"}, "MessageDsn" => %{"members" => %{"ArrivalDate" => %{"shape" => "ArrivalDate"}, "ExtensionFields" => %{"shape" => "ExtensionFieldList"}, "ReportingMta" => %{"shape" => "ReportingMta"}}, "required" => ["ReportingMta"], "type" => "structure"}, "RuleDoesNotExistException" => %{"error" => %{"code" => "RuleDoesNotExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Name" => %{"shape" => "RuleOrRuleSetName"}}, "type" => "structure"}, "SetIdentityHeadersInNotificationsEnabledRequest" => %{"members" => %{"Enabled" => %{"shape" => "Enabled"}, "Identity" => %{"shape" => "Identity"}, "NotificationType" => %{"shape" => "NotificationType"}}, "required" => ["Identity", "NotificationType", "Enabled"], "type" => "structure"}, "InvalidCloudWatchDestinationException" => %{"error" => %{"code" => "InvalidCloudWatchDestination", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "type" => "structure"}, "GetSendQuotaResponse" => %{"members" => %{"Max24HourSend" => %{"shape" => "Max24HourSend"}, "MaxSendRate" => %{"shape" => "MaxSendRate"}, "SentLast24Hours" => %{"shape" => "SentLast24Hours"}}, "type" => "structure"}, "PolicyMap" => %{"key" => %{"shape" => "PolicyName"}, "type" => "map", "value" => %{"shape" => "Policy"}}, "Charset" => %{"type" => "string"}, "UpdateReceiptRuleResponse" => %{"members" => %{}, "type" => "structure"}, "DescribeReceiptRuleSetRequest" => %{"members" => %{"RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName"], "type" => "structure"}, "DimensionValueSource" => %{"enum" => ["messageTag", "emailHeader", "linkTag"], "type" => "string"}, "VerifyDomainDkimRequest" => %{"members" => %{"Domain" => %{"shape" => "Domain"}}, "required" => ["Domain"], "type" => "structure"}, "VerificationTokenList" => %{"member" => %{"shape" => "VerificationToken"}, "type" => "list"}, "CreateConfigurationSetEventDestinationRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestination" => %{"shape" => "EventDestination"}}, "required" => ["ConfigurationSetName", "EventDestination"], "type" => "structure"}, "CreateConfigurationSetEventDestinationResponse" => %{"members" => %{}, "type" => "structure"}, "RecipientsList" => %{"member" => %{"shape" => "Recipient"}, "type" => "list"}, "SendRawEmailRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "Destinations" => %{"shape" => "AddressList"}, "FromArn" => %{"shape" => "AmazonResourceName"}, "RawMessage" => %{"shape" => "RawMessage"}, "ReturnPathArn" => %{"shape" => "AmazonResourceName"}, "Source" => %{"shape" => "Address"}, "SourceArn" => %{"shape" => "AmazonResourceName"}, "Tags" => %{"shape" => "MessageTagList"}}, "required" => ["RawMessage"], "type" => "structure"}, "DsnAction" => %{"enum" => ["failed", "delayed", "delivered", "relayed", "expanded"], "type" => "string"}, "IdentityNotificationAttributes" => %{"members" => %{"BounceTopic" => %{"shape" => "NotificationTopic"}, "ComplaintTopic" => %{"shape" => "NotificationTopic"}, "DeliveryTopic" => %{"shape" => "NotificationTopic"}, "ForwardingEnabled" => %{"shape" => "Enabled"}, "HeadersInBounceNotificationsEnabled" => %{"shape" => "Enabled"}, "HeadersInComplaintNotificationsEnabled" => %{"shape" => "Enabled"}, "HeadersInDeliveryNotificationsEnabled" => %{"shape" => "Enabled"}}, "required" => ["BounceTopic", "ComplaintTopic", "DeliveryTopic", "ForwardingEnabled"], "type" => "structure"}, "SendBounceResponse" => %{"members" => %{"MessageId" => %{"shape" => "MessageId"}}, "type" => "structure"}, "SetIdentityNotificationTopicRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}, "NotificationType" => %{"shape" => "NotificationType"}, "SnsTopic" => %{"shape" => "NotificationTopic"}}, "required" => ["Identity", "NotificationType"], "type" => "structure"}, "GetIdentityMailFromDomainAttributesRequest" => %{"members" => %{"Identities" => %{"shape" => "IdentityList"}}, "required" => ["Identities"], "type" => "structure"}, "BounceStatusCode" => %{"type" => "string"}, "DescribeConfigurationSetResponse" => %{"members" => %{"ConfigurationSet" => %{"shape" => "ConfigurationSet"}, "EventDestinations" => %{"shape" => "EventDestinations"}}, "type" => "structure"}, "GetIdentityVerificationAttributesRequest" => %{"members" => %{"Identities" => %{"shape" => "IdentityList"}}, "required" => ["Identities"], "type" => "structure"}, "CloudWatchDimensionConfiguration" => %{"members" => %{"DefaultDimensionValue" => %{"shape" => "DefaultDimensionValue"}, "DimensionName" => %{"shape" => "DimensionName"}, "DimensionValueSource" => %{"shape" => "DimensionValueSource"}}, "required" => ["DimensionName", "DimensionValueSource", "DefaultDimensionValue"], "type" => "structure"}, "SNSAction" => %{"members" => %{"Encoding" => %{"shape" => "SNSActionEncoding"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["TopicArn"], "type" => "structure"}, "ConfigurationSet" => %{"members" => %{"Name" => %{"shape" => "ConfigurationSetName"}}, "required" => ["Name"], "type" => "structure"}, "SetActiveReceiptRuleSetResponse" => %{"members" => %{}, "type" => "structure"}, "CustomMailFromStatus" => %{"enum" => ["Pending", "Success", "Failed", "TemporaryFailure"], "type" => "string"}, "DescribeActiveReceiptRuleSetRequest" => %{"members" => %{}, "type" => "structure"}, "DeleteIdentityResponse" => %{"members" => %{}, "type" => "structure"}, "SendEmailResponse" => %{"members" => %{"MessageId" => %{"shape" => "MessageId"}}, "required" => ["MessageId"], "type" => "structure"}, "InvalidS3ConfigurationException" => %{"error" => %{"code" => "InvalidS3Configuration", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Bucket" => %{"shape" => "S3BucketName"}}, "type" => "structure"}, "CloneReceiptRuleSetResponse" => %{"members" => %{}, "type" => "structure"}, "ReceiptRule" => %{"members" => %{"Actions" => %{"shape" => "ReceiptActionsList"}, "Enabled" => %{"shape" => "Enabled"}, "Name" => %{"shape" => "ReceiptRuleName"}, "Recipients" => %{"shape" => "RecipientsList"}, "ScanEnabled" => %{"shape" => "Enabled"}, "TlsPolicy" => %{"shape" => "TlsPolicy"}}, "required" => ["Name"], "type" => "structure"}, "RawMessage" => %{"members" => %{"Data" => %{"shape" => "RawMessageData"}}, "required" => ["Data"], "type" => "structure"}, "VerifyDomainIdentityRequest" => %{"members" => %{"Domain" => %{"shape" => "Domain"}}, "required" => ["Domain"], "type" => "structure"}, "CreateReceiptRuleSetResponse" => %{"members" => %{}, "type" => "structure"}, "LastAttemptDate" => %{"type" => "timestamp"}, "AlreadyExistsException" => %{"error" => %{"code" => "AlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Name" => %{"shape" => "RuleOrRuleSetName"}}, "type" => "structure"}, "DeleteVerifiedEmailAddressRequest" => %{"members" => %{"EmailAddress" => %{"shape" => "Address"}}, "required" => ["EmailAddress"], "type" => "structure"}, "VerificationAttributes" => %{"key" => %{"shape" => "Identity"}, "type" => "map", "value" => %{"shape" => "IdentityVerificationAttributes"}}, "SetReceiptRulePositionResponse" => %{"members" => %{}, "type" => "structure"}, "RecipientDsnFields" => %{"members" => %{"Action" => %{"shape" => "DsnAction"}, "DiagnosticCode" => %{"shape" => "DiagnosticCode"}, "ExtensionFields" => %{"shape" => "ExtensionFieldList"}, "FinalRecipient" => %{"shape" => "Address"}, "LastAttemptDate" => %{"shape" => "LastAttemptDate"}, "RemoteMta" => %{"shape" => "RemoteMta"}, "Status" => %{"shape" => "DsnStatus"}}, "required" => ["Action", "Status"], "type" => "structure"}, "UpdateConfigurationSetEventDestinationResponse" => %{"members" => %{}, "type" => "structure"}, "ArrivalDate" => %{"type" => "timestamp"}, "HeaderValue" => %{"type" => "string"}, "MessageTag" => %{"members" => %{"Name" => %{"shape" => "MessageTagName"}, "Value" => %{"shape" => "MessageTagValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "DsnStatus" => %{"type" => "string"}, "DescribeReceiptRuleRequest" => %{"members" => %{"RuleName" => %{"shape" => "ReceiptRuleName"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "RuleName"], "type" => "structure"}, "SendDataPointList" => %{"member" => %{"shape" => "SendDataPoint"}, "type" => "list"}, "ConfigurationSetAttributeList" => %{"member" => %{"shape" => "ConfigurationSetAttribute"}, "type" => "list"}, "InvalidSNSDestinationException" => %{"error" => %{"code" => "InvalidSNSDestination", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "type" => "structure"}, "ReceiptRulesList" => %{"member" => %{"shape" => "ReceiptRule"}, "type" => "list"}, "BehaviorOnMXFailure" => %{"enum" => ["UseDefaultValue", "RejectMessage"], "type" => "string"}, "DescribeReceiptRuleResponse" => %{"members" => %{"Rule" => %{"shape" => "ReceiptRule"}}, "type" => "structure"}, "SetReceiptRulePositionRequest" => %{"members" => %{"After" => %{"shape" => "ReceiptRuleName"}, "RuleName" => %{"shape" => "ReceiptRuleName"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "RuleName"], "type" => "structure"}, "Address" => %{"type" => "string"}, "VerificationToken" => %{"type" => "string"}, "Message" => %{"members" => %{"Body" => %{"shape" => "Body"}, "Subject" => %{"shape" => "Content"}}, "required" => ["Subject", "Body"], "type" => "structure"}, "InvalidPolicyException" => %{"error" => %{"code" => "InvalidPolicy", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "ListReceiptRuleSetsResponse" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}, "RuleSets" => %{"shape" => "ReceiptRuleSetsLists"}}, "type" => "structure"}, "PutIdentityPolicyRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}, "Policy" => %{"shape" => "Policy"}, "PolicyName" => %{"shape" => "PolicyName"}}, "required" => ["Identity", "PolicyName", "Policy"], "type" => "structure"}, "DeleteReceiptRuleResponse" => %{"members" => %{}, "type" => "structure"}, "ReceiptRuleName" => %{"type" => "string"}, "SNSActionEncoding" => %{"enum" => ["UTF-8", "Base64"], "type" => "string"}, "ConfigurationSetDoesNotExistException" => %{"error" => %{"code" => "ConfigurationSetDoesNotExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}}, "type" => "structure"}, "SetIdentityDkimEnabledResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteConfigurationSetRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}}, "required" => ["ConfigurationSetName"], "type" => "structure"}, "MessageTagValue" => %{"type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "Counter" => %{"type" => "long"}, "ReceiptRuleSetMetadata" => %{"members" => %{"CreatedTimestamp" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "ReceiptRuleSetName"}}, "type" => "structure"}, "ListReceiptRuleSetsRequest" => %{"members" => %{"NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "AmazonResourceName" => %{"type" => "string"}, "ReceiptAction" => %{"members" => %{"AddHeaderAction" => %{"shape" => "AddHeaderAction"}, "BounceAction" => %{"shape" => "BounceAction"}, "LambdaAction" => %{"shape" => "LambdaAction"}, "S3Action" => %{"shape" => "S3Action"}, "SNSAction" => %{"shape" => "SNSAction"}, "StopAction" => %{"shape" => "StopAction"}, "WorkmailAction" => %{"shape" => "WorkmailAction"}}, "type" => "structure"}, "AddHeaderAction" => %{"members" => %{"HeaderName" => %{"shape" => "HeaderName"}, "HeaderValue" => %{"shape" => "HeaderValue"}}, "required" => ["HeaderName", "HeaderValue"], "type" => "structure"}, "WorkmailAction" => %{"members" => %{"OrganizationArn" => %{"shape" => "AmazonResourceName"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["OrganizationArn"], "type" => "structure"}, "SetIdentityNotificationTopicResponse" => %{"members" => %{}, "type" => "structure"}, "HeaderName" => %{"type" => "string"}, "MaxSendRate" => %{"type" => "double"}, "Identity" => %{"type" => "string"}, "NotificationTopic" => %{"type" => "string"}, "ReceiptFilterPolicy" => %{"enum" => ["Block", "Allow"], "type" => "string"}, "DeleteReceiptRuleRequest" => %{"members" => %{"RuleName" => %{"shape" => "ReceiptRuleName"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "RuleName"], "type" => "structure"}, "ListReceiptFiltersResponse" => %{"members" => %{"Filters" => %{"shape" => "ReceiptFilterList"}}, "type" => "structure"}, "ListIdentityPoliciesResponse" => %{"members" => %{"PolicyNames" => %{"shape" => "PolicyNameList"}}, "required" => ["PolicyNames"], "type" => "structure"}, "ReorderReceiptRuleSetRequest" => %{"members" => %{"RuleNames" => %{"shape" => "ReceiptRuleNamesList"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "RuleNames"], "type" => "structure"}, "MessageId" => %{"type" => "string"}, "BouncedRecipientInfoList" => %{"member" => %{"shape" => "BouncedRecipientInfo"}, "type" => "list"}, "BounceMessage" => %{"type" => "string"}, "DeleteConfigurationSetEventDestinationResponse" => %{"members" => %{}, "type" => "structure"}, "Policy" => %{"min" => 1, "type" => "string"}, "CreateReceiptRuleSetRequest" => %{"members" => %{"RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName"], "type" => "structure"}, "BounceType" => %{"enum" => ["DoesNotExist", "MessageTooLarge", "ExceededQuota", "ContentRejected", "Undefined", "TemporaryFailure"], "type" => "string"}, "CreateReceiptRuleResponse" => %{"members" => %{}, "type" => "structure"}, "NotificationAttributes" => %{"key" => %{"shape" => "Identity"}, "type" => "map", "value" => %{"shape" => "IdentityNotificationAttributes"}}, "PolicyNameList" => %{"member" => %{"shape" => "PolicyName"}, "type" => "list"}, "RuleSetDoesNotExistException" => %{"error" => %{"code" => "RuleSetDoesNotExist", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Name" => %{"shape" => "RuleOrRuleSetName"}}, "type" => "structure"}, "SendEmailRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "Destination" => %{"shape" => "Destination"}, "Message" => %{"shape" => "Message"}, "ReplyToAddresses" => %{"shape" => "AddressList"}, "ReturnPath" => %{"shape" => "Address"}, "ReturnPathArn" => %{"shape" => "AmazonResourceName"}, "Source" => %{"shape" => "Address"}, "SourceArn" => %{"shape" => "AmazonResourceName"}, "Tags" => %{"shape" => "MessageTagList"}}, "required" => ["Source", "Destination", "Message"], "type" => "structure"}, "CreateConfigurationSetResponse" => %{"members" => %{}, "type" => "structure"}, "EventDestinationAlreadyExistsException" => %{"error" => %{"code" => "EventDestinationAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "type" => "structure"}, "GetIdentityPoliciesResponse" => %{"members" => %{"Policies" => %{"shape" => "PolicyMap"}}, "required" => ["Policies"], "type" => "structure"}, "MailFromDomainNotVerifiedException" => %{"error" => %{"code" => "MailFromDomainNotVerifiedException", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "VerifyEmailAddressRequest" => %{"members" => %{"EmailAddress" => %{"shape" => "Address"}}, "required" => ["EmailAddress"], "type" => "structure"}, "DescribeConfigurationSetRequest" => %{"members" => %{"ConfigurationSetAttributeNames" => %{"shape" => "ConfigurationSetAttributeList"}, "ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}}, "required" => ["ConfigurationSetName"], "type" => "structure"}, "DeleteConfigurationSetResponse" => %{"members" => %{}, "type" => "structure"}, "RawMessageData" => %{"type" => "blob"}, "LimitExceededException" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "GetIdentityMailFromDomainAttributesResponse" => %{"members" => %{"MailFromDomainAttributes" => %{"shape" => "MailFromDomainAttributes"}}, "required" => ["MailFromDomainAttributes"], "type" => "structure"}, "Cidr" => %{"type" => "string"}, "ReceiptRuleSetName" => %{"type" => "string"}, "LambdaAction" => %{"members" => %{"FunctionArn" => %{"shape" => "AmazonResourceName"}, "InvocationType" => %{"shape" => "InvocationType"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["FunctionArn"], "type" => "structure"}, "Content" => %{"members" => %{"Charset" => %{"shape" => "Charset"}, "Data" => %{"shape" => "MessageData"}}, "required" => ["Data"], "type" => "structure"}, "MailFromDomainName" => %{"type" => "string"}, "DeleteReceiptFilterRequest" => %{"members" => %{"FilterName" => %{"shape" => "ReceiptFilterName"}}, "required" => ["FilterName"], "type" => "structure"}, "MessageData" => %{"type" => "string"}, "SentLast24Hours" => %{"type" => "double"}, "SendBounceRequest" => %{"members" => %{"BounceSender" => %{"shape" => "Address"}, "BounceSenderArn" => %{"shape" => "AmazonResourceName"}, "BouncedRecipientInfoList" => %{"shape" => "BouncedRecipientInfoList"}, "Explanation" => %{"shape" => "Explanation"}, "MessageDsn" => %{"shape" => "MessageDsn"}, "OriginalMessageId" => %{"shape" => "MessageId"}}, "required" => ["OriginalMessageId", "BounceSender", "BouncedRecipientInfoList"], "type" => "structure"}, "VerifyEmailIdentityRequest" => %{"members" => %{"EmailAddress" => %{"shape" => "Address"}}, "required" => ["EmailAddress"], "type" => "structure"}, "DeleteConfigurationSetEventDestinationRequest" => %{"members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "required" => ["ConfigurationSetName", "EventDestinationName"], "type" => "structure"}, "StopScope" => %{"enum" => ["RuleSet"], "type" => "string"}, "ConfigurationSets" => %{"member" => %{"shape" => "ConfigurationSet"}, "type" => "list"}, "SNSDestination" => %{"members" => %{"TopicARN" => %{"shape" => "AmazonResourceName"}}, "required" => ["TopicARN"], "type" => "structure"}, "DiagnosticCode" => %{"type" => "string"}, "CreateConfigurationSetRequest" => %{"members" => %{"ConfigurationSet" => %{"shape" => "ConfigurationSet"}}, "required" => ["ConfigurationSet"], "type" => "structure"}, "DeleteReceiptRuleSetResponse" => %{"members" => %{}, "type" => "structure"}, "ReceiptFilter" => %{"members" => %{"IpFilter" => %{"shape" => "ReceiptIpFilter"}, "Name" => %{"shape" => "ReceiptFilterName"}}, "required" => ["Name", "IpFilter"], "type" => "structure"}, "InvalidLambdaFunctionException" => %{"error" => %{"code" => "InvalidLambdaFunction", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"FunctionArn" => %{"shape" => "AmazonResourceName"}}, "type" => "structure"}, "DeleteIdentityPolicyRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}, "PolicyName" => %{"shape" => "PolicyName"}}, "required" => ["Identity", "PolicyName"], "type" => "structure"}, "ConfigurationSetAlreadyExistsException" => %{"error" => %{"code" => "ConfigurationSetAlreadyExists", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}}, "type" => "structure"}, "AddressList" => %{"member" => %{"shape" => "Address"}, "type" => "list"}, "MaxItems" => %{"type" => "integer"}, "ListConfigurationSetsResponse" => %{"members" => %{"ConfigurationSets" => %{"shape" => "ConfigurationSets"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "DeleteIdentityPolicyResponse" => %{"members" => %{}, "type" => "structure"}, "SetIdentityFeedbackForwardingEnabledResponse" => %{"members" => %{}, "type" => "structure"}, "ListReceiptFiltersRequest" => %{"members" => %{}, "type" => "structure"}, "RuleOrRuleSetName" => %{"type" => "string"}, "GetSendStatisticsResponse" => %{"members" => %{"SendDataPoints" => %{"shape" => "SendDataPointList"}}, "type" => "structure"}, "VerifyDomainIdentityResponse" => %{"members" => %{"VerificationToken" => %{"shape" => "VerificationToken"}}, "required" => ["VerificationToken"], "type" => "structure"}, "TlsPolicy" => %{"enum" => ["Require", "Optional"], "type" => "string"}, "MailFromDomainAttributes" => %{"key" => %{"shape" => "Identity"}, "type" => "map", "value" => %{"shape" => "IdentityMailFromDomainAttributes"}}, "GetIdentityPoliciesRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}, "PolicyNames" => %{"shape" => "PolicyNameList"}}, "required" => ["Identity", "PolicyNames"], "type" => "structure"}, "MessageTagName" => %{"type" => "string"}, "NotificationType" => %{"enum" => ["Bounce", "Complaint", "Delivery"], "type" => "string"}, "CreateReceiptRuleRequest" => %{"members" => %{"After" => %{"shape" => "ReceiptRuleName"}, "Rule" => %{"shape" => "ReceiptRule"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "Rule"], "type" => "structure"}, "ExtensionField" => %{"members" => %{"Name" => %{"shape" => "ExtensionFieldName"}, "Value" => %{"shape" => "ExtensionFieldValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "BouncedRecipientInfo" => %{"members" => %{"BounceType" => %{"shape" => "BounceType"}, "Recipient" => %{"shape" => "Address"}, "RecipientArn" => %{"shape" => "AmazonResourceName"}, "RecipientDsnFields" => %{"shape" => "RecipientDsnFields"}}, "required" => ["Recipient"], "type" => "structure"}, "EventTypes" => %{"member" => %{"shape" => "EventType"}, "type" => "list"}, "BounceSmtpReplyCode" => %{"type" => "string"}, "BounceAction" => %{"members" => %{"Message" => %{"shape" => "BounceMessage"}, "Sender" => %{"shape" => "Address"}, "SmtpReplyCode" => %{"shape" => "BounceSmtpReplyCode"}, "StatusCode" => %{"shape" => "BounceStatusCode"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["SmtpReplyCode", "Message", "Sender"], "type" => "structure"}, "CloudWatchDimensionConfigurations" => %{"member" => %{"shape" => "CloudWatchDimensionConfiguration"}, "type" => "list"}, "ReceiptRuleNamesList" => %{"member" => %{"shape" => "ReceiptRuleName"}, "type" => "list"}, "MessageRejected" => %{"error" => %{"code" => "MessageRejected", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{}, "type" => "structure"}, "Destination" => %{"members" => %{"BccAddresses" => %{"shape" => "AddressList"}, "CcAddresses" => %{"shape" => "AddressList"}, "ToAddresses" => %{"shape" => "AddressList"}}, "type" => "structure"}, "GetIdentityVerificationAttributesResponse" => %{"members" => %{"VerificationAttributes" => %{"shape" => "VerificationAttributes"}}, "required" => ["VerificationAttributes"], "type" => "structure"}, "ConfigurationSetAttribute" => %{"enum" => ["eventDestinations"], "type" => "string"}, "GetIdentityDkimAttributesRequest" => %{"members" => %{"Identities" => %{"shape" => "IdentityList"}}, "required" => ["Identities"], "type" => "structure"}, "SetIdentityFeedbackForwardingEnabledRequest" => %{"members" => %{"ForwardingEnabled" => %{"shape" => "Enabled"}, "Identity" => %{"shape" => "Identity"}}, "required" => ["Identity", "ForwardingEnabled"], "type" => "structure"}, "ReorderReceiptRuleSetResponse" => %{"members" => %{}, "type" => "structure"}, "DkimAttributes" => %{"key" => %{"shape" => "Identity"}, "type" => "map", "value" => %{"shape" => "IdentityDkimAttributes"}}, "EventType" => %{"enum" => ["send", "reject", "bounce", "complaint", "delivery", "open", "click"], "type" => "string"}, "UpdateReceiptRuleRequest" => %{"members" => %{"Rule" => %{"shape" => "ReceiptRule"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "Rule"], "type" => "structure"}, "PolicyName" => %{"max" => 64, "min" => 1, "type" => "string"}, "ReceiptIpFilter" => %{"members" => %{"Cidr" => %{"shape" => "Cidr"}, "Policy" => %{"shape" => "ReceiptFilterPolicy"}}, "required" => ["Policy", "Cidr"], "type" => "structure"}, "CannotDeleteException" => %{"error" => %{"code" => "CannotDelete", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"Name" => %{"shape" => "RuleOrRuleSetName"}}, "type" => "structure"}, "DescribeActiveReceiptRuleSetResponse" => %{"members" => %{"Metadata" => %{"shape" => "ReceiptRuleSetMetadata"}, "Rules" => %{"shape" => "ReceiptRulesList"}}, "type" => "structure"}, "DescribeReceiptRuleSetResponse" => %{"members" => %{"Metadata" => %{"shape" => "ReceiptRuleSetMetadata"}, "Rules" => %{"shape" => "ReceiptRulesList"}}, "type" => "structure"}, "ReportingMta" => %{"type" => "string"}, "Enabled" => %{"type" => "boolean"}, "ConfigurationSetName" => %{"type" => "string"}, "DefaultDimensionValue" => %{"type" => "string"}, "SetIdentityHeadersInNotificationsEnabledResponse" => %{"members" => %{}, "type" => "structure"}, "GetIdentityNotificationAttributesRequest" => %{"members" => %{"Identities" => %{"shape" => "IdentityList"}}, "required" => ["Identities"], "type" => "structure"}, "S3Action" => %{"members" => %{"BucketName" => %{"shape" => "S3BucketName"}, "KmsKeyArn" => %{"shape" => "AmazonResourceName"}, "ObjectKeyPrefix" => %{"shape" => "S3KeyPrefix"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["BucketName"], "type" => "structure"}, "ReceiptActionsList" => %{"member" => %{"shape" => "ReceiptAction"}, "type" => "list"}, "Body" => %{"members" => %{"Html" => %{"shape" => "Content"}, "Text" => %{"shape" => "Content"}}, "type" => "structure"}, "VerificationStatus" => %{"enum" => ["Pending", "Success", "Failed", "TemporaryFailure", "NotStarted"], "type" => "string"}, "SetActiveReceiptRuleSetRequest" => %{"members" => %{"RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "type" => "structure"}, "CreateReceiptFilterResponse" => %{"members" => %{}, "type" => "structure"}, "StopAction" => %{"members" => %{"Scope" => %{"shape" => "StopScope"}, "TopicArn" => %{"shape" => "AmazonResourceName"}}, "required" => ["Scope"], "type" => "structure"}, "SendDataPoint" => %{"members" => %{"Bounces" => %{"shape" => "Counter"}, "Complaints" => %{"shape" => "Counter"}, "DeliveryAttempts" => %{"shape" => "Counter"}, "Rejects" => %{"shape" => "Counter"}, "Timestamp" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "CreateReceiptFilterRequest" => %{"members" => %{"Filter" => %{"shape" => "ReceiptFilter"}}, "required" => ["Filter"], "type" => "structure"}, "ListIdentitiesRequest" => %{"members" => %{"IdentityType" => %{"shape" => "IdentityType"}, "MaxItems" => %{"shape" => "MaxItems"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "IdentityMailFromDomainAttributes" => %{"members" => %{"BehaviorOnMXFailure" => %{"shape" => "BehaviorOnMXFailure"}, "MailFromDomain" => %{"shape" => "MailFromDomainName"}, "MailFromDomainStatus" => %{"shape" => "CustomMailFromStatus"}}, "required" => ["MailFromDomain", "MailFromDomainStatus", "BehaviorOnMXFailure"], "type" => "structure"}, "ReceiptFilterList" => %{"member" => %{"shape" => "ReceiptFilter"}, "type" => "list"}, "SetIdentityDkimEnabledRequest" => %{"members" => %{"DkimEnabled" => %{"shape" => "Enabled"}, "Identity" => %{"shape" => "Identity"}}, "required" => ["Identity", "DkimEnabled"], "type" => "structure"}, "VerifyEmailIdentityResponse" => %{"members" => %{}, "type" => "structure"}, "EventDestinationName" => %{"type" => "string"}, "DeleteIdentityRequest" => %{"members" => %{"Identity" => %{"shape" => "Identity"}}, "required" => ["Identity"], "type" => "structure"}, "CloneReceiptRuleSetRequest" => %{"members" => %{"OriginalRuleSetName" => %{"shape" => "ReceiptRuleSetName"}, "RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName", "OriginalRuleSetName"], "type" => "structure"}, "ReceiptFilterName" => %{"type" => "string"}, "IdentityType" => %{"enum" => ["EmailAddress", "Domain"], "type" => "string"}, "NextToken" => %{"type" => "string"}, "GetIdentityNotificationAttributesResponse" => %{"members" => %{"NotificationAttributes" => %{"shape" => "NotificationAttributes"}}, "required" => ["NotificationAttributes"], "type" => "structure"}, "InvalidFirehoseDestinationException" => %{"error" => %{"code" => "InvalidFirehoseDestination", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"ConfigurationSetName" => %{"shape" => "ConfigurationSetName"}, "EventDestinationName" => %{"shape" => "EventDestinationName"}}, "type" => "structure"}, "ListVerifiedEmailAddressesResponse" => %{"members" => %{"VerifiedEmailAddresses" => %{"shape" => "AddressList"}}, "type" => "structure"}, "IdentityDkimAttributes" => %{"members" => %{"DkimEnabled" => %{"shape" => "Enabled"}, "DkimTokens" => %{"shape" => "VerificationTokenList"}, "DkimVerificationStatus" => %{"shape" => "VerificationStatus"}}, "required" => ["DkimEnabled", "DkimVerificationStatus"], "type" => "structure"}, "Recipient" => %{"type" => "string"}, "ListConfigurationSetsRequest" => %{"members" => %{"MaxItems" => %{"shape" => "MaxItems"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "SetIdentityMailFromDomainResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteReceiptRuleSetRequest" => %{"members" => %{"RuleSetName" => %{"shape" => "ReceiptRuleSetName"}}, "required" => ["RuleSetName"], "type" => "structure"}, "CloudWatchDestination" => %{"members" => %{"DimensionConfigurations" => %{"shape" => "CloudWatchDimensionConfigurations"}}, "required" => ["DimensionConfigurations"], "type" => "structure"}, "S3KeyPrefix" => %{"type" => "string"}, "IdentityList" => %{"member" => %{"shape" => "Identity"}, "type" => "list"}, "Domain" => %{"type" => "string"}, "VerifyDomainDkimResponse" => %{"members" => %{"DkimTokens" => %{"shape" => "VerificationTokenList"}}, "required" => ["DkimTokens"], "type" => "structure"}}
  end
end