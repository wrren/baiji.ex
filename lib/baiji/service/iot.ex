defmodule Baiji.Iot do
  @moduledoc """
  AWS IoT

  AWS IoT provides secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud. You can discover your custom IoT-Data
  endpoint to communicate with, configure rules for data processing and
  integration with other services, organize resources associated with each
  thing (Thing Registry), configure logging, and create and manage policies
  and credentials to authenticate things.

  For more information about how AWS IoT works, see the [Developer
  Guide](http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).
  """

  @doc """
  Lists the certificates registered in your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates",
      input:            input,
      options:          options,
      action:           "ListCertificates",
      method:           :get,
      input_shape:      "ListCertificatesRequest",
      output_shape:     "ListCertificatesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the existing thing types.
  """
  def list_thing_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/thing-types",
      input:            input,
      options:          options,
      action:           "ListThingTypes",
      method:           :get,
      input_shape:      "ListThingTypesRequest",
      output_shape:     "ListThingTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists your policies.
  """
  def list_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies",
      input:            input,
      options:          options,
      action:           "ListPolicies",
      method:           :get,
      input_shape:      "ListPoliciesRequest",
      output_shape:     "ListPoliciesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}",
      input:            input,
      options:          options,
      action:           "DescribeThing",
      method:           :get,
      input_shape:      "DescribeThingRequest",
      output_shape:     "DescribeThingResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the principals associated with the specified thing.
  """
  def list_thing_principals(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/principals",
      input:            input,
      options:          options,
      action:           "ListThingPrincipals",
      method:           :get,
      input_shape:      "ListThingPrincipalsRequest",
      output_shape:     "ListThingPrincipalsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified thing type.
  """
  def describe_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/thing-types/{thingTypeName}",
      input:            input,
      options:          options,
      action:           "DescribeThingType",
      method:           :get,
      input_shape:      "DescribeThingTypeRequest",
      output_shape:     "DescribeThingTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a registered CA certificate.
  """
  def delete_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cacertificate/{caCertificateId}",
      input:            input,
      options:          options,
      action:           "DeleteCACertificate",
      method:           :delete,
      input_shape:      "DeleteCACertificateRequest",
      output_shape:     "DeleteCACertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/registrationcode",
      input:            input,
      options:          options,
      action:           "GetRegistrationCode",
      method:           :get,
      input_shape:      "GetRegistrationCodeRequest",
      output_shape:     "GetRegistrationCodeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.
  """
  def list_policy_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}/version",
      input:            input,
      options:          options,
      action:           "ListPolicyVersions",
      method:           :get,
      input_shape:      "ListPolicyVersionsRequest",
      output_shape:     "ListPolicyVersionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deprecates a thing type. You can not associate new things with deprecated
  thing type.
  """
  def deprecate_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/thing-types/{thingTypeName}/deprecate",
      input:            input,
      options:          options,
      action:           "DeprecateThingType",
      method:           :post,
      input_shape:      "DeprecateThingTypeRequest",
      output_shape:     "DeprecateThingTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified version of the specified policy. You cannot delete
  the default version of a policy using this API. To delete the default
  version of a policy, use `DeletePolicy`. To find out which version of a
  policy is marked as the default version, use ListPolicyVersions.
  """
  def delete_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}/version/{policyVersionId}",
      input:            input,
      options:          options,
      action:           "DeletePolicyVersion",
      method:           :delete,
      input_shape:      "DeletePolicyVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates/{certificateId}",
      input:            input,
      options:          options,
      action:           "DescribeCertificate",
      method:           :get,
      input_shape:      "DescribeCertificateRequest",
      output_shape:     "DescribeCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables the specified rule.
  """
  def enable_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}/enable",
      input:            input,
      options:          options,
      action:           "EnableTopicRule",
      method:           :post,
      input_shape:      "EnableTopicRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Replaces the specified rule. You must specify all parameters for the new
  rule. Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the
  rule.
  """
  def replace_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}",
      input:            input,
      options:          options,
      action:           "ReplaceTopicRule",
      method:           :patch,
      input_shape:      "ReplaceTopicRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the status of the specified certificate. This operation is
  idempotent.

  Moving a certificate from the ACTIVE state (including REVOKED) will not
  disconnect currently connected devices, but these devices will be unable to
  reconnect.

  The ACTIVE state is required to authenticate devices connecting to AWS IoT
  using a certificate.
  """
  def update_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates/{certificateId}",
      input:            input,
      options:          options,
      action:           "UpdateCertificate",
      method:           :put,
      input_shape:      "UpdateCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version. This action affects all certificates to which the
  policy is attached. To list the principals the policy is attached to, use
  the ListPrincipalPolicy API.
  """
  def set_default_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}/version/{policyVersionId}",
      input:            input,
      options:          options,
      action:           "SetDefaultPolicyVersion",
      method:           :patch,
      input_shape:      "SetDefaultPolicyVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a CA certificate with AWS IoT. This CA certificate can then be
  used to sign device certificates, which can be then registered with AWS
  IoT. You can register up to 10 CA certificates per AWS account that have
  the same subject field. This enables you to have up to 10 certificate
  authorities sign your device certificates. If you have more than one CA
  certificate registered, make sure you pass the CA certificate when you
  register your device certificates with the RegisterCertificate API.
  """
  def register_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cacertificate",
      input:            input,
      options:          options,
      action:           "RegisterCACertificate",
      method:           :post,
      input_shape:      "RegisterCACertificateRequest",
      output_shape:     "RegisterCACertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a rule. Creating rules is an administrator-level action. Any user
  who has permission to create rules will be able to access data processed by
  the rule.
  """
  def create_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}",
      input:            input,
      options:          options,
      action:           "CreateTopicRule",
      method:           :post,
      input_shape:      "CreateTopicRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified policy from the specified certificate.
  """
  def detach_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/principal-policies/{policyName}",
      input:            input,
      options:          options,
      action:           "DetachPrincipalPolicy",
      method:           :delete,
      input_shape:      "DetachPrincipalPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a thing record in the thing registry.
  """
  def create_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}",
      input:            input,
      options:          options,
      action:           "CreateThing",
      method:           :post,
      input_shape:      "CreateThingRequest",
      output_shape:     "CreateThingResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes a registered CA certificate.
  """
  def describe_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cacertificate/{caCertificateId}",
      input:            input,
      options:          options,
      action:           "DescribeCACertificate",
      method:           :get,
      input_shape:      "DescribeCACertificateRequest",
      output_shape:     "DescribeCACertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified thing.
  """
  def delete_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}",
      input:            input,
      options:          options,
      action:           "DeleteThing",
      method:           :delete,
      input_shape:      "DeleteThingRequest",
      output_shape:     "DeleteThingResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables the specified rule.
  """
  def disable_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}/disable",
      input:            input,
      options:          options,
      action:           "DisableTopicRule",
      method:           :post,
      input_shape:      "DisableTopicRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an AWS IoT policy.

  The created policy is the default version for the policy. This operation
  creates a policy version with a version identifier of **1** and sets **1**
  as the policy's default version.
  """
  def create_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}",
      input:            input,
      options:          options,
      action:           "CreatePolicy",
      method:           :post,
      input_shape:      "CreatePolicyRequest",
      output_shape:     "CreatePolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_c_a_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cacertificates",
      input:            input,
      options:          options,
      action:           "ListCACertificates",
      method:           :get,
      input_shape:      "ListCACertificatesRequest",
      output_shape:     "ListCACertificatesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the principals associated with the specified policy.
  """
  def list_policy_principals(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policy-principals",
      input:            input,
      options:          options,
      action:           "ListPolicyPrincipals",
      method:           :get,
      input_shape:      "ListPolicyPrincipalsRequest",
      output_shape:     "ListPolicyPrincipalsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules",
      input:            input,
      options:          options,
      action:           "ListTopicRules",
      method:           :get,
      input_shape:      "ListTopicRulesRequest",
      output_shape:     "ListTopicRulesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}/version/{policyVersionId}",
      input:            input,
      options:          options,
      action:           "GetPolicyVersion",
      method:           :get,
      input_shape:      "GetPolicyVersionRequest",
      output_shape:     "GetPolicyVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/registrationcode",
      input:            input,
      options:          options,
      action:           "DeleteRegistrationCode",
      method:           :delete,
      input_shape:      "DeleteRegistrationCodeRequest",
      output_shape:     "DeleteRegistrationCodeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists certificates that are being transfered but not yet accepted.
  """
  def list_outgoing_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates-out-going",
      input:            input,
      options:          options,
      action:           "ListOutgoingCertificates",
      method:           :get,
      input_shape:      "ListOutgoingCertificatesRequest",
      output_shape:     "ListOutgoingCertificatesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy attached to it or if its
  status is set to ACTIVE. To delete a certificate, first use the
  `DetachPrincipalPolicy` API to detach all policies. Next, use the
  `UpdateCertificate` API to set the certificate to the INACTIVE status.
  """
  def delete_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates/{certificateId}",
      input:            input,
      options:          options,
      action:           "DeleteCertificate",
      method:           :delete,
      input_shape:      "DeleteCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the things associated with the specified principal.
  """
  def list_principal_things(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/principals/things",
      input:            input,
      options:          options,
      action:           "ListPrincipalThings",
      method:           :get,
      input_shape:      "ListPrincipalThingsRequest",
      output_shape:     "ListPrincipalThingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates a registered CA certificate.
  """
  def update_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cacertificate/{caCertificateId}",
      input:            input,
      options:          options,
      action:           "UpdateCACertificate",
      method:           :put,
      input_shape:      "UpdateCACertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified rule.
  """
  def delete_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}",
      input:            input,
      options:          options,
      action:           "DeleteTopicRule",
      method:           :delete,
      input_shape:      "DeleteTopicRuleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the logging options.
  """
  def get_logging_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/loggingOptions",
      input:            input,
      options:          options,
      action:           "GetLoggingOptions",
      method:           :get,
      input_shape:      "GetLoggingOptionsRequest",
      output_shape:     "GetLoggingOptionsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a device certificate with AWS IoT. If you have more than one CA
  certificate that has the same subject field, you must specify the CA
  certificate that was used to sign the device certificate being registered.
  """
  def register_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificate/register",
      input:            input,
      options:          options,
      action:           "RegisterCertificate",
      method:           :post,
      input_shape:      "RegisterCertificateRequest",
      output_shape:     "RegisterCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or
  other credential).
  """
  def attach_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/principal-policies/{policyName}",
      input:            input,
      options:          options,
      action:           "AttachPrincipalPolicy",
      method:           :put,
      input_shape:      "AttachPrincipalPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this operation to cancel
  a transfer. (Transfer destinations can use `RejectCertificateTransfer`
  instead.) After transfer, AWS IoT returns the certificate to the source
  account in the INACTIVE state. After the destination account has accepted
  the transfer, the transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate
  changes from PENDING_TRANSFER to INACTIVE.
  """
  def cancel_certificate_transfer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/cancel-certificate-transfer/{certificateId}",
      input:            input,
      options:          options,
      action:           "CancelCertificateTransfer",
      method:           :patch,
      input_shape:      "CancelCertificateTransferRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Detaches the specified principal from the specified thing.
  """
  def detach_thing_principal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/principals",
      input:            input,
      options:          options,
      action:           "DetachThingPrincipal",
      method:           :delete,
      input_shape:      "DetachThingPrincipalRequest",
      output_shape:     "DetachThingPrincipalResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the logging options.
  """
  def set_logging_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/loggingOptions",
      input:            input,
      options:          options,
      action:           "SetLoggingOptions",
      method:           :post,
      input_shape:      "SetLoggingOptionsRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Transfers the specified certificate to the specified AWS account.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It is up to
  the caller to notify the transfer target.

  The certificate being transferred must not be in the ACTIVE state. You can
  use the UpdateCertificate API to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  DetachPrincipalPolicy API to detach them.
  """
  def transfer_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/transfer-certificate/{certificateId}",
      input:            input,
      options:          options,
      action:           "TransferCertificate",
      method:           :patch,
      input_shape:      "TransferCertificateRequest",
      output_shape:     "TransferCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified thing type . You cannot delete a thing type if it has
  things associated with it. To delete a thing type, first mark it as
  deprecated by calling `DeprecateThingType`, then remove any associated
  things by calling `UpdateThing` to change the thing type on any associated
  thing, and finally use `DeleteThingType` to delete the thing type.
  """
  def delete_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/thing-types/{thingTypeName}",
      input:            input,
      options:          options,
      action:           "DeleteThingType",
      method:           :delete,
      input_shape:      "DeleteThingTypeRequest",
      output_shape:     "DeleteThingTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Accepts a pending certificate transfer. The default state of the
  certificate is INACTIVE.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.
  """
  def accept_certificate_transfer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/accept-certificate-transfer/{certificateId}",
      input:            input,
      options:          options,
      action:           "AcceptCertificateTransfer",
      method:           :patch,
      input_shape:      "AcceptCertificateTransferRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new thing type.
  """
  def create_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/thing-types/{thingTypeName}",
      input:            input,
      options:          options,
      action:           "CreateThingType",
      method:           :post,
      input_shape:      "CreateThingTypeRequest",
      output_shape:     "CreateThingTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the data for a thing.
  """
  def update_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}",
      input:            input,
      options:          options,
      action:           "UpdateThing",
      method:           :patch,
      input_shape:      "UpdateThingRequest",
      output_shape:     "UpdateThingResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached
  to any certificate.

  To delete a policy, use the DeletePolicyVersion API to delete all
  non-default versions of the policy; use the DetachPrincipalPolicy API to
  detach the policy from any certificate; and then use the DeletePolicy API
  to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted
  with it.
  """
  def delete_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}",
      input:            input,
      options:          options,
      action:           "DeletePolicy",
      method:           :delete,
      input_shape:      "DeletePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_c_a(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates-by-ca/{caCertificateId}",
      input:            input,
      options:          options,
      action:           "ListCertificatesByCA",
      method:           :get,
      input_shape:      "ListCertificatesByCARequest",
      output_shape:     "ListCertificatesByCAResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}",
      input:            input,
      options:          options,
      action:           "GetPolicy",
      method:           :get,
      input_shape:      "GetPolicyRequest",
      output_shape:     "GetPolicyResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Rejects a pending certificate transfer. After AWS IoT rejects a certificate
  transfer, the certificate status changes from **PENDING_TRANSFER** to
  **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.

  This operation can only be called by the transfer destination. After it is
  called, the certificate will be returned to the source's account in the
  INACTIVE state.
  """
  def reject_certificate_transfer(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/reject-certificate-transfer/{certificateId}",
      input:            input,
      options:          options,
      action:           "RejectCertificateTransfer",
      method:           :patch,
      input_shape:      "RejectCertificateTransferRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified principal to the specified thing.
  """
  def attach_thing_principal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things/{thingName}/principals",
      input:            input,
      options:          options,
      action:           "AttachThingPrincipal",
      method:           :put,
      input_shape:      "AttachThingPrincipalRequest",
      output_shape:     "AttachThingPrincipalResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of the specified AWS IoT policy. To update a policy,
  create a new policy version. A managed policy can have up to five versions.
  If the policy has five versions, you must use `DeletePolicyVersion` to
  delete an existing version before you create a new one.

  Optionally, you can set the new version as the policy's default version.
  The default version is the operative version (that is, the version that is
  in effect for the certificates to which the policy is attached).
  """
  def create_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/policies/{policyName}/version",
      input:            input,
      options:          options,
      action:           "CreatePolicyVersion",
      method:           :post,
      input_shape:      "CreatePolicyVersionRequest",
      output_shape:     "CreatePolicyVersionResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the policies attached to the specified principal. If you use an
  Cognito identity, the ID must be in [AmazonCognito Identity
  format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).
  """
  def list_principal_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/principal-policies",
      input:            input,
      options:          options,
      action:           "ListPrincipalPolicies",
      method:           :get,
      input_shape:      "ListPrincipalPoliciesRequest",
      output_shape:     "ListPrincipalPoliciesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/endpoint",
      input:            input,
      options:          options,
      action:           "DescribeEndpoint",
      method:           :get,
      input_shape:      "DescribeEndpointRequest",
      output_shape:     "DescribeEndpointResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the
  issued public key.

  **Note** This is the only time AWS IoT issues the private key for this
  certificate, so it is important to keep it in a secure location.
  """
  def create_keys_and_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/keys-and-certificate",
      input:            input,
      options:          options,
      action:           "CreateKeysAndCertificate",
      method:           :post,
      input_shape:      "CreateKeysAndCertificateRequest",
      output_shape:     "CreateKeysAndCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about the specified rule.
  """
  def get_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/rules/{ruleName}",
      input:            input,
      options:          options,
      action:           "GetTopicRule",
      method:           :get,
      input_shape:      "GetTopicRuleRequest",
      output_shape:     "GetTopicRuleResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists your things. Use the **attributeName** and **attributeValue**
  parameters to filter your things. For example, calling `ListThings` with
  attributeName=Color and attributeValue=Red retrieves all things in the
  registry that contain an attribute **Color** with the value **Red**.
  """
  def list_things(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/things",
      input:            input,
      options:          options,
      action:           "ListThings",
      method:           :get,
      input_shape:      "ListThingsRequest",
      output_shape:     "ListThingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an X.509 certificate using the specified certificate signing
  request.

  **Note:** The CSR must include a public key that is either an RSA key with
  a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384
  curves.

  **Note:** Reusing the same certificate signing request (CSR) results in a
  distinct certificate.

  You can create multiple certificates in a batch by creating a directory,
  copying multiple .csr files into that directory, and then specifying that
  directory on the command line. The following commands show how to create a
  batch of certificates given a batch of CSRs.

  Assuming a set of CSRs are located inside of the directory
  my-csr-directory:

  On Linux and OS X, the command is:

  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  This command lists all of the CSRs in my-csr-directory and pipes each CSR
  file name to the aws iot create-certificate-from-csr AWS CLI command to
  create a certificate for the corresponding CSR.

  The aws iot create-certificate-from-csr part of the command can also be run
  in parallel to speed up the certificate creation process:

  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
  create-certificate-from-csr --certificate-signing-request
  file://my-csr-directory/{}

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  On a Windows command prompt, the command to create certificates for all
  CSRs in my-csr-directory is:

  &gt; forfiles /p my-csr-directory /c "cmd /c aws iot
  create-certificate-from-csr --certificate-signing-request file://@path"
  """
  def create_certificate_from_csr(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/certificates",
      input:            input,
      options:          options,
      action:           "CreateCertificateFromCsr",
      method:           :post,
      input_shape:      "CreateCertificateFromCsrRequest",
      output_shape:     "CreateCertificateFromCsrResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "iot",
      endpoint_prefix:  "iot",
      type:             :rest_json,
      version:          "2015-05-28",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"InternalFailureException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "PayloadField" => %{"type" => "string"}, "ThingTypeMetadata" => %{"members" => %{"creationDate" => %{"shape" => "CreationDate"}, "deprecated" => %{"shape" => "Boolean"}, "deprecationDate" => %{"shape" => "DeprecationDate"}}, "type" => "structure"}, "KeyPair" => %{"members" => %{"PrivateKey" => %{"shape" => "PrivateKey"}, "PublicKey" => %{"shape" => "PublicKey"}}, "type" => "structure"}, "RangeKeyValue" => %{"type" => "string"}, "PageSize" => %{"max" => 250, "min" => 1, "type" => "integer"}, "RepublishAction" => %{"members" => %{"roleArn" => %{"shape" => "AwsArn"}, "topic" => %{"shape" => "TopicPattern"}}, "required" => ["roleArn", "topic"], "type" => "structure"}, "PrivateKey" => %{"min" => 1, "sensitive" => true, "type" => "string"}, "RemoveThingType" => %{"type" => "boolean"}, "PolicyVersions" => %{"member" => %{"shape" => "PolicyVersion"}, "type" => "list"}, "ReplaceTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}, "topicRulePayload" => %{"shape" => "TopicRulePayload"}}, "payload" => "topicRulePayload", "required" => ["ruleName", "topicRulePayload"], "type" => "structure"}, "CreatePolicyResponse" => %{"members" => %{"policyArn" => %{"shape" => "PolicyArn"}, "policyDocument" => %{"shape" => "PolicyDocument"}, "policyName" => %{"shape" => "PolicyName"}, "policyVersionId" => %{"shape" => "PolicyVersionId"}}, "type" => "structure"}, "CreateThingTypeResponse" => %{"members" => %{"thingTypeArn" => %{"shape" => "ThingTypeArn"}, "thingTypeName" => %{"shape" => "ThingTypeName"}}, "type" => "structure"}, "FirehoseSeparator" => %{"pattern" => "([\\n\\t])|(\\r\\n)|(,)", "type" => "string"}, "ThingNameList" => %{"member" => %{"shape" => "ThingName"}, "type" => "list"}, "ClientId" => %{"type" => "string"}, "UpdateCertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}, "newStatus" => %{"location" => "querystring", "locationName" => "newStatus", "shape" => "CertificateStatus"}}, "required" => ["certificateId", "newStatus"], "type" => "structure"}, "SnsAction" => %{"members" => %{"messageFormat" => %{"shape" => "MessageFormat"}, "roleArn" => %{"shape" => "AwsArn"}, "targetArn" => %{"shape" => "AwsArn"}}, "required" => ["targetArn", "roleArn"], "type" => "structure"}, "DisableTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}}, "required" => ["ruleName"], "type" => "structure"}, "ElasticsearchAction" => %{"members" => %{"endpoint" => %{"shape" => "ElasticsearchEndpoint"}, "id" => %{"shape" => "ElasticsearchId"}, "index" => %{"shape" => "ElasticsearchIndex"}, "roleArn" => %{"shape" => "AwsArn"}, "type" => %{"shape" => "ElasticsearchType"}}, "required" => ["roleArn", "endpoint", "index", "type", "id"], "type" => "structure"}, "DescribeThingResponse" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "defaultClientId" => %{"shape" => "ClientId"}, "thingName" => %{"shape" => "ThingName"}, "thingTypeName" => %{"shape" => "ThingTypeName"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "CertificateConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ListPolicyVersionsRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}}, "required" => ["policyName"], "type" => "structure"}, "DeliveryStreamName" => %{"type" => "string"}, "ThingTypeProperties" => %{"members" => %{"searchableAttributes" => %{"shape" => "SearchableAttributes"}, "thingTypeDescription" => %{"shape" => "ThingTypeDescription"}}, "type" => "structure"}, "ListCertificatesByCAResponse" => %{"members" => %{"certificates" => %{"shape" => "Certificates"}, "nextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "Topic" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "RegistrationCode" => %{"max" => 64, "min" => 64, "pattern" => "(0x)?[a-fA-F0-9]+", "type" => "string"}, "ListThingPrincipalsRequest" => %{"members" => %{"thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName"], "type" => "structure"}, "StreamName" => %{"type" => "string"}, "CACertificates" => %{"member" => %{"shape" => "CACertificate"}, "type" => "list"}, "CreationDate" => %{"type" => "timestamp"}, "GetTopicRuleResponse" => %{"members" => %{"rule" => %{"shape" => "TopicRule"}, "ruleArn" => %{"shape" => "RuleArn"}}, "type" => "structure"}, "ListPoliciesRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}}, "type" => "structure"}, "AttributeName" => %{"max" => 128, "pattern" => "[a-zA-Z0-9_.,@/:#-]+", "type" => "string"}, "AscendingOrder" => %{"type" => "boolean"}, "TopicRuleListItem" => %{"members" => %{"createdAt" => %{"shape" => "CreatedAtDate"}, "ruleArn" => %{"shape" => "RuleArn"}, "ruleDisabled" => %{"shape" => "IsDisabled"}, "ruleName" => %{"shape" => "RuleName"}, "topicPattern" => %{"shape" => "TopicPattern"}}, "type" => "structure"}, "DescribeCertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}}, "required" => ["certificateId"], "type" => "structure"}, "PutItemInput" => %{"members" => %{"tableName" => %{"shape" => "TableName"}}, "required" => ["tableName"], "type" => "structure"}, "ListPolicyVersionsResponse" => %{"members" => %{"policyVersions" => %{"shape" => "PolicyVersions"}}, "type" => "structure"}, "AwsIotSqlVersion" => %{"type" => "string"}, "GetRegistrationCodeRequest" => %{"members" => %{}, "type" => "structure"}, "CreateCertificateFromCsrRequest" => %{"members" => %{"certificateSigningRequest" => %{"shape" => "CertificateSigningRequest"}, "setAsActive" => %{"location" => "querystring", "locationName" => "setAsActive", "shape" => "SetAsActive"}}, "required" => ["certificateSigningRequest"], "type" => "structure"}, "SetAsActive" => %{"type" => "boolean"}, "GetLoggingOptionsResponse" => %{"members" => %{"logLevel" => %{"shape" => "LogLevel"}, "roleArn" => %{"shape" => "AwsArn"}}, "type" => "structure"}, "ListPrincipalPoliciesResponse" => %{"members" => %{"nextMarker" => %{"shape" => "Marker"}, "policies" => %{"shape" => "Policies"}}, "type" => "structure"}, "Principals" => %{"member" => %{"shape" => "PrincipalArn"}, "type" => "list"}, "InternalException" => %{"error" => %{"httpStatusCode" => 500}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "SetAsDefault" => %{"type" => "boolean"}, "CACertificateDescription" => %{"members" => %{"autoRegistrationStatus" => %{"shape" => "AutoRegistrationStatus"}, "certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "certificatePem" => %{"shape" => "CertificatePem"}, "creationDate" => %{"shape" => "DateType"}, "ownedBy" => %{"shape" => "AwsAccountId"}, "status" => %{"shape" => "CACertificateStatus"}}, "type" => "structure"}, "UnauthorizedException" => %{"error" => %{"httpStatusCode" => 401}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteCACertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "caCertificateId", "shape" => "CertificateId"}}, "required" => ["certificateId"], "type" => "structure"}, "CreateTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}, "topicRulePayload" => %{"shape" => "TopicRulePayload"}}, "payload" => "topicRulePayload", "required" => ["ruleName", "topicRulePayload"], "type" => "structure"}, "SqlParseException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ListTopicRulesRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "MaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "ruleDisabled" => %{"location" => "querystring", "locationName" => "ruleDisabled", "shape" => "IsDisabled"}, "topic" => %{"location" => "querystring", "locationName" => "topic", "shape" => "Topic"}}, "type" => "structure"}, "DeleteCACertificateResponse" => %{"members" => %{}, "type" => "structure"}, "DetachThingPrincipalResponse" => %{"members" => %{}, "type" => "structure"}, "RuleArn" => %{"type" => "string"}, "AttachPrincipalPolicyRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "principal" => %{"location" => "header", "locationName" => "x-amzn-iot-principal", "shape" => "Principal"}}, "required" => ["policyName", "principal"], "type" => "structure"}, "TableName" => %{"type" => "string"}, "SetLoggingOptionsRequest" => %{"members" => %{"loggingOptionsPayload" => %{"shape" => "LoggingOptionsPayload"}}, "payload" => "loggingOptionsPayload", "required" => ["loggingOptionsPayload"], "type" => "structure"}, "KinesisAction" => %{"members" => %{"partitionKey" => %{"shape" => "PartitionKey"}, "roleArn" => %{"shape" => "AwsArn"}, "streamName" => %{"shape" => "StreamName"}}, "required" => ["roleArn", "streamName"], "type" => "structure"}, "ListCACertificatesResponse" => %{"members" => %{"certificates" => %{"shape" => "CACertificates"}, "nextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "ThingAttribute" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "thingName" => %{"shape" => "ThingName"}, "thingTypeName" => %{"shape" => "ThingTypeName"}, "version" => %{"shape" => "Version"}}, "type" => "structure"}, "MetricTimestamp" => %{"type" => "string"}, "EnableTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}}, "required" => ["ruleName"], "type" => "structure"}, "ThingTypeList" => %{"member" => %{"shape" => "ThingTypeDefinition"}, "type" => "list"}, "ServiceUnavailableException" => %{"error" => %{"httpStatusCode" => 503}, "exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Key" => %{"type" => "string"}, "AllowAutoRegistration" => %{"type" => "boolean"}, "RegisterCACertificateResponse" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}}, "type" => "structure"}, "CreatePolicyVersionRequest" => %{"members" => %{"policyDocument" => %{"shape" => "PolicyDocument"}, "policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "setAsDefault" => %{"location" => "querystring", "locationName" => "setAsDefault", "shape" => "SetAsDefault"}}, "required" => ["policyName", "policyDocument"], "type" => "structure"}, "ListPolicyPrincipalsRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}, "policyName" => %{"location" => "header", "locationName" => "x-amzn-iot-policy", "shape" => "PolicyName"}}, "required" => ["policyName"], "type" => "structure"}, "CancelCertificateTransferRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}}, "required" => ["certificateId"], "type" => "structure"}, "PolicyVersion" => %{"members" => %{"createDate" => %{"shape" => "DateType"}, "isDefaultVersion" => %{"shape" => "IsDefaultVersion"}, "versionId" => %{"shape" => "PolicyVersionId"}}, "type" => "structure"}, "CertificateArn" => %{"type" => "string"}, "DeleteThingTypeResponse" => %{"members" => %{}, "type" => "structure"}, "Certificates" => %{"member" => %{"shape" => "Certificate"}, "type" => "list"}, "ThingTypeName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9:_-]+", "type" => "string"}, "DeprecateThingTypeResponse" => %{"members" => %{}, "type" => "structure"}, "ThingTypeArn" => %{"type" => "string"}, "ListPolicyPrincipalsResponse" => %{"members" => %{"nextMarker" => %{"shape" => "Marker"}, "principals" => %{"shape" => "Principals"}}, "type" => "structure"}, "OutgoingCertificate" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "creationDate" => %{"shape" => "DateType"}, "transferDate" => %{"shape" => "DateType"}, "transferMessage" => %{"shape" => "Message"}, "transferredTo" => %{"shape" => "AwsAccountId"}}, "type" => "structure"}, "ThingArn" => %{"type" => "string"}, "Description" => %{"type" => "string"}, "TransferAlreadyCompletedException" => %{"error" => %{"httpStatusCode" => 410}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeprecationDate" => %{"type" => "timestamp"}, "DeleteRegistrationCodeRequest" => %{"members" => %{}, "type" => "structure"}, "resourceArn" => %{"type" => "string"}, "Version" => %{"type" => "long"}, "CACertificateStatus" => %{"enum" => ["ACTIVE", "INACTIVE"], "type" => "string"}, "DeleteThingTypeRequest" => %{"members" => %{"thingTypeName" => %{"location" => "uri", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}}, "required" => ["thingTypeName"], "type" => "structure"}, "Action" => %{"members" => %{"cloudwatchAlarm" => %{"shape" => "CloudwatchAlarmAction"}, "cloudwatchMetric" => %{"shape" => "CloudwatchMetricAction"}, "dynamoDB" => %{"shape" => "DynamoDBAction"}, "dynamoDBv2" => %{"shape" => "DynamoDBv2Action"}, "elasticsearch" => %{"shape" => "ElasticsearchAction"}, "firehose" => %{"shape" => "FirehoseAction"}, "kinesis" => %{"shape" => "KinesisAction"}, "lambda" => %{"shape" => "LambdaAction"}, "republish" => %{"shape" => "RepublishAction"}, "s3" => %{"shape" => "S3Action"}, "salesforce" => %{"shape" => "SalesforceAction"}, "sns" => %{"shape" => "SnsAction"}, "sqs" => %{"shape" => "SqsAction"}}, "type" => "structure"}, "ListCertificatesByCARequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "caCertificateId" => %{"location" => "uri", "locationName" => "caCertificateId", "shape" => "CertificateId"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}}, "required" => ["caCertificateId"], "type" => "structure"}, "SqsAction" => %{"members" => %{"queueUrl" => %{"shape" => "QueueUrl"}, "roleArn" => %{"shape" => "AwsArn"}, "useBase64" => %{"shape" => "UseBase64"}}, "required" => ["roleArn", "queueUrl"], "type" => "structure"}, "DeleteTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}}, "required" => ["ruleName"], "type" => "structure"}, "ListPrincipalThingsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "things" => %{"shape" => "ThingNameList"}}, "type" => "structure"}, "Message" => %{"max" => 128, "type" => "string"}, "errorMessage" => %{"type" => "string"}, "ThingTypeDefinition" => %{"members" => %{"thingTypeMetadata" => %{"shape" => "ThingTypeMetadata"}, "thingTypeName" => %{"shape" => "ThingTypeName"}, "thingTypeProperties" => %{"shape" => "ThingTypeProperties"}}, "type" => "structure"}, "UpdateCACertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "caCertificateId", "shape" => "CertificateId"}, "newAutoRegistrationStatus" => %{"location" => "querystring", "locationName" => "newAutoRegistrationStatus", "shape" => "AutoRegistrationStatus"}, "newStatus" => %{"location" => "querystring", "locationName" => "newStatus", "shape" => "CACertificateStatus"}}, "required" => ["certificateId"], "type" => "structure"}, "GetTopicRuleRequest" => %{"members" => %{"ruleName" => %{"location" => "uri", "locationName" => "ruleName", "shape" => "RuleName"}}, "required" => ["ruleName"], "type" => "structure"}, "DescribeThingTypeRequest" => %{"members" => %{"thingTypeName" => %{"location" => "uri", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}}, "required" => ["thingTypeName"], "type" => "structure"}, "CreateThingTypeRequest" => %{"members" => %{"thingTypeName" => %{"location" => "uri", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}, "thingTypeProperties" => %{"shape" => "ThingTypeProperties"}}, "required" => ["thingTypeName"], "type" => "structure"}, "CreateThingRequest" => %{"members" => %{"attributePayload" => %{"shape" => "AttributePayload"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}, "thingTypeName" => %{"shape" => "ThingTypeName"}}, "required" => ["thingName"], "type" => "structure"}, "FirehoseAction" => %{"members" => %{"deliveryStreamName" => %{"shape" => "DeliveryStreamName"}, "roleArn" => %{"shape" => "AwsArn"}, "separator" => %{"shape" => "FirehoseSeparator"}}, "required" => ["roleArn", "deliveryStreamName"], "type" => "structure"}, "DescribeEndpointResponse" => %{"members" => %{"endpointAddress" => %{"shape" => "EndpointAddress"}}, "type" => "structure"}, "MetricUnit" => %{"type" => "string"}, "StateReason" => %{"type" => "string"}, "DescribeCACertificateResponse" => %{"members" => %{"certificateDescription" => %{"shape" => "CACertificateDescription"}}, "type" => "structure"}, "AttributePayload" => %{"members" => %{"attributes" => %{"shape" => "Attributes"}, "merge" => %{"shape" => "Flag"}}, "type" => "structure"}, "CreateCertificateFromCsrResponse" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "certificatePem" => %{"shape" => "CertificatePem"}}, "type" => "structure"}, "ListTopicRulesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "rules" => %{"shape" => "TopicRuleList"}}, "type" => "structure"}, "OutgoingCertificates" => %{"member" => %{"shape" => "OutgoingCertificate"}, "type" => "list"}, "SearchableAttributes" => %{"member" => %{"shape" => "AttributeName"}, "type" => "list"}, "RejectCertificateTransferRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}, "rejectReason" => %{"shape" => "Message"}}, "required" => ["certificateId"], "type" => "structure"}, "CACertificate" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "creationDate" => %{"shape" => "DateType"}, "status" => %{"shape" => "CACertificateStatus"}}, "type" => "structure"}, "TransferConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "CertificateId" => %{"max" => 64, "min" => 64, "pattern" => "(0x)?[a-fA-F0-9]+", "type" => "string"}, "TopicPattern" => %{"type" => "string"}, "QueueUrl" => %{"type" => "string"}, "ListThingsResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "things" => %{"shape" => "ThingAttributeList"}}, "type" => "structure"}, "AutoRegistrationStatus" => %{"enum" => ["ENABLE", "DISABLE"], "type" => "string"}, "CertificateValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Policies" => %{"member" => %{"shape" => "Policy"}, "type" => "list"}, "MetricNamespace" => %{"type" => "string"}, "MaxResults" => %{"max" => 10000, "min" => 1, "type" => "integer"}, "MetricValue" => %{"type" => "string"}, "StateValue" => %{"type" => "string"}, "AttachThingPrincipalRequest" => %{"members" => %{"principal" => %{"location" => "header", "locationName" => "x-amzn-principal", "shape" => "Principal"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName", "principal"], "type" => "structure"}, "ListOutgoingCertificatesRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}}, "type" => "structure"}, "RegistryMaxResults" => %{"max" => 250, "min" => 1, "type" => "integer"}, "MetricName" => %{"type" => "string"}, "DescribeCACertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "caCertificateId", "shape" => "CertificateId"}}, "required" => ["certificateId"], "type" => "structure"}, "ListPoliciesResponse" => %{"members" => %{"nextMarker" => %{"shape" => "Marker"}, "policies" => %{"shape" => "Policies"}}, "type" => "structure"}, "RegisterCACertificateRequest" => %{"members" => %{"allowAutoRegistration" => %{"location" => "querystring", "locationName" => "allowAutoRegistration", "shape" => "AllowAutoRegistration"}, "caCertificate" => %{"shape" => "CertificatePem"}, "setAsActive" => %{"location" => "querystring", "locationName" => "setAsActive", "shape" => "SetAsActive"}, "verificationCertificate" => %{"shape" => "CertificatePem"}}, "required" => ["caCertificate", "verificationCertificate"], "type" => "structure"}, "CertificateStatus" => %{"enum" => ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"], "type" => "string"}, "DynamoOperation" => %{"type" => "string"}, "SalesforceAction" => %{"members" => %{"token" => %{"shape" => "SalesforceToken"}, "url" => %{"shape" => "SalesforceEndpoint"}}, "required" => ["token", "url"], "type" => "structure"}, "CreateKeysAndCertificateResponse" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "certificatePem" => %{"shape" => "CertificatePem"}, "keyPair" => %{"shape" => "KeyPair"}}, "type" => "structure"}, "RangeKeyField" => %{"type" => "string"}, "LogLevel" => %{"enum" => ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], "type" => "string"}, "ThrottlingException" => %{"error" => %{"httpStatusCode" => 429}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Policy" => %{"members" => %{"policyArn" => %{"shape" => "PolicyArn"}, "policyName" => %{"shape" => "PolicyName"}}, "type" => "structure"}, "DescribeEndpointRequest" => %{"members" => %{}, "type" => "structure"}, "GetPolicyResponse" => %{"members" => %{"defaultVersionId" => %{"shape" => "PolicyVersionId"}, "policyArn" => %{"shape" => "PolicyArn"}, "policyDocument" => %{"shape" => "PolicyDocument"}, "policyName" => %{"shape" => "PolicyName"}}, "type" => "structure"}, "FunctionArn" => %{"type" => "string"}, "DynamoDBAction" => %{"members" => %{"hashKeyField" => %{"shape" => "HashKeyField"}, "hashKeyType" => %{"shape" => "DynamoKeyType"}, "hashKeyValue" => %{"shape" => "HashKeyValue"}, "operation" => %{"shape" => "DynamoOperation"}, "payloadField" => %{"shape" => "PayloadField"}, "rangeKeyField" => %{"shape" => "RangeKeyField"}, "rangeKeyType" => %{"shape" => "DynamoKeyType"}, "rangeKeyValue" => %{"shape" => "RangeKeyValue"}, "roleArn" => %{"shape" => "AwsArn"}, "tableName" => %{"shape" => "TableName"}}, "required" => ["tableName", "roleArn", "hashKeyField", "hashKeyValue"], "type" => "structure"}, "ListPrincipalThingsRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "RegistryMaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "principal" => %{"location" => "header", "locationName" => "x-amzn-principal", "shape" => "Principal"}}, "required" => ["principal"], "type" => "structure"}, "CertificatePem" => %{"max" => 65536, "min" => 1, "type" => "string"}, "DeleteConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeprecateThingTypeRequest" => %{"members" => %{"thingTypeName" => %{"location" => "uri", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}, "undoDeprecate" => %{"shape" => "UndoDeprecate"}}, "required" => ["thingTypeName"], "type" => "structure"}, "ActionList" => %{"max" => 10, "member" => %{"shape" => "Action"}, "min" => 0, "type" => "list"}, "LimitExceededException" => %{"error" => %{"httpStatusCode" => 410}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteThingRequest" => %{"members" => %{"expectedVersion" => %{"location" => "querystring", "locationName" => "expectedVersion", "shape" => "OptionalVersion"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName"], "type" => "structure"}, "VersionsLimitExceededException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "MessageFormat" => %{"enum" => ["RAW", "JSON"], "type" => "string"}, "LambdaAction" => %{"members" => %{"functionArn" => %{"shape" => "FunctionArn"}}, "required" => ["functionArn"], "type" => "structure"}, "BucketName" => %{"type" => "string"}, "CloudwatchAlarmAction" => %{"members" => %{"alarmName" => %{"shape" => "AlarmName"}, "roleArn" => %{"shape" => "AwsArn"}, "stateReason" => %{"shape" => "StateReason"}, "stateValue" => %{"shape" => "StateValue"}}, "required" => ["roleArn", "alarmName", "stateReason", "stateValue"], "type" => "structure"}, "InvalidRequestException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "IsDefaultVersion" => %{"type" => "boolean"}, "SalesforceEndpoint" => %{"max" => 2000, "pattern" => "https://ingestion-[a-zA-Z0-9]{1,12}\\.[a-zA-Z0-9]+\\.((sfdc-matrix\\.net)|(sfdcnow\\.com))/streams/\\w{1,20}/\\w{1,20}/event", "type" => "string"}, "ListCertificatesResponse" => %{"members" => %{"certificates" => %{"shape" => "Certificates"}, "nextMarker" => %{"shape" => "Marker"}}, "type" => "structure"}, "SetDefaultPolicyVersionRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "policyVersionId" => %{"location" => "uri", "locationName" => "policyVersionId", "shape" => "PolicyVersionId"}}, "required" => ["policyName", "policyVersionId"], "type" => "structure"}, "ResourceNotFoundException" => %{"error" => %{"httpStatusCode" => 404}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeletePolicyRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}}, "required" => ["policyName"], "type" => "structure"}, "CreateKeysAndCertificateRequest" => %{"members" => %{"setAsActive" => %{"location" => "querystring", "locationName" => "setAsActive", "shape" => "SetAsActive"}}, "type" => "structure"}, "ListThingPrincipalsResponse" => %{"members" => %{"principals" => %{"shape" => "Principals"}}, "type" => "structure"}, "CannedAccessControlList" => %{"enum" => ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"], "type" => "string"}, "HashKeyField" => %{"type" => "string"}, "resourceId" => %{"type" => "string"}, "PartitionKey" => %{"type" => "string"}, "ListOutgoingCertificatesResponse" => %{"members" => %{"nextMarker" => %{"shape" => "Marker"}, "outgoingCertificates" => %{"shape" => "OutgoingCertificates"}}, "type" => "structure"}, "GetLoggingOptionsRequest" => %{"members" => %{}, "type" => "structure"}, "ListThingsRequest" => %{"members" => %{"attributeName" => %{"location" => "querystring", "locationName" => "attributeName", "shape" => "AttributeName"}, "attributeValue" => %{"location" => "querystring", "locationName" => "attributeValue", "shape" => "AttributeValue"}, "maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "RegistryMaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "thingTypeName" => %{"location" => "querystring", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}}, "type" => "structure"}, "TransferData" => %{"members" => %{"acceptDate" => %{"shape" => "DateType"}, "rejectDate" => %{"shape" => "DateType"}, "rejectReason" => %{"shape" => "Message"}, "transferDate" => %{"shape" => "DateType"}, "transferMessage" => %{"shape" => "Message"}}, "type" => "structure"}, "ThingTypeDescription" => %{"max" => 2028, "pattern" => "[\\p{Graph}\\x20]*", "type" => "string"}, "DateType" => %{"type" => "timestamp"}, "AttachThingPrincipalResponse" => %{"members" => %{}, "type" => "structure"}, "DynamoDBv2Action" => %{"members" => %{"putItem" => %{"shape" => "PutItemInput"}, "roleArn" => %{"shape" => "AwsArn"}}, "type" => "structure"}, "AwsArn" => %{"type" => "string"}, "TopicRulePayload" => %{"members" => %{"actions" => %{"shape" => "ActionList"}, "awsIotSqlVersion" => %{"shape" => "AwsIotSqlVersion"}, "description" => %{"shape" => "Description"}, "ruleDisabled" => %{"shape" => "IsDisabled"}, "sql" => %{"shape" => "SQL"}}, "required" => ["sql", "actions"], "type" => "structure"}, "CloudwatchMetricAction" => %{"members" => %{"metricName" => %{"shape" => "MetricName"}, "metricNamespace" => %{"shape" => "MetricNamespace"}, "metricTimestamp" => %{"shape" => "MetricTimestamp"}, "metricUnit" => %{"shape" => "MetricUnit"}, "metricValue" => %{"shape" => "MetricValue"}, "roleArn" => %{"shape" => "AwsArn"}}, "required" => ["roleArn", "metricNamespace", "metricName", "metricValue", "metricUnit"], "type" => "structure"}, "PolicyDocument" => %{"type" => "string"}, "AcceptCertificateTransferRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}, "setAsActive" => %{"location" => "querystring", "locationName" => "setAsActive", "shape" => "SetAsActive"}}, "required" => ["certificateId"], "type" => "structure"}, "RuleName" => %{"max" => 128, "min" => 1, "pattern" => "^[a-zA-Z0-9_]+$", "type" => "string"}, "MalformedPolicyException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeletePolicyVersionRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "policyVersionId" => %{"location" => "uri", "locationName" => "policyVersionId", "shape" => "PolicyVersionId"}}, "required" => ["policyName", "policyVersionId"], "type" => "structure"}, "DescribeCertificateResponse" => %{"members" => %{"certificateDescription" => %{"shape" => "CertificateDescription"}}, "type" => "structure"}, "DeleteRegistrationCodeResponse" => %{"members" => %{}, "type" => "structure"}, "Marker" => %{"type" => "string"}, "LoggingOptionsPayload" => %{"members" => %{"logLevel" => %{"shape" => "LogLevel"}, "roleArn" => %{"shape" => "AwsArn"}}, "required" => ["roleArn"], "type" => "structure"}, "RegisterCertificateRequest" => %{"members" => %{"caCertificatePem" => %{"shape" => "CertificatePem"}, "certificatePem" => %{"shape" => "CertificatePem"}, "setAsActive" => %{"deprecated" => true, "location" => "querystring", "locationName" => "setAsActive", "shape" => "SetAsActiveFlag"}, "status" => %{"shape" => "CertificateStatus"}}, "required" => ["certificatePem"], "type" => "structure"}, "CreatePolicyRequest" => %{"members" => %{"policyDocument" => %{"shape" => "PolicyDocument"}, "policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}}, "required" => ["policyName", "policyDocument"], "type" => "structure"}, "ElasticsearchIndex" => %{"type" => "string"}, "UseBase64" => %{"type" => "boolean"}, "TransferCertificateResponse" => %{"members" => %{"transferredCertificateArn" => %{"shape" => "CertificateArn"}}, "type" => "structure"}, "CreatedAtDate" => %{"type" => "timestamp"}, "TopicRuleList" => %{"member" => %{"shape" => "TopicRuleListItem"}, "type" => "list"}, "AwsAccountId" => %{"pattern" => "[0-9]{12}", "type" => "string"}, "VersionConflictException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "Principal" => %{"type" => "string"}, "ListThingTypesRequest" => %{"members" => %{"maxResults" => %{"location" => "querystring", "locationName" => "maxResults", "shape" => "RegistryMaxResults"}, "nextToken" => %{"location" => "querystring", "locationName" => "nextToken", "shape" => "NextToken"}, "thingTypeName" => %{"location" => "querystring", "locationName" => "thingTypeName", "shape" => "ThingTypeName"}}, "type" => "structure"}, "GetPolicyRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}}, "required" => ["policyName"], "type" => "structure"}, "TransferCertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}, "targetAwsAccount" => %{"location" => "querystring", "locationName" => "targetAwsAccount", "shape" => "AwsAccountId"}, "transferMessage" => %{"shape" => "Message"}}, "required" => ["certificateId", "targetAwsAccount"], "type" => "structure"}, "Attributes" => %{"key" => %{"shape" => "AttributeName"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "ListPrincipalPoliciesRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}, "principal" => %{"location" => "header", "locationName" => "x-amzn-iot-principal", "shape" => "Principal"}}, "required" => ["principal"], "type" => "structure"}, "DescribeThingTypeResponse" => %{"members" => %{"thingTypeMetadata" => %{"shape" => "ThingTypeMetadata"}, "thingTypeName" => %{"shape" => "ThingTypeName"}, "thingTypeProperties" => %{"shape" => "ThingTypeProperties"}}, "type" => "structure"}, "RegisterCertificateResponse" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}}, "type" => "structure"}, "GetRegistrationCodeResponse" => %{"members" => %{"registrationCode" => %{"shape" => "RegistrationCode"}}, "type" => "structure"}, "PolicyName" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "ListCertificatesRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}}, "type" => "structure"}, "DetachThingPrincipalRequest" => %{"members" => %{"principal" => %{"location" => "header", "locationName" => "x-amzn-principal", "shape" => "Principal"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName", "principal"], "type" => "structure"}, "GetPolicyVersionResponse" => %{"members" => %{"isDefaultVersion" => %{"shape" => "IsDefaultVersion"}, "policyArn" => %{"shape" => "PolicyArn"}, "policyDocument" => %{"shape" => "PolicyDocument"}, "policyName" => %{"shape" => "PolicyName"}, "policyVersionId" => %{"shape" => "PolicyVersionId"}}, "type" => "structure"}, "DetachPrincipalPolicyRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "principal" => %{"location" => "header", "locationName" => "x-amzn-iot-principal", "shape" => "Principal"}}, "required" => ["policyName", "principal"], "type" => "structure"}, "ThingAttributeList" => %{"member" => %{"shape" => "ThingAttribute"}, "type" => "list"}, "AttributeValue" => %{"max" => 800, "pattern" => "[a-zA-Z0-9_.,@/:#-]*", "type" => "string"}, "ThingName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9:_-]+", "type" => "string"}, "ListThingTypesResponse" => %{"members" => %{"nextToken" => %{"shape" => "NextToken"}, "thingTypes" => %{"shape" => "ThingTypeList"}}, "type" => "structure"}, "UpdateThingResponse" => %{"members" => %{}, "type" => "structure"}, "UpdateThingRequest" => %{"members" => %{"attributePayload" => %{"shape" => "AttributePayload"}, "expectedVersion" => %{"shape" => "OptionalVersion"}, "removeThingType" => %{"shape" => "RemoveThingType"}, "thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}, "thingTypeName" => %{"shape" => "ThingTypeName"}}, "required" => ["thingName"], "type" => "structure"}, "SalesforceToken" => %{"min" => 40, "type" => "string"}, "PolicyVersionId" => %{"pattern" => "[0-9]+", "type" => "string"}, "PublicKey" => %{"min" => 1, "type" => "string"}, "DescribeThingRequest" => %{"members" => %{"thingName" => %{"location" => "uri", "locationName" => "thingName", "shape" => "ThingName"}}, "required" => ["thingName"], "type" => "structure"}, "AlarmName" => %{"type" => "string"}, "UndoDeprecate" => %{"type" => "boolean"}, "PolicyArn" => %{"type" => "string"}, "S3Action" => %{"members" => %{"bucketName" => %{"shape" => "BucketName"}, "cannedAcl" => %{"shape" => "CannedAccessControlList"}, "key" => %{"shape" => "Key"}, "roleArn" => %{"shape" => "AwsArn"}}, "required" => ["roleArn", "bucketName", "key"], "type" => "structure"}, "ResourceAlreadyExistsException" => %{"error" => %{"httpStatusCode" => 409}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}, "resourceArn" => %{"shape" => "resourceArn"}, "resourceId" => %{"shape" => "resourceId"}}, "type" => "structure"}, "SetAsActiveFlag" => %{"type" => "boolean"}, "DeleteCertificateRequest" => %{"members" => %{"certificateId" => %{"location" => "uri", "locationName" => "certificateId", "shape" => "CertificateId"}}, "required" => ["certificateId"], "type" => "structure"}, "OptionalVersion" => %{"type" => "long"}, "GetPolicyVersionRequest" => %{"members" => %{"policyName" => %{"location" => "uri", "locationName" => "policyName", "shape" => "PolicyName"}, "policyVersionId" => %{"location" => "uri", "locationName" => "policyVersionId", "shape" => "PolicyVersionId"}}, "required" => ["policyName", "policyVersionId"], "type" => "structure"}, "PrincipalArn" => %{"type" => "string"}, "CreateThingResponse" => %{"members" => %{"thingArn" => %{"shape" => "ThingArn"}, "thingName" => %{"shape" => "ThingName"}}, "type" => "structure"}, "ListCACertificatesRequest" => %{"members" => %{"ascendingOrder" => %{"location" => "querystring", "locationName" => "isAscendingOrder", "shape" => "AscendingOrder"}, "marker" => %{"location" => "querystring", "locationName" => "marker", "shape" => "Marker"}, "pageSize" => %{"location" => "querystring", "locationName" => "pageSize", "shape" => "PageSize"}}, "type" => "structure"}, "ElasticsearchId" => %{"type" => "string"}, "Flag" => %{"type" => "boolean"}, "CertificateSigningRequest" => %{"min" => 1, "type" => "string"}, "CreatePolicyVersionResponse" => %{"members" => %{"isDefaultVersion" => %{"shape" => "IsDefaultVersion"}, "policyArn" => %{"shape" => "PolicyArn"}, "policyDocument" => %{"shape" => "PolicyDocument"}, "policyVersionId" => %{"shape" => "PolicyVersionId"}}, "type" => "structure"}, "CertificateStateException" => %{"error" => %{"httpStatusCode" => 406}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "NextToken" => %{"type" => "string"}, "RegistrationCodeValidationException" => %{"error" => %{"httpStatusCode" => 400}, "exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "EndpointAddress" => %{"type" => "string"}, "ElasticsearchEndpoint" => %{"pattern" => "https?://.*", "type" => "string"}, "DynamoKeyType" => %{"enum" => ["STRING", "NUMBER"], "type" => "string"}, "CertificateDescription" => %{"members" => %{"caCertificateId" => %{"shape" => "CertificateId"}, "certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "certificatePem" => %{"shape" => "CertificatePem"}, "creationDate" => %{"shape" => "DateType"}, "lastModifiedDate" => %{"shape" => "DateType"}, "ownedBy" => %{"shape" => "AwsAccountId"}, "previousOwnedBy" => %{"shape" => "AwsAccountId"}, "status" => %{"shape" => "CertificateStatus"}, "transferData" => %{"shape" => "TransferData"}}, "type" => "structure"}, "SQL" => %{"type" => "string"}, "DeleteThingResponse" => %{"members" => %{}, "type" => "structure"}, "Certificate" => %{"members" => %{"certificateArn" => %{"shape" => "CertificateArn"}, "certificateId" => %{"shape" => "CertificateId"}, "creationDate" => %{"shape" => "DateType"}, "status" => %{"shape" => "CertificateStatus"}}, "type" => "structure"}, "ElasticsearchType" => %{"type" => "string"}, "HashKeyValue" => %{"type" => "string"}, "TopicRule" => %{"members" => %{"actions" => %{"shape" => "ActionList"}, "awsIotSqlVersion" => %{"shape" => "AwsIotSqlVersion"}, "createdAt" => %{"shape" => "CreatedAtDate"}, "description" => %{"shape" => "Description"}, "ruleDisabled" => %{"shape" => "IsDisabled"}, "ruleName" => %{"shape" => "RuleName"}, "sql" => %{"shape" => "SQL"}}, "type" => "structure"}, "IsDisabled" => %{"type" => "boolean"}}
  end
end