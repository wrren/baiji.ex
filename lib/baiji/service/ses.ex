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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendRawEmail",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeActiveReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetReceiptRulePosition",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeConfigurationSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateReceiptRule",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateConfigurationSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteReceiptRule",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListReceiptFilters",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateConfigurationSetEventDestination",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateConfigurationSetEventDestination",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateReceiptFilter",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetIdentityNotificationTopic",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteConfigurationSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DescribeReceiptRule",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteIdentityPolicy",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListVerifiedEmailAddresses",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns a list containing all of the identities (email addresses and
  domains) for your AWS account, regardless of verification status.

  This action is throttled at one request per second.
  """
  def list_identities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListIdentities",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetIdentityNotificationAttributes",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Returns the user's current sending limits.

  This action is throttled at one request per second.
  """
  def get_send_quota(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSendQuota",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListIdentityPolicies",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetIdentityMailFromDomainAttributes",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CloneReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteReceiptFilter",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetIdentityHeadersInNotificationsEnabled",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSendStatistics",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetIdentityMailFromDomain",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "VerifyDomainDkim",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListConfigurationSets",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateReceiptRule",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "VerifyEmailAddress",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteConfigurationSetEventDestination",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetIdentityPolicies",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetIdentityDkimAttributes",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetIdentityFeedbackForwardingEnabled",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendEmail",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SendBounce",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetActiveReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetIdentityVerificationAttributes",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVerifiedEmailAddress",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified identity (an email address or a domain) from the list
  of verified identities.

  This action is throttled at one request per second.
  """
  def delete_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteIdentity",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutIdentityPolicy",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Verifies a domain.

  This action is throttled at one request per second.
  """
  def verify_domain_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "VerifyDomainIdentity",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ReorderReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateReceiptRuleSet",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetIdentityDkimEnabled",
      
      type:           :xml,
      method:         :post
    }
  end
  
  @doc """
  Verifies an email address. This action causes a confirmation email message
  to be sent to the specified address.

  This action is throttled at one request per second.
  """
  def verify_email_identity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "VerifyEmailIdentity",
      
      type:           :xml,
      method:         :post
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
      service:        "email",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListReceiptRuleSets",
      
      type:           :xml,
      method:         :post
    }
  end
  
end