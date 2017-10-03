defmodule Baiji.Route53Domains do
  @moduledoc """
  Amazon Route 53 API actions let you register domain names and perform
  related operations.
  """
  
  @doc """
  This operation checks the availability of one domain name. Note that if the
  availability status of a domain is pending, you must submit another request
  to determine the availability of the domain name.
  """
  def check_domain_availability(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CheckDomainAvailability",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "CheckDomainAvailabilityRequest",
      output_shape:     "CheckDomainAvailabilityResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation deletes the specified tags for a domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def delete_tags_for_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteTagsForDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "DeleteTagsForDomainRequest",
      output_shape:     "DeleteTagsForDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation disables automatic renewal of domain registration for the
  specified domain.
  """
  def disable_domain_auto_renew(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableDomainAutoRenew",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "DisableDomainAutoRenewRequest",
      output_shape:     "DisableDomainAutoRenewResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation removes the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to allow domain transfers. We recommend
  you refrain from performing this action unless you intend to transfer the
  domain to a different registrar. Successful submission returns an operation
  ID that you can use to track the progress and completion of the action. If
  the request is not completed successfully, the domain registrant will be
  notified by email.
  """
  def disable_domain_transfer_lock(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisableDomainTransferLock",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "DisableDomainTransferLockRequest",
      output_shape:     "DisableDomainTransferLockResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation configures Amazon Route 53 to automatically renew the
  specified domain before the domain registration expires. The cost of
  renewing your domain registration is billed to your AWS account.

  The period during which you can renew a domain name varies by TLD. For a
  list of TLDs and their renewal policies, see ["Renewal, restoration, and
  deletion
  times"](http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times)
  on the website for our registrar partner, Gandi. Route 53 requires that you
  renew before the end of the renewal period that is listed on the Gandi
  website so we can complete processing before the deadline.
  """
  def enable_domain_auto_renew(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableDomainAutoRenew",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "EnableDomainAutoRenewRequest",
      output_shape:     "EnableDomainAutoRenewResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation sets the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to prevent domain transfers. Successful
  submission returns an operation ID that you can use to track the progress
  and completion of the action. If the request is not completed successfully,
  the domain registrant will be notified by email.
  """
  def enable_domain_transfer_lock(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "EnableDomainTransferLock",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "EnableDomainTransferLockRequest",
      output_shape:     "EnableDomainTransferLockResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this
  operation returns information about whether the registrant contact has
  responded.

  If you want us to resend the email, use the
  `ResendContactReachabilityEmail` operation.
  """
  def get_contact_reachability_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetContactReachabilityStatus",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "GetContactReachabilityStatusRequest",
      output_shape:     "GetContactReachabilityStatusResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns detailed information about a specified domain that
  is associated with the current AWS account. Contact information for the
  domain is also returned as part of the output.
  """
  def get_domain_detail(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDomainDetail",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "GetDomainDetailRequest",
      output_shape:     "GetDomainDetailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  The GetDomainSuggestions operation returns a list of suggested domain names
  given a string, which can either be a domain name or simply a word or
  phrase (without spaces).
  """
  def get_domain_suggestions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDomainSuggestions",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "GetDomainSuggestionsRequest",
      output_shape:     "GetDomainSuggestionsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns the current status of an operation that is not
  completed.
  """
  def get_operation_detail(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetOperationDetail",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "GetOperationDetailRequest",
      output_shape:     "GetOperationDetailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns all the domain names registered with Amazon Route 53
  for the current AWS account.
  """
  def list_domains(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDomains",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "ListDomainsRequest",
      output_shape:     "ListDomainsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns the operation IDs of operations that are not yet
  complete.
  """
  def list_operations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListOperations",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "ListOperationsRequest",
      output_shape:     "ListOperationsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns all of the tags that are associated with the
  specified domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def list_tags_for_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "ListTagsForDomainRequest",
      output_shape:     "ListTagsForDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation registers a domain. Domains are registered by the AWS
  registrar partner, Gandi. For some top-level domains (TLDs), this operation
  requires extra parameters.

  When you register a domain, Amazon Route 53 does the following:

  <ul> <li> Creates a Amazon Route 53 hosted zone that has the same name as
  the domain. Amazon Route 53 assigns four name servers to your hosted zone
  and automatically updates your domain registration with the names of these
  name servers.

  </li> <li> Enables autorenew, so your domain registration will renew
  automatically each year. We'll notify you in advance of the renewal date so
  you can choose whether to renew the registration.

  </li> <li> Optionally enables privacy protection, so WHOIS queries return
  contact information for our registrar partner, Gandi, instead of the
  information you entered for registrant, admin, and tech contacts.

  </li> <li> If registration is successful, returns an operation ID that you
  can use to track the progress and completion of the action. If the request
  is not completed successfully, the domain registrant is notified by email.

  </li> <li> Charges your AWS account an amount based on the top-level
  domain. For more information, see [Amazon Route 53
  Pricing](http://aws.amazon.com/route53/pricing/).

  </li> </ul>
  """
  def register_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RegisterDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "RegisterDomainRequest",
      output_shape:     "RegisterDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation renews a domain for the specified number of years. The cost
  of renewing your domain is billed to your AWS account.

  We recommend that you renew your domain several weeks before the expiration
  date. Some TLD registries delete domains before the expiration date if you
  haven't renewed far enough in advance. For more information about renewing
  domain registration, see [Renewing Registration for a
  Domain](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
  in the Amazon Route 53 Developer Guide.
  """
  def renew_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RenewDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "RenewDomainRequest",
      output_shape:     "RenewDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this
  operation resends the confirmation email to the current email address for
  the registrant contact.
  """
  def resend_contact_reachability_email(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResendContactReachabilityEmail",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "ResendContactReachabilityEmailRequest",
      output_shape:     "ResendContactReachabilityEmailResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation returns the AuthCode for the domain. To transfer a domain to
  another registrar, you provide this value to the new registrar.
  """
  def retrieve_domain_auth_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RetrieveDomainAuthCode",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "RetrieveDomainAuthCodeRequest",
      output_shape:     "RetrieveDomainAuthCodeResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation transfers a domain from another registrar to Amazon Route
  53. When the transfer is complete, the domain is registered with the AWS
  registrar partner, Gandi.

  For transfer requirements, a detailed procedure, and information about
  viewing the status of a domain transfer, see [Transferring Registration for
  a Domain to Amazon Route
  53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
  in the *Amazon Route 53 Developer Guide*.

  If the registrar for your domain is also the DNS service provider for the
  domain, we highly recommend that you consider transferring your DNS service
  to Amazon Route 53 or to another DNS service provider before you transfer
  your registration. Some registrars provide free DNS service when you
  purchase a domain registration. When you transfer the registration, the
  previous registrar will not renew your domain registration and could end
  your DNS service at any time.

  <important> If the registrar for your domain is also the DNS service
  provider for the domain and you don't transfer DNS service to another
  provider, your website, email, and the web applications associated with the
  domain might become unavailable.

  </important> If the transfer is successful, this method returns an
  operation ID that you can use to track the progress and completion of the
  action. If the transfer doesn't complete successfully, the domain
  registrant will be notified by email.
  """
  def transfer_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "TransferDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "TransferDomainRequest",
      output_shape:     "TransferDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation updates the contact information for a particular domain.
  Information for at least one contact (registrant, administrator, or
  technical) must be supplied for update.

  If the update is successful, this method returns an operation ID that you
  can use to track the progress and completion of the action. If the request
  is not completed successfully, the domain registrant will be notified by
  email.
  """
  def update_domain_contact(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDomainContact",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "UpdateDomainContactRequest",
      output_shape:     "UpdateDomainContactResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation updates the specified domain contact's privacy setting. When
  the privacy option is enabled, personal information such as postal or email
  address is hidden from the results of a public WHOIS query. The privacy
  services are provided by the AWS registrar, Gandi. For more information,
  see the [Gandi privacy
  features](http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en).

  This operation only affects the privacy of the specified contact type
  (registrant, administrator, or tech). Successful acceptance returns an
  operation ID that you can use with `GetOperationDetail` to track the
  progress and completion of the action. If the request is not completed
  successfully, the domain registrant will be notified by email.
  """
  def update_domain_contact_privacy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDomainContactPrivacy",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "UpdateDomainContactPrivacyRequest",
      output_shape:     "UpdateDomainContactPrivacyResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation replaces the current set of name servers for the domain with
  the specified set of name servers. If you use Amazon Route 53 as your DNS
  service, specify the four name servers in the delegation set for the hosted
  zone for the domain.

  If successful, this operation returns an operation ID that you can use to
  track the progress and completion of the action. If the request is not
  completed successfully, the domain registrant will be notified by email.
  """
  def update_domain_nameservers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDomainNameservers",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "UpdateDomainNameserversRequest",
      output_shape:     "UpdateDomainNameserversResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  This operation adds or updates tags for a specified domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def update_tags_for_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateTagsForDomain",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "UpdateTagsForDomainRequest",
      output_shape:     "UpdateTagsForDomainResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns all the domain-related billing records for the current AWS account
  for a specified period
  """
  def view_billing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "route53domains",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ViewBilling",
      
      target_prefix:    "Route53Domains_v20140515",
      
      endpoint_prefix:  "route53domains",
      type:             :json,
      version:          "2014-05-15",
      method:           :post,
      input_shape:      "ViewBillingRequest",
      output_shape:     "ViewBillingResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"OperationLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListTagsForDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "TagKeyList" => %{"member" => %{"shape" => "TagKey"}, "type" => "list"}, "City" => %{"max" => 255, "type" => "string"}, "ContactType" => %{"enum" => ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"], "type" => "string"}, "RegistrarUrl" => %{"type" => "string"}, "ExtraParamValue" => %{"max" => 2048, "type" => "string"}, "GlueIpList" => %{"member" => %{"shape" => "GlueIp"}, "type" => "list"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "CheckDomainAvailabilityResponse" => %{"members" => %{"Availability" => %{"shape" => "DomainAvailability"}}, "required" => ["Availability"], "type" => "structure"}, "DurationInYears" => %{"max" => 10, "min" => 1, "type" => "integer"}, "ErrorMessage" => %{"type" => "string"}, "RegistrarWhoIsServer" => %{"type" => "string"}, "InvalidInput" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "UpdateTagsForDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "TagsToUpdate" => %{"shape" => "TagList"}}, "required" => ["DomainName"], "type" => "structure"}, "GetDomainDetailRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "ExtraParam" => %{"members" => %{"Name" => %{"shape" => "ExtraParamName"}, "Value" => %{"shape" => "ExtraParamValue"}}, "required" => ["Name", "Value"], "type" => "structure"}, "DomainAuthCode" => %{"max" => 1024, "sensitive" => true, "type" => "string"}, "ResendContactReachabilityEmailResponse" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}, "emailAddress" => %{"shape" => "Email"}, "isAlreadyVerified" => %{"shape" => "Boolean"}}, "type" => "structure"}, "RenewDomainResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "EnableDomainTransferLockRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "BillingRecord" => %{"members" => %{"BillDate" => %{"shape" => "Timestamp"}, "DomainName" => %{"shape" => "DomainName"}, "InvoiceId" => %{"shape" => "InvoiceId"}, "Operation" => %{"shape" => "OperationType"}, "Price" => %{"shape" => "Price"}}, "type" => "structure"}, "HostName" => %{"max" => 255, "pattern" => "[a-zA-Z0-9_\\-.]*", "type" => "string"}, "ExtraParamName" => %{"enum" => ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "IT_PIN", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER"], "type" => "string"}, "ListTagsForDomainResponse" => %{"members" => %{"TagList" => %{"shape" => "TagList"}}, "required" => ["TagList"], "type" => "structure"}, "TLDRulesViolation" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListDomainsRequest" => %{"members" => %{"Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}}, "type" => "structure"}, "GetDomainSuggestionsResponse" => %{"members" => %{"SuggestionsList" => %{"shape" => "DomainSuggestionsList"}}, "type" => "structure"}, "FIAuthKey" => %{"type" => "string"}, "RenewDomainRequest" => %{"members" => %{"CurrentExpiryYear" => %{"shape" => "CurrentExpiryYear"}, "DomainName" => %{"shape" => "DomainName"}, "DurationInYears" => %{"shape" => "DurationInYears"}}, "required" => ["DomainName", "CurrentExpiryYear"], "type" => "structure"}, "OperationStatus" => %{"enum" => ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"], "type" => "string"}, "DisableDomainTransferLockResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "ContactNumber" => %{"max" => 30, "type" => "string"}, "LangCode" => %{"max" => 3, "type" => "string"}, "EnableDomainAutoRenewRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "UpdateDomainContactResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "Reseller" => %{"type" => "string"}, "Email" => %{"max" => 254, "type" => "string"}, "DomainName" => %{"max" => 255, "pattern" => "[a-zA-Z0-9_\\-.]*", "type" => "string"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "type" => "structure"}, "OperationId" => %{"max" => 255, "type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "GetContactReachabilityStatusResponse" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}, "status" => %{"shape" => "ReachabilityStatus"}}, "type" => "structure"}, "UnsupportedTLD" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ExtraParamList" => %{"member" => %{"shape" => "ExtraParam"}, "type" => "list"}, "AddressLine" => %{"max" => 255, "type" => "string"}, "TagList" => %{"member" => %{"shape" => "Tag"}, "type" => "list"}, "TagValue" => %{"type" => "string"}, "UpdateDomainNameserversRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "FIAuthKey" => %{"shape" => "FIAuthKey"}, "Nameservers" => %{"shape" => "NameserverList"}}, "required" => ["DomainName", "Nameservers"], "type" => "structure"}, "ZipCode" => %{"max" => 255, "type" => "string"}, "ContactName" => %{"max" => 255, "type" => "string"}, "RegistrarName" => %{"type" => "string"}, "GetDomainSuggestionsRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "OnlyAvailable" => %{"shape" => "Boolean"}, "SuggestionCount" => %{"shape" => "Integer"}}, "required" => ["DomainName", "SuggestionCount", "OnlyAvailable"], "type" => "structure"}, "InvoiceId" => %{"type" => "string"}, "GetOperationDetailResponse" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "Message" => %{"shape" => "ErrorMessage"}, "OperationId" => %{"shape" => "OperationId"}, "Status" => %{"shape" => "OperationStatus"}, "SubmittedDate" => %{"shape" => "Timestamp"}, "Type" => %{"shape" => "OperationType"}}, "type" => "structure"}, "ResendContactReachabilityEmailRequest" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}}, "type" => "structure"}, "OperationType" => %{"enum" => ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK"], "type" => "string"}, "CountryCode" => %{"enum" => ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"], "type" => "string"}, "DomainSummaryList" => %{"member" => %{"shape" => "DomainSummary"}, "type" => "list"}, "DisableDomainTransferLockRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "UpdateTagsForDomainResponse" => %{"members" => %{}, "type" => "structure"}, "BillingRecords" => %{"member" => %{"shape" => "BillingRecord"}, "type" => "list"}, "GetOperationDetailRequest" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "UpdateDomainContactPrivacyRequest" => %{"members" => %{"AdminPrivacy" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "RegistrantPrivacy" => %{"shape" => "Boolean"}, "TechPrivacy" => %{"shape" => "Boolean"}}, "required" => ["DomainName"], "type" => "structure"}, "EnableDomainAutoRenewResponse" => %{"members" => %{}, "type" => "structure"}, "DisableDomainAutoRenewRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "UpdateDomainContactRequest" => %{"members" => %{"AdminContact" => %{"shape" => "ContactDetail"}, "DomainName" => %{"shape" => "DomainName"}, "RegistrantContact" => %{"shape" => "ContactDetail"}, "TechContact" => %{"shape" => "ContactDetail"}}, "required" => ["DomainName"], "type" => "structure"}, "TransferDomainResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "TransferDomainRequest" => %{"members" => %{"AdminContact" => %{"shape" => "ContactDetail"}, "AuthCode" => %{"shape" => "DomainAuthCode"}, "AutoRenew" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "DurationInYears" => %{"shape" => "DurationInYears"}, "IdnLangCode" => %{"shape" => "LangCode"}, "Nameservers" => %{"shape" => "NameserverList"}, "PrivacyProtectAdminContact" => %{"shape" => "Boolean"}, "PrivacyProtectRegistrantContact" => %{"shape" => "Boolean"}, "PrivacyProtectTechContact" => %{"shape" => "Boolean"}, "RegistrantContact" => %{"shape" => "ContactDetail"}, "TechContact" => %{"shape" => "ContactDetail"}}, "required" => ["DomainName", "DurationInYears", "AdminContact", "RegistrantContact", "TechContact"], "type" => "structure"}, "DisableDomainAutoRenewResponse" => %{"members" => %{}, "type" => "structure"}, "Nameserver" => %{"members" => %{"GlueIps" => %{"shape" => "GlueIpList"}, "Name" => %{"shape" => "HostName"}}, "required" => ["Name"], "type" => "structure"}, "OperationSummary" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}, "Status" => %{"shape" => "OperationStatus"}, "SubmittedDate" => %{"shape" => "Timestamp"}, "Type" => %{"shape" => "OperationType"}}, "required" => ["OperationId", "Status", "Type", "SubmittedDate"], "type" => "structure"}, "UpdateDomainNameserversResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "RetrieveDomainAuthCodeResponse" => %{"members" => %{"AuthCode" => %{"shape" => "DomainAuthCode"}}, "required" => ["AuthCode"], "type" => "structure"}, "NameserverList" => %{"member" => %{"shape" => "Nameserver"}, "type" => "list"}, "GetContactReachabilityStatusRequest" => %{"members" => %{"domainName" => %{"shape" => "DomainName"}}, "type" => "structure"}, "DNSSec" => %{"type" => "string"}, "RegistryDomainId" => %{"type" => "string"}, "DeleteTagsForDomainResponse" => %{"members" => %{}, "type" => "structure"}, "OperationSummaryList" => %{"member" => %{"shape" => "OperationSummary"}, "type" => "list"}, "DomainStatusList" => %{"member" => %{"shape" => "DomainStatus"}, "type" => "list"}, "RegisterDomainRequest" => %{"members" => %{"AdminContact" => %{"shape" => "ContactDetail"}, "AutoRenew" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "DurationInYears" => %{"shape" => "DurationInYears"}, "IdnLangCode" => %{"shape" => "LangCode"}, "PrivacyProtectAdminContact" => %{"shape" => "Boolean"}, "PrivacyProtectRegistrantContact" => %{"shape" => "Boolean"}, "PrivacyProtectTechContact" => %{"shape" => "Boolean"}, "RegistrantContact" => %{"shape" => "ContactDetail"}, "TechContact" => %{"shape" => "ContactDetail"}}, "required" => ["DomainName", "DurationInYears", "AdminContact", "RegistrantContact", "TechContact"], "type" => "structure"}, "ListDomainsResponse" => %{"members" => %{"Domains" => %{"shape" => "DomainSummaryList"}, "NextPageMarker" => %{"shape" => "PageMarker"}}, "required" => ["Domains"], "type" => "structure"}, "TagKey" => %{"type" => "string"}, "GlueIp" => %{"max" => 45, "type" => "string"}, "Price" => %{"type" => "double"}, "DomainAvailability" => %{"enum" => ["AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW"], "type" => "string"}, "ContactDetail" => %{"members" => %{"AddressLine1" => %{"shape" => "AddressLine"}, "AddressLine2" => %{"shape" => "AddressLine"}, "City" => %{"shape" => "City"}, "ContactType" => %{"shape" => "ContactType"}, "CountryCode" => %{"shape" => "CountryCode"}, "Email" => %{"shape" => "Email"}, "ExtraParams" => %{"shape" => "ExtraParamList"}, "Fax" => %{"shape" => "ContactNumber"}, "FirstName" => %{"shape" => "ContactName"}, "LastName" => %{"shape" => "ContactName"}, "OrganizationName" => %{"shape" => "ContactName"}, "PhoneNumber" => %{"shape" => "ContactNumber"}, "State" => %{"shape" => "State"}, "ZipCode" => %{"shape" => "ZipCode"}}, "sensitive" => true, "type" => "structure"}, "ViewBillingRequest" => %{"members" => %{"End" => %{"shape" => "Timestamp"}, "Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}, "Start" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "ReachabilityStatus" => %{"enum" => ["PENDING", "DONE", "EXPIRED"], "type" => "string"}, "DomainSummary" => %{"members" => %{"AutoRenew" => %{"shape" => "Boolean"}, "DomainName" => %{"shape" => "DomainName"}, "Expiry" => %{"shape" => "Timestamp"}, "TransferLock" => %{"shape" => "Boolean"}}, "required" => ["DomainName"], "type" => "structure"}, "DeleteTagsForDomainRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "TagsToDelete" => %{"shape" => "TagKeyList"}}, "required" => ["DomainName", "TagsToDelete"], "type" => "structure"}, "CurrentExpiryYear" => %{"type" => "integer"}, "RegisterDomainResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "PageMarker" => %{"max" => 4096, "type" => "string"}, "EnableDomainTransferLockResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "Integer" => %{"type" => "integer"}, "PageMaxItems" => %{"max" => 100, "type" => "integer"}, "GetDomainDetailResponse" => %{"members" => %{"AbuseContactEmail" => %{"shape" => "Email"}, "AbuseContactPhone" => %{"shape" => "ContactNumber"}, "AdminContact" => %{"shape" => "ContactDetail"}, "AdminPrivacy" => %{"shape" => "Boolean"}, "AutoRenew" => %{"shape" => "Boolean"}, "CreationDate" => %{"shape" => "Timestamp"}, "DnsSec" => %{"shape" => "DNSSec"}, "DomainName" => %{"shape" => "DomainName"}, "ExpirationDate" => %{"shape" => "Timestamp"}, "Nameservers" => %{"shape" => "NameserverList"}, "RegistrantContact" => %{"shape" => "ContactDetail"}, "RegistrantPrivacy" => %{"shape" => "Boolean"}, "RegistrarName" => %{"shape" => "RegistrarName"}, "RegistrarUrl" => %{"shape" => "RegistrarUrl"}, "RegistryDomainId" => %{"shape" => "RegistryDomainId"}, "Reseller" => %{"shape" => "Reseller"}, "StatusList" => %{"shape" => "DomainStatusList"}, "TechContact" => %{"shape" => "ContactDetail"}, "TechPrivacy" => %{"shape" => "Boolean"}, "UpdatedDate" => %{"shape" => "Timestamp"}, "WhoIsServer" => %{"shape" => "RegistrarWhoIsServer"}}, "required" => ["DomainName", "Nameservers", "AdminContact", "RegistrantContact", "TechContact"], "type" => "structure"}, "ViewBillingResponse" => %{"members" => %{"BillingRecords" => %{"shape" => "BillingRecords"}, "NextPageMarker" => %{"shape" => "PageMarker"}}, "type" => "structure"}, "DuplicateRequest" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "ListOperationsRequest" => %{"members" => %{"Marker" => %{"shape" => "PageMarker"}, "MaxItems" => %{"shape" => "PageMaxItems"}}, "type" => "structure"}, "ListOperationsResponse" => %{"members" => %{"NextPageMarker" => %{"shape" => "PageMarker"}, "Operations" => %{"shape" => "OperationSummaryList"}}, "required" => ["Operations"], "type" => "structure"}, "DomainStatus" => %{"type" => "string"}, "DomainLimitExceeded" => %{"exception" => true, "members" => %{"message" => %{"shape" => "ErrorMessage"}}, "type" => "structure"}, "DomainSuggestion" => %{"members" => %{"Availability" => %{"shape" => "String"}, "DomainName" => %{"shape" => "DomainName"}}, "type" => "structure"}, "CheckDomainAvailabilityRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}, "IdnLangCode" => %{"shape" => "LangCode"}}, "required" => ["DomainName"], "type" => "structure"}, "UpdateDomainContactPrivacyResponse" => %{"members" => %{"OperationId" => %{"shape" => "OperationId"}}, "required" => ["OperationId"], "type" => "structure"}, "DomainSuggestionsList" => %{"member" => %{"shape" => "DomainSuggestion"}, "type" => "list"}, "RetrieveDomainAuthCodeRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainName"}}, "required" => ["DomainName"], "type" => "structure"}, "State" => %{"max" => 255, "type" => "string"}}
  end
end