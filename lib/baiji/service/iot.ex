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
      input:    input,
      options:  options,
      action:   "ListCertificates",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists the existing thing types.
  """
  def list_thing_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListThingTypes",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists your policies.
  """
  def list_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPolicies",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeThing",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists the principals associated with the specified thing.
  """
  def list_thing_principals(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListThingPrincipals",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Gets information about the specified thing type.
  """
  def describe_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeThingType",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Deletes a registered CA certificate.
  """
  def delete_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteCACertificate",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetRegistrationCode",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists the versions of the specified policy and identifies the default
  version.
  """
  def list_policy_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPolicyVersions",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Deprecates a thing type. You can not associate new things with deprecated
  thing type.
  """
  def deprecate_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeprecateThingType",
      type:     :rest_json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "DeletePolicyVersion",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeCertificate",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Enables the specified rule.
  """
  def enable_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "EnableTopicRule",
      type:     :rest_json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "ReplaceTopicRule",
      type:     :rest_json,
      method:   :patch
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
      input:    input,
      options:  options,
      action:   "UpdateCertificate",
      type:     :rest_json,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "SetDefaultPolicyVersion",
      type:     :rest_json,
      method:   :patch
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
      input:    input,
      options:  options,
      action:   "RegisterCACertificate",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Creates a rule. Creating rules is an administrator-level action. Any user
  who has permission to create rules will be able to access data processed by
  the rule.
  """
  def create_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateTopicRule",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Removes the specified policy from the specified certificate.
  """
  def detach_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetachPrincipalPolicy",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Creates a thing record in the thing registry.
  """
  def create_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateThing",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Describes a registered CA certificate.
  """
  def describe_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeCACertificate",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Deletes the specified thing.
  """
  def delete_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteThing",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Disables the specified rule.
  """
  def disable_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DisableTopicRule",
      type:     :rest_json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "CreatePolicy",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_c_a_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListCACertificates",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists the principals associated with the specified policy.
  """
  def list_policy_principals(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPolicyPrincipals",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListTopicRules",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetPolicyVersion",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteRegistrationCode",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Lists certificates that are being transfered but not yet accepted.
  """
  def list_outgoing_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListOutgoingCertificates",
      type:     :rest_json,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "DeleteCertificate",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Lists the things associated with the specified principal.
  """
  def list_principal_things(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPrincipalThings",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Updates a registered CA certificate.
  """
  def update_c_a_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateCACertificate",
      type:     :rest_json,
      method:   :put
    }
  end
  
  @doc """
  Deletes the specified rule.
  """
  def delete_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteTopicRule",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Gets the logging options.
  """
  def get_logging_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetLoggingOptions",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Registers a device certificate with AWS IoT. If you have more than one CA
  certificate that has the same subject field, you must specify the CA
  certificate that was used to sign the device certificate being registered.
  """
  def register_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RegisterCertificate",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Attaches the specified policy to the specified principal (certificate or
  other credential).
  """
  def attach_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AttachPrincipalPolicy",
      type:     :rest_json,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "CancelCertificateTransfer",
      type:     :rest_json,
      method:   :patch
    }
  end
  
  @doc """
  Detaches the specified principal from the specified thing.
  """
  def detach_thing_principal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetachThingPrincipal",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  Sets the logging options.
  """
  def set_logging_options(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SetLoggingOptions",
      type:     :rest_json,
      method:   :post
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
      input:    input,
      options:  options,
      action:   "TransferCertificate",
      type:     :rest_json,
      method:   :patch
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
      input:    input,
      options:  options,
      action:   "DeleteThingType",
      type:     :rest_json,
      method:   :delete
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
      input:    input,
      options:  options,
      action:   "AcceptCertificateTransfer",
      type:     :rest_json,
      method:   :patch
    }
  end
  
  @doc """
  Creates a new thing type.
  """
  def create_thing_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateThingType",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Updates the data for a thing.
  """
  def update_thing(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "UpdateThing",
      type:     :rest_json,
      method:   :patch
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
      input:    input,
      options:  options,
      action:   "DeletePolicy",
      type:     :rest_json,
      method:   :delete
    }
  end
  
  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_c_a(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListCertificatesByCA",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetPolicy",
      type:     :rest_json,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "RejectCertificateTransfer",
      type:     :rest_json,
      method:   :patch
    }
  end
  
  @doc """
  Attaches the specified principal to the specified thing.
  """
  def attach_thing_principal(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "AttachThingPrincipal",
      type:     :rest_json,
      method:   :put
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
      input:    input,
      options:  options,
      action:   "CreatePolicyVersion",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Lists the policies attached to the specified principal. If you use an
  Cognito identity, the ID must be in [AmazonCognito Identity
  format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).
  """
  def list_principal_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListPrincipalPolicies",
      type:     :rest_json,
      method:   :get
    }
  end
  
  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DescribeEndpoint",
      type:     :rest_json,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "CreateKeysAndCertificate",
      type:     :rest_json,
      method:   :post
    }
  end
  
  @doc """
  Gets information about the specified rule.
  """
  def get_topic_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetTopicRule",
      type:     :rest_json,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "ListThings",
      type:     :rest_json,
      method:   :get
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
      input:    input,
      options:  options,
      action:   "CreateCertificateFromCsr",
      type:     :rest_json,
      method:   :post
    }
  end
  
end