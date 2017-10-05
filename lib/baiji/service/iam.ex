defmodule Baiji.IAM do
  @moduledoc """
  AWS Identity and Access Management

  AWS Identity and Access Management (IAM) is a web service that you can use
  to manage users and user permissions under your AWS account. This guide
  provides descriptions of IAM actions that you can call programmatically.
  For general information about IAM, see [AWS Identity and Access Management
  (IAM)](http://aws.amazon.com/iam/). For the user guide for IAM, see [Using
  IAM](http://docs.aws.amazon.com/IAM/latest/UserGuide/).

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .NET, iOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to IAM and AWS. For example, the SDKs take care of tasks such as
  cryptographically signing requests (see below), managing errors, and
  retrying requests automatically. For information about the AWS SDKs,
  including how to download and install them, see the [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/) page.

  </note> We recommend that you use the AWS SDKs to make programmatic API
  calls to IAM. However, you can also use the IAM Query API to make direct
  calls to the IAM web service. To learn more about the IAM Query API, see
  [Making Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *Using IAM* guide. IAM supports GET and POST requests for all
  actions. That is, the API does not require you to use GET for some actions
  and POST for others. However, GET requests are subject to the limitation
  size of a URL. Therefore, for operations that require larger sizes, use a
  POST request.

  **Signing Requests**

  Requests must be signed using an access key ID and a secret access key. We
  strongly recommend that you do not use your AWS account access key ID and
  secret access key for everyday work with IAM. You can use the access key ID
  and secret access key for an IAM user or you can use the AWS Security Token
  Service to generate temporary security credentials and use those to sign
  requests.

  To sign requests, we recommend that you use [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  If you have an existing application that uses Signature Version 2, you do
  not have to update it to use Signature Version 4. However, some operations
  now require Signature Version 4. The documentation for operations that
  require version 4 indicate this requirement.

  **Additional Resources**

  For more information, see the following:

  <ul> <li> [AWS Security
  Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).
  This topic provides general information about the types of credentials used
  for accessing AWS.

  </li> <li> [IAM Best
  Practices](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html).
  This topic presents a list of suggestions for using the IAM service to help
  secure your AWS resources.

  </li> <li> [Signing AWS API
  Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html).
  This set of topics walk you through the process of signing a request using
  an access key ID and secret access key.

  </li> </ul>
  """

  @doc """
  Retrieves the specified inline policy document that is embedded with the
  specified IAM role.

  <note> Policies returned by this API are URL-encoded compliant with [RFC
  3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding
  method to convert the policy back to plain JSON text. For example, if you
  use Java, you can use the `decode` method of the `java.net.URLDecoder`
  utility class in the Java SDK. Other languages and SDKs provide similar
  functionality.

  </note> An IAM role can also have managed policies attached to it. To
  retrieve a managed policy document that is attached to a role, use
  `GetPolicy` to determine the policy's default version, then use
  `GetPolicyVersion` to retrieve the policy document.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about roles, see [Using Roles to Delegate Permissions
  and Federate
  Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  """
  def get_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRolePolicy",
      method:           :post,
      input_shape:      "GetRolePolicyRequest",
      output_shape:     "GetRolePolicyResponse",
      output_wrapper:   "GetRolePolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Simulate how a set of IAM policies attached to an IAM entity works with a
  list of API actions and AWS resources to determine the policies' effective
  permissions. The entity can be an IAM user, group, or role. If you specify
  a user, then the simulation also includes all of the policies that are
  attached to groups that the user belongs to .

  You can optionally include a list of one or more additional policies
  specified as strings to include in the simulation. If you want to simulate
  only policies specified as strings, use `SimulateCustomPolicy` instead.

  You can also optionally include one resource-based policy to be evaluated
  with each of the resources included in the simulation.

  The simulation does not perform the API actions, it only checks the
  authorization to determine if the simulated policies allow or deny the
  actions.

  **Note:** This API discloses information about the permissions granted to
  other users. If you do not want users to see other user's permissions, then
  consider allowing them to use `SimulateCustomPolicy` instead.

  Context keys are variables maintained by AWS and its services that provide
  details about the context of an API query request. You can use the
  `Condition` element of an IAM policy to evaluate context keys. To get the
  list of context keys that the policies require for correct simulation, use
  `GetContextKeysForPrincipalPolicy`.

  If the output is long, you can use the `MaxItems` and `Marker` parameters
  to paginate the results.
  """
  def simulate_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SimulatePrincipalPolicy",
      method:           :post,
      input_shape:      "SimulatePrincipalPolicyRequest",
      output_shape:     "SimulatePolicyResponse",
      output_wrapper:   "SimulatePrincipalPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the
  specified IAM user.

  <note> Policies returned by this API are URL-encoded compliant with [RFC
  3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding
  method to convert the policy back to plain JSON text. For example, if you
  use Java, you can use the `decode` method of the `java.net.URLDecoder`
  utility class in the Java SDK. Other languages and SDKs provide similar
  functionality.

  </note> An IAM user can also have managed policies attached to it. To
  retrieve a managed policy document that is attached to a user, use
  `GetPolicy` to determine the policy's default version, then use
  `GetPolicyVersion` to retrieve the policy document.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_user_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUserPolicy",
      method:           :post,
      input_shape:      "GetUserPolicyRequest",
      output_shape:     "GetUserPolicyResponse",
      output_wrapper:   "GetUserPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified instance profile, including the
  instance profile's path, GUID, ARN, and role. For more information about
  instance profiles, see [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html)
  in the *IAM User Guide*.
  """
  def get_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceProfile",
      method:           :post,
      input_shape:      "GetInstanceProfileRequest",
      output_shape:     "GetInstanceProfileResponse",
      output_wrapper:   "GetInstanceProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified service-specific credential.
  """
  def delete_service_specific_credential(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteServiceSpecificCredential",
      method:           :post,
      input_shape:      "DeleteServiceSpecificCredentialRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM user.

  An IAM user can also have inline policies embedded with it. To list the
  inline policies for a user, use the `ListUserPolicies` API. For information
  about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  You can use the `PathPrefix` parameter to limit the list of policies to
  only those matching the specified path prefix. If there are no policies
  attached to the specified group (or none that match the specified path
  prefix), the action returns an empty list.
  """
  def list_attached_user_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAttachedUserPolicies",
      method:           :post,
      input_shape:      "ListAttachedUserPoliciesRequest",
      output_shape:     "ListAttachedUserPoliciesResponse",
      output_wrapper:   "ListAttachedUserPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Synchronizes the specified MFA device with its IAM resource object on the
  AWS servers.

  For more information about creating and working with virtual MFA devices,
  go to [Using a Virtual MFA
  Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.
  """
  def resync_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResyncMFADevice",
      method:           :post,
      input_shape:      "ResyncMFADeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified AWS account alias. For information about using an AWS
  account alias, see [Using an Alias for Your AWS Account
  ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in
  the *IAM User Guide*.
  """
  def delete_account_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAccountAlias",
      method:           :post,
      input_shape:      "DeleteAccountAliasRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified managed policy to the specified user.

  You use this API to attach a *managed* policy to a user. To embed an inline
  policy in a user, use `PutUserPolicy`.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def attach_user_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachUserPolicy",
      method:           :post,
      input_shape:      "AttachUserPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the IAM roles that have the specified path prefix. If there are none,
  the action returns an empty list. For more information about roles, go to
  [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_roles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListRoles",
      method:           :post,
      input_shape:      "ListRolesRequest",
      output_shape:     "ListRolesResponse",
      output_wrapper:   "ListRolesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all the managed policies that are available in your AWS account,
  including your own customer-defined managed policies and all AWS managed
  policies.

  You can filter the list of policies that is returned using the optional
  `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list
  only the customer managed policies in your AWS account, set `Scope` to
  `Local`. To list only AWS managed policies, set `Scope` to `AWS`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.

  For more information about managed policies, see [Managed Policies and
  Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def list_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListPolicies",
      method:           :post,
      input_shape:      "ListPoliciesRequest",
      output_shape:     "ListPoliciesResponse",
      output_wrapper:   "ListPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about IAM entity usage and IAM quotas in the AWS
  account.

  For information about limitations on IAM entities, see [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.
  """
  def get_account_summary(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccountSummary",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetAccountSummaryResponse",
      output_wrapper:   "GetAccountSummaryResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the password of the IAM user who is calling this action. The root
  account password is not affected by this action.

  To change the password for a different user, see `UpdateLoginProfile`. For
  more information about modifying passwords, see [Managing
  Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def change_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ChangePassword",
      method:           :post,
      input_shape:      "ChangePasswordRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists information about the IAM OpenID Connect (OIDC) provider resource
  objects defined in the AWS account.
  """
  def list_open_i_d_connect_providers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListOpenIDConnectProviders",
      method:           :post,
      input_shape:      "ListOpenIDConnectProvidersRequest",
      output_shape:     "ListOpenIDConnectProvidersResponse",
      output_wrapper:   "ListOpenIDConnectProvidersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of all of the context keys referenced in all of the IAM
  policies attached to the specified IAM entity. The entity can be an IAM
  user, group, or role. If you specify a user, then the request also includes
  all of the policies attached to groups that the user is a member of.

  You can optionally include a list of one or more additional policies,
  specified as strings. If you want to include *only* a list of policies by
  string, use `GetContextKeysForCustomPolicy` instead.

  **Note:** This API discloses information about the permissions granted to
  other users. If you do not want users to see other user's permissions, then
  consider allowing them to use `GetContextKeysForCustomPolicy` instead.

  Context keys are variables maintained by AWS and its services that provide
  details about the context of an API query request, and can be evaluated by
  testing against a value in an IAM policy. Use
  `GetContextKeysForPrincipalPolicy` to understand what key names and values
  you must supply when you call `SimulatePrincipalPolicy`.
  """
  def get_context_keys_for_principal_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetContextKeysForPrincipalPolicy",
      method:           :post,
      input_shape:      "GetContextKeysForPrincipalPolicyRequest",
      output_shape:     "GetContextKeysForPolicyResponse",
      output_wrapper:   "GetContextKeysForPrincipalPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM role.

  An IAM role can also have inline policies embedded with it. To list the
  inline policies for a role, use the `ListRolePolicies` API. For information
  about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  You can use the `PathPrefix` parameter to limit the list of policies to
  only those matching the specified path prefix. If there are no policies
  attached to the specified role (or none that match the specified path
  prefix), the action returns an empty list.
  """
  def list_attached_role_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAttachedRolePolicies",
      method:           :post,
      input_shape:      "ListAttachedRolePoliciesRequest",
      output_shape:     "ListAttachedRolePoliciesResponse",
      output_wrapper:   "ListAttachedRolePoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified
  IAM role.

  An IAM role can also have managed policies attached to it. To list the
  managed policies that are attached to a role, use
  `ListAttachedRolePolicies`. For more information about policies, see
  [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  If there are no inline policies embedded with the specified role, the
  action returns an empty list.
  """
  def list_role_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListRolePolicies",
      method:           :post,
      input_shape:      "ListRolePoliciesRequest",
      output_shape:     "ListRolePoliciesResponse",
      output_wrapper:   "ListRolePoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the IAM groups that the specified IAM user belongs to.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListGroupsForUser",
      method:           :post,
      input_shape:      "ListGroupsForUserRequest",
      output_shape:     "ListGroupsForUserResponse",
      output_wrapper:   "ListGroupsForUserResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified managed policy from the specified user.

  A user can also have inline policies embedded with it. To delete an inline
  policy, use the `DeleteUserPolicy` API. For information about policies, see
  [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_user_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachUserPolicy",
      method:           :post,
      input_shape:      "DetachUserPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an alias for your AWS account. For information about using an AWS
  account alias, see [Using an Alias for Your AWS Account
  ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in
  the *IAM User Guide*.
  """
  def create_account_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAccountAlias",
      method:           :post,
      input_shape:      "CreateAccountAliasRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the specified OpenID Connect (OIDC) provider
  resource object in IAM.
  """
  def get_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetOpenIDConnectProvider",
      method:           :post,
      input_shape:      "GetOpenIDConnectProviderRequest",
      output_shape:     "GetOpenIDConnectProviderResponse",
      output_wrapper:   "GetOpenIDConnectProviderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists information about the versions of the specified managed policy,
  including the version that is currently set as the policy's default
  version.

  For more information about managed policies, see [Managed Policies and
  Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def list_policy_versions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListPolicyVersions",
      method:           :post,
      input_shape:      "ListPolicyVersionsRequest",
      output_shape:     "ListPolicyVersionsResponse",
      output_wrapper:   "ListPolicyVersionsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified IAM user, including the user's
  creation date, path, unique ID, and ARN.

  If you do not specify a user name, IAM determines the user name implicitly
  based on the AWS access key ID used to sign the request to this API.
  """
  def get_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUser",
      method:           :post,
      input_shape:      "GetUserRequest",
      output_shape:     "GetUserResponse",
      output_wrapper:   "GetUserResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Modifies the description of a role.
  """
  def update_role_description(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateRoleDescription",
      method:           :post,
      input_shape:      "UpdateRoleDescriptionRequest",
      output_shape:     "UpdateRoleDescriptionResponse",
      output_wrapper:   "UpdateRoleDescriptionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified server certificate.

  For more information about working with server certificates, including a
  list of AWS services that can use the server certificates that you manage
  with IAM, go to [Working with Server
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  <important> If you are using a server certificate with Elastic Load
  Balancing, deleting the certificate could have implications for your
  application. If Elastic Load Balancing doesn't detect the deletion of bound
  certificates, it may continue to use the certificates. This could cause
  Elastic Load Balancing to stop accepting traffic. We recommend that you
  remove the reference to the certificate from Elastic Load Balancing before
  using this command to delete the certificate. For more information, go to
  [DeleteLoadBalancerListeners](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html)
  in the *Elastic Load Balancing API Reference*.

  </important>
  """
  def delete_server_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteServerCertificate",
      method:           :post,
      input_shape:      "DeleteServerCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an IAM resource that describes an identity provider (IdP) that
  supports SAML 2.0.

  The SAML provider resource that you create with this operation can be used
  as a principal in an IAM role's trust policy to enable federated users who
  sign-in using the SAML IdP to assume the role. You can create an IAM role
  that supports Web-based single sign-on (SSO) to the AWS Management Console
  or one that supports API access to AWS.

  When you create the SAML provider resource, you upload an a SAML metadata
  document that you get from your IdP and that includes the issuer's name,
  expiration information, and keys that can be used to validate the SAML
  authentication response (assertions) that the IdP sends. You must generate
  the metadata document using the identity management software that is used
  as your organization's IdP.

  <note> This operation requires [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </note> For more information, see [Enabling SAML 2.0 Federated Users to
  Access the AWS Management
  Console](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html)
  and [About SAML 2.0-based
  Federation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
  in the *IAM User Guide*.
  """
  def create_s_a_m_l_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateSAMLProvider",
      method:           :post,
      input_shape:      "CreateSAMLProviderRequest",
      output_shape:     "CreateSAMLProviderResponse",
      output_wrapper:   "CreateSAMLProviderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified user to the specified group.
  """
  def add_user_to_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddUserToGroup",
      method:           :post,
      input_shape:      "AddUserToGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified version from the specified managed policy.

  You cannot delete the default version from a policy using this API. To
  delete the default version from a policy, use `DeletePolicy`. To find out
  which version of a policy is marked as the default version, use
  `ListPolicyVersions`.

  For information about versions for managed policies, see [Versioning for
  Managed
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def delete_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeletePolicyVersion",
      method:           :post,
      input_shape:      "DeletePolicyVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the name and/or the path of the specified IAM user.

  <important> You should understand the implications of changing an IAM
  user's path or name. For more information, see [Renaming an IAM
  User](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming)
  and [Renaming an IAM
  Group](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html)
  in the *IAM User Guide*.

  </important> <note> To change a user name the requester must have
  appropriate permissions on both the source object and the target object.
  For example, to change Bob to Robert, the entity making the request must
  have permission on Bob and Robert, or must have permission on all (*). For
  more information about permissions, see [Permissions and
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).

  </note>
  """
  def update_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUser",
      method:           :post,
      input_shape:      "UpdateUserRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the status of a service-specific credential to `Active` or `Inactive`.
  Service-specific credentials that are inactive cannot be used for
  authentication to the service. This action can be used to disable a user’s
  service-specific credential as part of a credential rotation work flow.
  """
  def update_service_specific_credential(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateServiceSpecificCredential",
      method:           :post,
      input_shape:      "UpdateServiceSpecificCredentialRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an IAM entity to describe an identity provider (IdP) that supports
  [OpenID Connect (OIDC)](http://openid.net/connect/).

  The OIDC provider that you create with this operation can be used as a
  principal in a role's trust policy to establish a trust relationship
  between AWS and the OIDC provider.

  When you create the IAM OIDC provider, you specify the URL of the OIDC
  identity provider (IdP) to trust, a list of client IDs (also known as
  audiences) that identify the application or applications that are allowed
  to authenticate using the OIDC provider, and a list of thumbprints of the
  server certificate(s) that the IdP uses. You get all of this information
  from the OIDC IdP that you want to use for access to AWS.

  <note> Because trust for the OIDC provider is ultimately derived from the
  IAM provider that this action creates, it is a best practice to limit
  access to the `CreateOpenIDConnectProvider` action to highly-privileged
  users.

  </note>
  """
  def create_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateOpenIDConnectProvider",
      method:           :post,
      input_shape:      "CreateOpenIDConnectProviderRequest",
      output_shape:     "CreateOpenIDConnectProviderResponse",
      output_wrapper:   "CreateOpenIDConnectProviderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified managed policy to the specified IAM role. When you
  attach a managed policy to a role, the managed policy becomes part of the
  role's permission (access) policy.

  <note> You cannot use a managed policy as the role's trust policy. The
  role's trust policy is created at the same time as the role, using
  `CreateRole`. You can update a role's trust policy using
  `UpdateAssumeRolePolicy`.

  </note> Use this API to attach a *managed* policy to a role. To embed an
  inline policy in a role, use `PutRolePolicy`. For more information about
  policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def attach_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachRolePolicy",
      method:           :post,
      input_shape:      "AttachRolePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deactivates the specified MFA device and removes it from association with
  the user name for which it was originally enabled.

  For more information about creating and working with virtual MFA devices,
  go to [Using a Virtual MFA
  Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.
  """
  def deactivate_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeactivateMFADevice",
      method:           :post,
      input_shape:      "DeactivateMFADeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an OpenID Connect identity provider (IdP) resource object in IAM.

  Deleting an IAM OIDC provider resource does not update any roles that
  reference the provider as a principal in their trust policies. Any attempt
  to assume a role that references a deleted provider fails.

  This action is idempotent; it does not fail or return an error if you call
  the action for a provider that does not exist.
  """
  def delete_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteOpenIDConnectProvider",
      method:           :post,
      input_shape:      "DeleteOpenIDConnectProviderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the SSH public keys associated with the specified
  IAM user. If there are none, the action returns an empty list.

  The SSH public keys returned by this action are used only for
  authenticating the IAM user to an AWS CodeCommit repository. For more
  information about using SSH keys to authenticate to an AWS CodeCommit
  repository, see [Set up AWS CodeCommit for SSH
  Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *AWS CodeCommit User Guide*.

  Although each user is limited to a small number of keys, you can still
  paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_s_s_h_public_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSSHPublicKeys",
      method:           :post,
      input_shape:      "ListSSHPublicKeysRequest",
      output_shape:     "ListSSHPublicKeysResponse",
      output_wrapper:   "ListSSHPublicKeysResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a virtual MFA device.

  <note> You must deactivate a user's virtual MFA device before you can
  delete it. For information about deactivating MFA devices, see
  `DeactivateMFADevice`.

  </note>
  """
  def delete_virtual_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteVirtualMFADevice",
      method:           :post,
      input_shape:      "DeleteVirtualMFADeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified IAM group. The group must not contain any users or
  have any attached policies.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteGroup",
      method:           :post,
      input_shape:      "DeleteGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the password for the specified IAM user.

  IAM users can change their own passwords by calling `ChangePassword`. For
  more information about modifying passwords, see [Managing
  Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def update_login_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateLoginProfile",
      method:           :post,
      input_shape:      "UpdateLoginProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Attaches the specified managed policy to the specified IAM group.

  You use this API to attach a managed policy to a group. To embed an inline
  policy in a group, use `PutGroupPolicy`.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def attach_group_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AttachGroupPolicy",
      method:           :post,
      input_shape:      "AttachGroupPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a credential report for the AWS account. For more information
  about the credential report, see [Getting Credential
  Reports](http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in the *IAM User Guide*.
  """
  def generate_credential_report(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GenerateCredentialReport",
      method:           :post,
      input_shape:      "",
      output_shape:     "GenerateCredentialReportResponse",
      output_wrapper:   "GenerateCredentialReportResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the name and/or the path of the specified server certificate stored
  in IAM.

  For more information about working with server certificates, including a
  list of AWS services that can use the server certificates that you manage
  with IAM, go to [Working with Server
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  <important> You should understand the implications of changing a server
  certificate's path or name. For more information, see [Renaming a Server
  Certificate](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts)
  in the *IAM User Guide*.

  </important> <note> To change a server certificate name the requester must
  have appropriate permissions on both the source object and the target
  object. For example, to change the name from "ProductionCert" to
  "ProdCert", the entity making the request must have permission on
  "ProductionCert" and "ProdCert", or must have permission on all (*). For
  more information about permissions, see [Access
  Management](http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in
  the *IAM User Guide*.

  </note>
  """
  def update_server_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateServerCertificate",
      method:           :post,
      input_shape:      "UpdateServerCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified IAM role to the specified instance profile. An instance
  profile can contain only one role, and this limit cannot be increased.

  <note> The caller of this API must be granted the `PassRole` permission on
  the IAM role by a permission policy.

  </note> For more information about roles, go to [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For more information about instance profiles, go to [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def add_role_to_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddRoleToInstanceProfile",
      method:           :post,
      input_shape:      "AddRoleToInstanceProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Resets the password for a service-specific credential. The new password is
  AWS generated and cryptographically strong. It cannot be configured by the
  user. Resetting the password immediately invalidates the previous password
  associated with this user.
  """
  def reset_service_specific_credential(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResetServiceSpecificCredential",
      method:           :post,
      input_shape:      "ResetServiceSpecificCredentialRequest",
      output_shape:     "ResetServiceSpecificCredentialResponse",
      output_wrapper:   "ResetServiceSpecificCredentialResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version.

  This action affects all users, groups, and roles that the policy is
  attached to. To list the users, groups, and roles that the policy is
  attached to, use the `ListEntitiesForPolicy` API.

  For information about managed policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def set_default_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetDefaultPolicyVersion",
      method:           :post,
      input_shape:      "SetDefaultPolicyVersionRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the metadata document for an existing SAML provider resource
  object.

  <note> This operation requires [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </note>
  """
  def update_s_a_m_l_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateSAMLProvider",
      method:           :post,
      input_shape:      "UpdateSAMLProviderRequest",
      output_shape:     "UpdateSAMLProviderResponse",
      output_wrapper:   "UpdateSAMLProviderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new IAM user for your AWS account.

  For information about limitations on the number of IAM users you can
  create, see [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.
  """
  def create_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUser",
      method:           :post,
      input_shape:      "CreateUserRequest",
      output_shape:     "CreateUserResponse",
      output_wrapper:   "CreateUserResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the SAML provider metadocument that was uploaded when the IAM SAML
  provider resource object was created or updated.

  <note> This operation requires [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </note>
  """
  def get_s_a_m_l_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSAMLProvider",
      method:           :post,
      input_shape:      "GetSAMLProviderRequest",
      output_shape:     "GetSAMLProviderResponse",
      output_wrapper:   "GetSAMLProviderResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  role.

  A role can also have managed policies attached to it. To detach a managed
  policy from a role, use `DetachRolePolicy`. For more information about
  policies, refer to [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRolePolicy",
      method:           :post,
      input_shape:      "DeleteRolePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new managed policy for your AWS account.

  This operation creates a policy version with a version identifier of `v1`
  and sets v1 as the policy's default version. For more information about
  policy versions, see [Versioning for Managed
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.

  For more information about managed policies in general, see [Managed
  Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def create_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePolicy",
      method:           :post,
      input_shape:      "CreatePolicyRequest",
      output_shape:     "CreatePolicyResponse",
      output_wrapper:   "CreatePolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the instance profiles that have the specified path prefix. If there
  are none, the action returns an empty list. For more information about
  instance profiles, go to [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_instance_profiles(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListInstanceProfiles",
      method:           :post,
      input_shape:      "ListInstanceProfilesRequest",
      output_shape:     "ListInstanceProfilesResponse",
      output_wrapper:   "ListInstanceProfilesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the password policy for the AWS account. There are no parameters.
  """
  def delete_account_password_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAccountPasswordPolicy",
      method:           :post,
      input_shape:      "",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  group.

  A group can also have managed policies attached to it. To detach a managed
  policy from a group, use `DetachGroupPolicy`. For more information about
  policies, refer to [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_group_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteGroupPolicy",
      method:           :post,
      input_shape:      "DeleteGroupPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified
  IAM user.

  An IAM user can also have a managed policy attached to it. To attach a
  managed policy to a user, use `AttachUserPolicy`. To create a new managed
  policy, use `CreatePolicy`. For information about policies, see [Managed
  Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about limits on the number of inline policies that you can
  embed in a user, see [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.

  <note> Because policy documents can be large, you should use POST rather
  than GET when calling `PutUserPolicy`. For general information about using
  the Query API with IAM, go to [Making Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.

  </note>
  """
  def put_user_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutUserPolicy",
      method:           :post,
      input_shape:      "PutUserPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the MFA devices for an IAM user. If the request includes a IAM user
  name, then this action lists all the MFA devices associated with the
  specified user. If you do not specify a user name, IAM determines the user
  name implicitly based on the AWS access key ID signing the request for this
  API.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_m_f_a_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListMFADevices",
      method:           :post,
      input_shape:      "ListMFADevicesRequest",
      output_shape:     "ListMFADevicesResponse",
      output_wrapper:   "ListMFADevicesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns a list of IAM users that are in the specified IAM group. You can
  paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetGroup",
      method:           :post,
      input_shape:      "GetGroupRequest",
      output_shape:     "GetGroupResponse",
      output_wrapper:   "GetGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the user name and password-creation date for the specified IAM
  user. If the user has not been assigned a password, the action returns a
  404 (`NoSuchEntity`) error.
  """
  def get_login_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetLoginProfile",
      method:           :post,
      input_shape:      "GetLoginProfileRequest",
      output_shape:     "GetLoginProfileResponse",
      output_wrapper:   "GetLoginProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the password policy for the AWS account. For more information
  about using a password policy, go to [Managing an IAM Password
  Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  """
  def get_account_password_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccountPasswordPolicy",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetAccountPasswordPolicyResponse",
      output_wrapper:   "GetAccountPasswordPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the service-specific credentials associated with
  the specified IAM user. If there are none, the action returns an empty
  list. The service-specific credentials returned by this action are used
  only for authenticating the IAM user to a specific service. For more
  information about using service-specific credentials to authenticate to an
  AWS service, see [Set Up service-specific
  credentials](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html)
  in the AWS CodeCommit User Guide.
  """
  def list_service_specific_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListServiceSpecificCredentials",
      method:           :post,
      input_shape:      "ListServiceSpecificCredentialsRequest",
      output_shape:     "ListServiceSpecificCredentialsResponse",
      output_wrapper:   "ListServiceSpecificCredentialsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an IAM role that is linked to a specific AWS service. The service
  controls the attached policies and when the role can be deleted. This helps
  ensure that the service is not broken by an unexpectedly changed or deleted
  role, which could put your AWS resources into an unknown state. Allowing
  the service to control the role helps improve service stability and proper
  cleanup when a service and its role are no longer needed.

  The name of the role is autogenerated by combining the string that you
  specify for the `AWSServiceName` parameter with the string that you specify
  for the `CustomSuffix` parameter. The resulting name must be unique in your
  account or the request fails.

  To attach a policy to this service-linked role, you must make the request
  using the AWS service that depends on this role.
  """
  def create_service_linked_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateServiceLinkedRole",
      method:           :post,
      input_shape:      "CreateServiceLinkedRoleRequest",
      output_shape:     "CreateServiceLinkedRoleResponse",
      output_wrapper:   "CreateServiceLinkedRoleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all IAM users, groups, and roles that the specified managed policy is
  attached to.

  You can use the optional `EntityFilter` parameter to limit the results to a
  particular type of entity (users, groups, or roles). For example, to list
  only the roles that are attached to the specified policy, set
  `EntityFilter` to `Role`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_entities_for_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListEntitiesForPolicy",
      method:           :post,
      input_shape:      "ListEntitiesForPolicyRequest",
      output_shape:     "ListEntitiesForPolicyResponse",
      output_wrapper:   "ListEntitiesForPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified version of the specified managed
  policy, including the policy document.

  <note> Policies returned by this API are URL-encoded compliant with [RFC
  3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding
  method to convert the policy back to plain JSON text. For example, if you
  use Java, you can use the `decode` method of the `java.net.URLDecoder`
  utility class in the Java SDK. Other languages and SDKs provide similar
  functionality.

  </note> To list the available versions for a policy, use
  `ListPolicyVersions`.

  This API retrieves information about managed policies. To retrieve
  information about an inline policy that is embedded in a user, group, or
  role, use the `GetUserPolicy`, `GetGroupPolicy`, or `GetRolePolicy` API.

  For more information about the types of policies, see [Managed Policies and
  Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about managed policy versions, see [Versioning for
  Managed
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def get_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPolicyVersion",
      method:           :post,
      input_shape:      "GetPolicyVersionRequest",
      output_shape:     "GetPolicyVersionResponse",
      output_wrapper:   "GetPolicyVersionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Generates a set of credentials consisting of a user name and password that
  can be used to access the service specified in the request. These
  credentials are generated by IAM, and can be used only for the specified
  service.

  You can have a maximum of two sets of service-specific credentials for each
  supported service per user.

  The only supported service at this time is AWS CodeCommit.

  You can reset the password to a new service-generated value by calling
  `ResetServiceSpecificCredential`.

  For more information about service-specific credentials, see [Using IAM
  with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access
  Keys](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html)
  in the *IAM User Guide*.
  """
  def create_service_specific_credential(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateServiceSpecificCredential",
      method:           :post,
      input_shape:      "CreateServiceSpecificCredentialRequest",
      output_shape:     "CreateServiceSpecificCredentialResponse",
      output_wrapper:   "CreateServiceSpecificCredentialResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified client ID (also known as audience) from the list of
  client IDs registered for the specified IAM OpenID Connect (OIDC) provider
  resource object.

  This action is idempotent; it does not fail or return an error if you try
  to remove a client ID that does not exist.
  """
  def remove_client_i_d_from_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveClientIDFromOpenIDConnectProvider",
      method:           :post,
      input_shape:      "RemoveClientIDFromOpenIDConnectProviderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Simulate how a set of IAM policies and optionally a resource-based policy
  works with a list of API actions and AWS resources to determine the
  policies' effective permissions. The policies are provided as strings.

  The simulation does not perform the API actions; it only checks the
  authorization to determine if the simulated policies allow or deny the
  actions.

  If you want to simulate existing policies attached to an IAM user, group,
  or role, use `SimulatePrincipalPolicy` instead.

  Context keys are variables maintained by AWS and its services that provide
  details about the context of an API query request. You can use the
  `Condition` element of an IAM policy to evaluate context keys. To get the
  list of context keys that the policies require for correct simulation, use
  `GetContextKeysForCustomPolicy`.

  If the output is long, you can use `MaxItems` and `Marker` parameters to
  paginate the results.
  """
  def simulate_custom_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SimulateCustomPolicy",
      method:           :post,
      input_shape:      "SimulateCustomPolicyRequest",
      output_shape:     "SimulatePolicyResponse",
      output_wrapper:   "SimulateCustomPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified managed policy from the specified IAM group.

  A group can also have inline policies embedded with it. To delete an inline
  policy, use the `DeleteGroupPolicy` API. For information about policies,
  see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_group_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachGroupPolicy",
      method:           :post,
      input_shape:      "DetachGroupPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the virtual MFA devices defined in the AWS account by assignment
  status. If you do not specify an assignment status, the action returns a
  list of all virtual MFA devices. Assignment status can be `Assigned`,
  `Unassigned`, or `Any`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_virtual_m_f_a_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListVirtualMFADevices",
      method:           :post,
      input_shape:      "ListVirtualMFADevicesRequest",
      output_shape:     "ListVirtualMFADevicesResponse",
      output_wrapper:   "ListVirtualMFADevicesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Replaces the existing list of server certificate thumbprints associated
  with an OpenID Connect (OIDC) provider resource object with a new list of
  thumbprints.

  The list that you pass with this action completely replaces the existing
  list of thumbprints. (The lists are not merged.)

  Typically, you need to update a thumbprint only when the identity
  provider's certificate changes, which occurs rarely. However, if the
  provider's certificate *does* change, any attempt to assume an IAM role
  that specifies the OIDC provider as a principal fails until the certificate
  thumbprint is updated.

  <note> Because trust for the OIDC provider is ultimately derived from the
  provider's certificate and is validated by the thumbprint, it is a best
  practice to limit access to the `UpdateOpenIDConnectProviderThumbprint`
  action to highly-privileged users.

  </note>
  """
  def update_open_i_d_connect_provider_thumbprint(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateOpenIDConnectProviderThumbprint",
      method:           :post,
      input_shape:      "UpdateOpenIDConnectProviderThumbprintRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified role. The role must not have any policies attached.
  For more information about roles, go to [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  <important> Make sure you do not have any Amazon EC2 instances running with
  the role you are about to delete. Deleting a role or instance profile that
  is associated with a running instance will break any applications running
  on the instance.

  </important>
  """
  def delete_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteRole",
      method:           :post,
      input_shape:      "DeleteRoleRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified IAM role from the specified EC2 instance profile.

  <important> Make sure you do not have any Amazon EC2 instances running with
  the role you are about to remove from the instance profile. Removing a role
  from an instance profile that is associated with a running instance might
  break any applications running on the instance.

  </important> For more information about IAM roles, go to [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For more information about instance profiles, go to [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def remove_role_from_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveRoleFromInstanceProfile",
      method:           :post,
      input_shape:      "RemoveRoleFromInstanceProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the server certificates stored in IAM that have the specified path
  prefix. If none exist, the action returns an empty list.

  You can paginate the results using the `MaxItems` and `Marker` parameters.

  For more information about working with server certificates, including a
  list of AWS services that can use the server certificates that you manage
  with IAM, go to [Working with Server
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  def list_server_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListServerCertificates",
      method:           :post,
      input_shape:      "ListServerCertificatesRequest",
      output_shape:     "ListServerCertificatesResponse",
      output_wrapper:   "ListServerCertificatesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the SAML provider resource objects defined in IAM in the account.

  <note> This operation requires [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </note>
  """
  def list_s_a_m_l_providers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSAMLProviders",
      method:           :post,
      input_shape:      "ListSAMLProvidersRequest",
      output_shape:     "ListSAMLProvidersResponse",
      output_wrapper:   "ListSAMLProvidersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified
  IAM role.

  When you embed an inline policy in a role, the inline policy is used as
  part of the role's access (permissions) policy. The role's trust policy is
  created at the same time as the role, using `CreateRole`. You can update a
  role's trust policy using `UpdateAssumeRolePolicy`. For more information
  about IAM roles, go to [Using Roles to Delegate Permissions and Federate
  Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).

  A role can also have a managed policy attached to it. To attach a managed
  policy to a role, use `AttachRolePolicy`. To create a new managed policy,
  use `CreatePolicy`. For information about policies, see [Managed Policies
  and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about limits on the number of inline policies that you can
  embed with a role, see [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.

  <note> Because policy documents can be large, you should use POST rather
  than GET when calling `PutRolePolicy`. For general information about using
  the Query API with IAM, go to [Making Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.

  </note>
  """
  def put_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutRolePolicy",
      method:           :post,
      input_shape:      "PutRolePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified IAM user. The user must not belong to any groups or
  have any access keys, signing certificates, or attached policies.
  """
  def delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUser",
      method:           :post,
      input_shape:      "DeleteUserRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads an SSH public key and associates it with the specified IAM user.

  The SSH public key uploaded by this action can be used only for
  authenticating the associated IAM user to an AWS CodeCommit repository. For
  more information about using SSH keys to authenticate to an AWS CodeCommit
  repository, see [Set up AWS CodeCommit for SSH
  Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *AWS CodeCommit User Guide*.
  """
  def upload_s_s_h_public_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UploadSSHPublicKey",
      method:           :post,
      input_shape:      "UploadSSHPublicKeyRequest",
      output_shape:     "UploadSSHPublicKeyResponse",
      output_wrapper:   "UploadSSHPublicKeyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads a server certificate entity for the AWS account. The server
  certificate entity includes a public key certificate, a private key, and an
  optional certificate chain, which should all be PEM-encoded.

  We recommend that you use [AWS Certificate
  Manager](https://aws.amazon.com/certificate-manager/) to provision, manage,
  and deploy your server certificates. With ACM you can request a
  certificate, deploy it to AWS resources, and let ACM handle certificate
  renewals for you. Certificates provided by ACM are free. For more
  information about using ACM, see the [AWS Certificate Manager User
  Guide](http://docs.aws.amazon.com/acm/latest/userguide/).

  For more information about working with server certificates, including a
  list of AWS services that can use the server certificates that you manage
  with IAM, go to [Working with Server
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  For information about the number of server certificates you can upload, see
  [Limitations on IAM Entities and
  Objects](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html)
  in the *IAM User Guide*.

  <note> Because the body of the public key certificate, private key, and the
  certificate chain can be large, you should use POST rather than GET when
  calling `UploadServerCertificate`. For information about setting up
  signatures and authorization through the API, go to [Signing AWS API
  Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *AWS General Reference*. For general information about using the
  Query API with IAM, go to [Calling the API by Making HTTP Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html)
  in the *IAM User Guide*.

  </note>
  """
  def upload_server_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UploadServerCertificate",
      method:           :post,
      input_shape:      "UploadServerCertificateRequest",
      output_shape:     "UploadServerCertificateResponse",
      output_wrapper:   "UploadServerCertificateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified role, including the role's path,
  GUID, ARN, and the role's trust policy that grants permission to assume the
  role. For more information about roles, see [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  <note> Policies returned by this API are URL-encoded compliant with [RFC
  3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding
  method to convert the policy back to plain JSON text. For example, if you
  use Java, you can use the `decode` method of the `java.net.URLDecoder`
  utility class in the Java SDK. Other languages and SDKs provide similar
  functionality.

  </note>
  """
  def get_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetRole",
      method:           :post,
      input_shape:      "GetRoleRequest",
      output_shape:     "GetRoleResponse",
      output_wrapper:   "GetRoleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the IAM users that have the specified path prefix. If no path prefix
  is specified, the action returns all users in the AWS account. If there are
  none, the action returns an empty list.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_users(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUsers",
      method:           :post,
      input_shape:      "ListUsersRequest",
      output_shape:     "ListUsersResponse",
      output_wrapper:   "ListUsersResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the access key pair associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly
  based on the AWS access key ID signing the request. Because this action
  works for access keys under the AWS account, you can use this action to
  manage root credentials even if the AWS account has no associated users.
  """
  def delete_access_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAccessKey",
      method:           :post,
      input_shape:      "DeleteAccessKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the IAM groups that have the specified path prefix.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListGroups",
      method:           :post,
      input_shape:      "ListGroupsRequest",
      output_shape:     "ListGroupsResponse",
      output_wrapper:   "ListGroupsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a credential report for the AWS account. For more information
  about the credential report, see [Getting Credential
  Reports](http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in the *IAM User Guide*.
  """
  def get_credential_report(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCredentialReport",
      method:           :post,
      input_shape:      "",
      output_shape:     "GetCredentialReportResponse",
      output_wrapper:   "GetCredentialReportResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables the specified MFA device and associates it with the specified IAM
  user. When enabled, the MFA device is required for every subsequent login
  by the IAM user associated with the device.
  """
  def enable_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "EnableMFADevice",
      method:           :post,
      input_shape:      "EnableMFADeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified user from the specified group.
  """
  def remove_user_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveUserFromGroup",
      method:           :post,
      input_shape:      "RemoveUserFromGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new role for your AWS account. For more information about roles,
  go to [Working with
  Roles](http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For information about limitations on role names and the number of roles you
  can create, go to [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.
  """
  def create_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateRole",
      method:           :post,
      input_shape:      "CreateRoleRequest",
      output_shape:     "CreateRoleResponse",
      output_wrapper:   "CreateRoleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the status of the specified access key from Active to Inactive, or
  vice versa. This action can be used to disable a user's key as part of a
  key rotation work flow.

  If the `UserName` field is not specified, the UserName is determined
  implicitly based on the AWS access key ID used to sign the request. Because
  this action works for access keys under the AWS account, you can use this
  action to manage root credentials even if the AWS account has no associated
  users.

  For information about rotating keys, see [Managing Keys and
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html)
  in the *IAM User Guide*.
  """
  def update_access_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAccessKey",
      method:           :post,
      input_shape:      "UpdateAccessKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a SAML provider resource in IAM.

  Deleting the provider resource from IAM does not update any roles that
  reference the SAML provider resource's ARN as a principal in their trust
  policies. Any attempt to assume a role that references a non-existent
  provider resource ARN fails.

  <note> This operation requires [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  </note>
  """
  def delete_s_a_m_l_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSAMLProvider",
      method:           :post,
      input_shape:      "DeleteSAMLProviderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about all IAM users, groups, roles, and policies in
  your AWS account, including their relationships to one another. Use this
  API to obtain a snapshot of the configuration of IAM permissions (users,
  groups, roles, and policies) in your account.

  You can optionally filter the results using the `Filter` parameter. You can
  paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def get_account_authorization_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccountAuthorizationDetails",
      method:           :post,
      input_shape:      "GetAccountAuthorizationDetailsRequest",
      output_shape:     "GetAccountAuthorizationDetailsResponse",
      output_wrapper:   "GetAccountAuthorizationDetailsResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the
  specified IAM group.

  <note> Policies returned by this API are URL-encoded compliant with [RFC
  3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding
  method to convert the policy back to plain JSON text. For example, if you
  use Java, you can use the `decode` method of the `java.net.URLDecoder`
  utility class in the Java SDK. Other languages and SDKs provide similar
  functionality.

  </note> An IAM group can also have managed policies attached to it. To
  retrieve a managed policy document that is attached to a group, use
  `GetPolicy` to determine the policy's default version, then use
  `GetPolicyVersion` to retrieve the policy document.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_group_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetGroupPolicy",
      method:           :post,
      input_shape:      "GetGroupPolicyRequest",
      output_shape:     "GetGroupPolicyResponse",
      output_wrapper:   "GetGroupPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the names of the inline policies embedded in the specified IAM user.

  An IAM user can also have managed policies attached to it. To list the
  managed policies that are attached to a user, use
  `ListAttachedUserPolicies`. For more information about policies, see
  [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  If there are no inline policies embedded with the specified user, the
  action returns an empty list.
  """
  def list_user_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUserPolicies",
      method:           :post,
      input_shape:      "ListUserPoliciesRequest",
      output_shape:     "ListUserPoliciesResponse",
      output_wrapper:   "ListUserPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the password policy settings for the AWS account.

  <note> This action does not support partial updates. No parameters are
  required, but if you do not specify a parameter, that parameter's value
  reverts to its default value. See the **Request Parameters** section for
  each parameter's default value.

  </note> For more information about using a password policy, see [Managing
  an IAM Password
  Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html)
  in the *IAM User Guide*.
  """
  def update_account_password_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAccountPasswordPolicy",
      method:           :post,
      input_shape:      "UpdateAccountPasswordPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new instance profile. For information about instance profiles, go
  to [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

  For information about the number of instance profiles you can create, see
  [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.
  """
  def create_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateInstanceProfile",
      method:           :post,
      input_shape:      "CreateInstanceProfileRequest",
      output_shape:     "CreateInstanceProfileResponse",
      output_wrapper:   "CreateInstanceProfileResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM
  user.

  A user can also have managed policies attached to it. To detach a managed
  policy from a user, use `DetachUserPolicy`. For more information about
  policies, refer to [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_user_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPolicy",
      method:           :post,
      input_shape:      "DeleteUserPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified instance profile. The instance profile must not have
  an associated role.

  <important> Make sure you do not have any Amazon EC2 instances running with
  the instance profile you are about to delete. Deleting a role or instance
  profile that is associated with a running instance will break any
  applications running on the instance.

  </important> For more information about instance profiles, go to [About
  Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def delete_instance_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteInstanceProfile",
      method:           :post,
      input_shape:      "DeleteInstanceProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified
  IAM group.

  An IAM group can also have managed policies attached to it. To list the
  managed policies that are attached to a group, use
  `ListAttachedGroupPolicies`. For more information about policies, see
  [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  If there are no inline policies embedded with the specified group, the
  action returns an empty list.
  """
  def list_group_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListGroupPolicies",
      method:           :post,
      input_shape:      "ListGroupPoliciesRequest",
      output_shape:     "ListGroupPoliciesResponse",
      output_wrapper:   "ListGroupPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the specified SSH public key, including metadata about the key.

  The SSH public key retrieved by this action is used only for authenticating
  the associated IAM user to an AWS CodeCommit repository. For more
  information about using SSH keys to authenticate to an AWS CodeCommit
  repository, see [Set up AWS CodeCommit for SSH
  Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *AWS CodeCommit User Guide*.
  """
  def get_s_s_h_public_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetSSHPublicKey",
      method:           :post,
      input_shape:      "GetSSHPublicKeyRequest",
      output_shape:     "GetSSHPublicKeyResponse",
      output_wrapper:   "GetSSHPublicKeyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the policy that grants an IAM entity permission to assume a role.
  This is typically referred to as the "role trust policy". For more
  information about roles, go to [Using Roles to Delegate Permissions and
  Federate
  Identities](http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  """
  def update_assume_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAssumeRolePolicy",
      method:           :post,
      input_shape:      "UpdateAssumeRolePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a list of all of the context keys referenced in the input policies.
  The policies are supplied as a list of one or more strings. To get the
  context keys from policies associated with an IAM user, group, or role, use
  `GetContextKeysForPrincipalPolicy`.

  Context keys are variables maintained by AWS and its services that provide
  details about the context of an API query request, and can be evaluated by
  testing against a value specified in an IAM policy. Use
  GetContextKeysForCustomPolicy to understand what key names and values you
  must supply when you call `SimulateCustomPolicy`. Note that all parameters
  are shown in unencoded form here for clarity, but must be URL encoded to be
  included as a part of a real HTML request.
  """
  def get_context_keys_for_custom_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetContextKeysForCustomPolicy",
      method:           :post,
      input_shape:      "GetContextKeysForCustomPolicyRequest",
      output_shape:     "GetContextKeysForPolicyResponse",
      output_wrapper:   "GetContextKeysForCustomPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about when the specified access key was last used.
  The information includes the date and time of last use, along with the AWS
  service and region that were specified in the last request made with that
  key.
  """
  def get_access_key_last_used(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccessKeyLastUsed",
      method:           :post,
      input_shape:      "GetAccessKeyLastUsedRequest",
      output_shape:     "GetAccessKeyLastUsedResponse",
      output_wrapper:   "GetAccessKeyLastUsedResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the account alias associated with the AWS account (Note: you can have
  only one). For information about using an AWS account alias, see [Using an
  Alias for Your AWS Account
  ID](http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in
  the *IAM User Guide*.
  """
  def list_account_aliases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAccountAliases",
      method:           :post,
      input_shape:      "ListAccountAliasesRequest",
      output_shape:     "ListAccountAliasesResponse",
      output_wrapper:   "ListAccountAliasesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new AWS secret access key and corresponding AWS access key ID for
  the specified user. The default status for new keys is `Active`.

  If you do not specify a user name, IAM determines the user name implicitly
  based on the AWS access key ID signing the request. Because this action
  works for access keys under the AWS account, you can use this action to
  manage root credentials even if the AWS account has no associated users.

  For information about limits on the number of keys you can create, see
  [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.

  <important> To ensure the security of your AWS account, the secret access
  key is accessible only during key and user creation. You must save the key
  (for example, in a text file) if you want to be able to access it again. If
  a secret key is lost, you can delete the access keys for the associated
  user and then create new keys.

  </important>
  """
  def create_access_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAccessKey",
      method:           :post,
      input_shape:      "CreateAccessKeyRequest",
      output_shape:     "CreateAccessKeyResponse",
      output_wrapper:   "CreateAccessKeyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified managed policy.

  Before you can delete a managed policy, you must first detach the policy
  from all users, groups, and roles that it is attached to, and you must
  delete all of the policy's versions. The following steps describe the
  process for deleting a managed policy:

  <ul> <li> Detach the policy from all users, groups, and roles that the
  policy is attached to, using the `DetachUserPolicy`, `DetachGroupPolicy`,
  or `DetachRolePolicy` APIs. To list all the users, groups, and roles that a
  policy is attached to, use `ListEntitiesForPolicy`.

  </li> <li> Delete all versions of the policy using `DeletePolicyVersion`.
  To list the policy's versions, use `ListPolicyVersions`. You cannot use
  `DeletePolicyVersion` to delete the version that is marked as the default
  version. You delete the policy's default version in the next step of the
  process.

  </li> <li> Delete the policy (this automatically deletes the policy's
  default version) using this API.

  </li> </ul> For information about managed policies, see [Managed Policies
  and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeletePolicy",
      method:           :post,
      input_shape:      "DeletePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the name and/or the path of the specified IAM group.

  <important> You should understand the implications of changing a group's
  path or name. For more information, see [Renaming Users and
  Groups](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html)
  in the *IAM User Guide*.

  </important> <note> To change an IAM group name the requester must have
  appropriate permissions on both the source object and the target object.
  For example, to change "Managers" to "MGRs", the entity making the request
  must have permission on both "Managers" and "MGRs", or must have permission
  on all (*). For more information about permissions, see [Permissions and
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).

  </note>
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGroup",
      method:           :post,
      input_shape:      "UpdateGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM group.

  An IAM group can also have inline policies embedded with it. To list the
  inline policies for a group, use the `ListGroupPolicies` API. For
  information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  You can use the `PathPrefix` parameter to limit the list of policies to
  only those matching the specified path prefix. If there are no policies
  attached to the specified group (or none that match the specified path
  prefix), the action returns an empty list.
  """
  def list_attached_group_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAttachedGroupPolicies",
      method:           :post,
      input_shape:      "ListAttachedGroupPoliciesRequest",
      output_shape:     "ListAttachedGroupPoliciesResponse",
      output_wrapper:   "ListAttachedGroupPoliciesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified managed policy, including the
  policy's default version and the total number of IAM users, groups, and
  roles to which the policy is attached. To retrieve the list of the specific
  users, groups, and roles that the policy is attached to, use the
  `ListEntitiesForPolicy` API. This API returns metadata about the policy. To
  retrieve the actual policy document for a specific version of the policy,
  use `GetPolicyVersion`.

  This API retrieves information about managed policies. To retrieve
  information about an inline policy that is embedded with an IAM user,
  group, or role, use the `GetUserPolicy`, `GetGroupPolicy`, or
  `GetRolePolicy` API.

  For more information about policies, see [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetPolicy",
      method:           :post,
      input_shape:      "GetPolicyRequest",
      output_shape:     "GetPolicyResponse",
      output_wrapper:   "GetPolicyResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new group.

  For information about the number of groups you can create, see [Limitations
  on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.
  """
  def create_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateGroup",
      method:           :post,
      input_shape:      "CreateGroupRequest",
      output_shape:     "CreateGroupResponse",
      output_wrapper:   "CreateGroupResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a new client ID (also known as audience) to the list of client IDs
  already registered for the specified IAM OpenID Connect (OIDC) provider
  resource.

  This action is idempotent; it does not fail or return an error if you add
  an existing client ID to the provider.
  """
  def add_client_i_d_to_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddClientIDToOpenIDConnectProvider",
      method:           :post,
      input_shape:      "AddClientIDToOpenIDConnectProviderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new version of the specified managed policy. To update a managed
  policy, you create a new policy version. A managed policy can have up to
  five versions. If the policy has five versions, you must delete an existing
  version using `DeletePolicyVersion` before you create a new version.

  Optionally, you can set the new version as the policy's default version.
  The default version is the version that is in effect for the IAM users,
  groups, and roles to which the policy is attached.

  For more information about managed policy versions, see [Versioning for
  Managed
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def create_policy_version(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePolicyVersion",
      method:           :post,
      input_shape:      "CreatePolicyVersionRequest",
      output_shape:     "CreatePolicyVersionResponse",
      output_wrapper:   "CreatePolicyVersionResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the password for the specified IAM user, which terminates the
  user's ability to access AWS services through the AWS Management Console.

  <important> Deleting a user's password does not prevent a user from
  accessing AWS through the command line interface or the API. To prevent all
  user access you must also either make any access keys inactive or delete
  them. For more information about making keys inactive or deleting them, see
  `UpdateAccessKey` and `DeleteAccessKey`.

  </important>
  """
  def delete_login_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteLoginProfile",
      method:           :post,
      input_shape:      "DeleteLoginProfileRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the status of the specified user signing certificate from active to
  disabled, or vice versa. This action can be used to disable an IAM user's
  signing certificate as part of a certificate rotation work flow.

  If the `UserName` field is not specified, the UserName is determined
  implicitly based on the AWS access key ID used to sign the request. Because
  this action works for access keys under the AWS account, you can use this
  action to manage root credentials even if the AWS account has no associated
  users.
  """
  def update_signing_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateSigningCertificate",
      method:           :post,
      input_shape:      "UpdateSigningCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a signing certificate associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly
  based on the AWS access key ID signing the request. Because this action
  works for access keys under the AWS account, you can use this action to
  manage root credentials even if the AWS account has no associated IAM
  users.
  """
  def delete_signing_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSigningCertificate",
      method:           :post,
      input_shape:      "DeleteSigningCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified
  IAM group.

  A user can also have managed policies attached to it. To attach a managed
  policy to a group, use `AttachGroupPolicy`. To create a new managed policy,
  use `CreatePolicy`. For information about policies, see [Managed Policies
  and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about limits on the number of inline policies that you can
  embed in a group, see [Limitations on IAM
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.

  <note> Because policy documents can be large, you should use POST rather
  than GET when calling `PutGroupPolicy`. For general information about using
  the Query API with IAM, go to [Making Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.

  </note>
  """
  def put_group_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutGroupPolicy",
      method:           :post,
      input_shape:      "PutGroupPolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the access key IDs associated with the specified
  IAM user. If there are none, the action returns an empty list.

  Although each user is limited to a small number of keys, you can still
  paginate the results using the `MaxItems` and `Marker` parameters.

  If the `UserName` field is not specified, the UserName is determined
  implicitly based on the AWS access key ID used to sign the request. Because
  this action works for access keys under the AWS account, you can use this
  action to manage root credentials even if the AWS account has no associated
  users.

  <note> To ensure the security of your AWS account, the secret access key is
  accessible only during key and user creation.

  </note>
  """
  def list_access_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAccessKeys",
      method:           :post,
      input_shape:      "ListAccessKeysRequest",
      output_shape:     "ListAccessKeysResponse",
      output_wrapper:   "ListAccessKeysResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the instance profiles that have the specified associated IAM role. If
  there are none, the action returns an empty list. For more information
  about instance profiles, go to [About Instance
  Profiles](http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_instance_profiles_for_role(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListInstanceProfilesForRole",
      method:           :post,
      input_shape:      "ListInstanceProfilesForRoleRequest",
      output_shape:     "ListInstanceProfilesForRoleResponse",
      output_wrapper:   "ListInstanceProfilesForRoleResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the status of an IAM user's SSH public key to active or inactive. SSH
  public keys that are inactive cannot be used for authentication. This
  action can be used to disable a user's SSH public key as part of a key
  rotation work flow.

  The SSH public key affected by this action is used only for authenticating
  the associated IAM user to an AWS CodeCommit repository. For more
  information about using SSH keys to authenticate to an AWS CodeCommit
  repository, see [Set up AWS CodeCommit for SSH
  Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *AWS CodeCommit User Guide*.
  """
  def update_s_s_h_public_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateSSHPublicKey",
      method:           :post,
      input_shape:      "UpdateSSHPublicKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new virtual MFA device for the AWS account. After creating the
  virtual MFA, use `EnableMFADevice` to attach the MFA device to an IAM user.
  For more information about creating and working with virtual MFA devices,
  go to [Using a Virtual MFA
  Device](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.

  For information about limits on the number of MFA devices you can create,
  see [Limitations on
  Entities](http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html)
  in the *IAM User Guide*.

  <important> The seed information contained in the QR code and the Base32
  string should be treated like any other secret access information, such as
  your AWS access keys or your passwords. After you provision your virtual
  device, you should ensure that the information is destroyed following
  secure procedures.

  </important>
  """
  def create_virtual_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateVirtualMFADevice",
      method:           :post,
      input_shape:      "CreateVirtualMFADeviceRequest",
      output_shape:     "CreateVirtualMFADeviceResponse",
      output_wrapper:   "CreateVirtualMFADeviceResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified managed policy from the specified role.

  A role can also have inline policies embedded with it. To delete an inline
  policy, use the `DeleteRolePolicy` API. For information about policies, see
  [Managed Policies and Inline
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_role_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DetachRolePolicy",
      method:           :post,
      input_shape:      "DetachRolePolicyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about the specified server certificate stored in IAM.

  For more information about working with server certificates, including a
  list of AWS services that can use the server certificates that you manage
  with IAM, go to [Working with Server
  Certificates](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  def get_server_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetServerCertificate",
      method:           :post,
      input_shape:      "GetServerCertificateRequest",
      output_shape:     "GetServerCertificateResponse",
      output_wrapper:   "GetServerCertificateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns information about the signing certificates associated with the
  specified IAM user. If there are none, the action returns an empty list.

  Although each user is limited to a small number of signing certificates,
  you can still paginate the results using the `MaxItems` and `Marker`
  parameters.

  If the `UserName` field is not specified, the user name is determined
  implicitly based on the AWS access key ID used to sign the request for this
  API. Because this action works for access keys under the AWS account, you
  can use this action to manage root credentials even if the AWS account has
  no associated users.
  """
  def list_signing_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListSigningCertificates",
      method:           :post,
      input_shape:      "ListSigningCertificatesRequest",
      output_shape:     "ListSigningCertificatesResponse",
      output_wrapper:   "ListSigningCertificatesResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uploads an X.509 signing certificate and associates it with the specified
  IAM user. Some AWS services use X.509 signing certificates to validate
  requests that are signed with a corresponding private key. When you upload
  the certificate, its default status is `Active`.

  If the `UserName` field is not specified, the IAM user name is determined
  implicitly based on the AWS access key ID used to sign the request. Because
  this action works for access keys under the AWS account, you can use this
  action to manage root credentials even if the AWS account has no associated
  users.

  <note> Because the body of a X.509 certificate can be large, you should use
  POST rather than GET when calling `UploadSigningCertificate`. For
  information about setting up signatures and authorization through the API,
  go to [Signing AWS API
  Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *AWS General Reference*. For general information about using the
  Query API with IAM, go to [Making Query
  Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.

  </note>
  """
  def upload_signing_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UploadSigningCertificate",
      method:           :post,
      input_shape:      "UploadSigningCertificateRequest",
      output_shape:     "UploadSigningCertificateResponse",
      output_wrapper:   "UploadSigningCertificateResult",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified SSH public key.

  The SSH public key deleted by this action is used only for authenticating
  the associated IAM user to an AWS CodeCommit repository. For more
  information about using SSH keys to authenticate to an AWS CodeCommit
  repository, see [Set up AWS CodeCommit for SSH
  Connections](http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *AWS CodeCommit User Guide*.
  """
  def delete_s_s_h_public_key(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteSSHPublicKey",
      method:           :post,
      input_shape:      "DeleteSSHPublicKeyRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a password for the specified user, giving the user the ability to
  access AWS services through the AWS Management Console. For more
  information about managing passwords, see [Managing
  Passwords](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def create_login_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateLoginProfile",
      method:           :post,
      input_shape:      "CreateLoginProfileRequest",
      output_shape:     "CreateLoginProfileResponse",
      output_wrapper:   "CreateLoginProfileResult",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "iam",
      endpoint_prefix:  "iam",
      type:             :xml,
      version:          "2010-05-08",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"AccessKeyMetadata" => %{"members" => %{"AccessKeyId" => %{"shape" => "accessKeyIdType"}, "CreateDate" => %{"shape" => "dateType"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "type" => "structure"}, "policyDescriptionType" => %{"max" => 1000, "type" => "string"}, "ListAttachedUserPoliciesResponse" => %{"members" => %{"AttachedPolicies" => %{"shape" => "attachedPoliciesListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "type" => "structure"}, "DeleteOpenIDConnectProviderRequest" => %{"members" => %{"OpenIDConnectProviderArn" => %{"shape" => "arnType"}}, "required" => ["OpenIDConnectProviderArn"], "type" => "structure"}, "clientIDType" => %{"max" => 255, "min" => 1, "type" => "string"}, "maxItemsType" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "UpdateSSHPublicKeyRequest" => %{"members" => %{"SSHPublicKeyId" => %{"shape" => "publicKeyIdType"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyId", "Status"], "type" => "structure"}, "booleanObjectType" => %{"box" => true, "type" => "boolean"}, "UpdateServerCertificateRequest" => %{"members" => %{"NewPath" => %{"shape" => "pathType"}, "NewServerCertificateName" => %{"shape" => "serverCertificateNameType"}, "ServerCertificateName" => %{"shape" => "serverCertificateNameType"}}, "required" => ["ServerCertificateName"], "type" => "structure"}, "pathPrefixType" => %{"max" => 512, "min" => 1, "pattern" => "\\u002F[\\u0021-\\u007F]*", "type" => "string"}, "CreateVirtualMFADeviceResponse" => %{"members" => %{"VirtualMFADevice" => %{"shape" => "VirtualMFADevice"}}, "required" => ["VirtualMFADevice"], "type" => "structure"}, "UpdateRoleDescriptionRequest" => %{"members" => %{"Description" => %{"shape" => "roleDescriptionType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "Description"], "type" => "structure"}, "ListSSHPublicKeysRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "userNameType"}}, "type" => "structure"}, "CreateSAMLProviderResponse" => %{"members" => %{"SAMLProviderArn" => %{"shape" => "arnType"}}, "type" => "structure"}, "GetSSHPublicKeyResponse" => %{"members" => %{"SSHPublicKey" => %{"shape" => "SSHPublicKey"}}, "type" => "structure"}, "CreatePolicyResponse" => %{"members" => %{"Policy" => %{"shape" => "Policy"}}, "type" => "structure"}, "accessKeyIdType" => %{"max" => 128, "min" => 16, "pattern" => "[\\w]+", "type" => "string"}, "RemoveRoleFromInstanceProfileRequest" => %{"members" => %{"InstanceProfileName" => %{"shape" => "instanceProfileNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["InstanceProfileName", "RoleName"], "type" => "structure"}, "GetCredentialReportResponse" => %{"members" => %{"Content" => %{"shape" => "ReportContentType"}, "GeneratedTime" => %{"shape" => "dateType"}, "ReportFormat" => %{"shape" => "ReportFormatType"}}, "type" => "structure"}, "CreateUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "type" => "structure"}, "ContextKeyNamesResultListType" => %{"member" => %{"shape" => "ContextKeyNameType"}, "type" => "list"}, "DeleteGroupPolicyRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "required" => ["GroupName", "PolicyName"], "type" => "structure"}, "ResourceNameType" => %{"max" => 2048, "min" => 1, "type" => "string"}, "ServiceFailureException" => %{"error" => %{"code" => "ServiceFailure", "httpStatusCode" => 500}, "exception" => true, "members" => %{"message" => %{"shape" => "serviceFailureExceptionMessage"}}, "type" => "structure"}, "UpdateGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "NewGroupName" => %{"shape" => "groupNameType"}, "NewPath" => %{"shape" => "pathType"}}, "required" => ["GroupName"], "type" => "structure"}, "thumbprintType" => %{"max" => 40, "min" => 40, "type" => "string"}, "pathType" => %{"max" => 512, "min" => 1, "pattern" => "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)", "type" => "string"}, "arnType" => %{"max" => 2048, "min" => 20, "type" => "string"}, "ListPolicyVersionsRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PolicyArn" => %{"shape" => "arnType"}}, "required" => ["PolicyArn"], "type" => "structure"}, "passwordType" => %{"max" => 128, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "sensitive" => true, "type" => "string"}, "malformedCertificateMessage" => %{"type" => "string"}, "invalidInputMessage" => %{"type" => "string"}, "ManagedPolicyDetailListType" => %{"member" => %{"shape" => "ManagedPolicyDetail"}, "type" => "list"}, "UpdateAssumeRolePolicyRequest" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyDocument"], "type" => "structure"}, "GetRoleRequest" => %{"members" => %{"RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName"], "type" => "structure"}, "privateKeyType" => %{"max" => 16384, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "sensitive" => true, "type" => "string"}, "AttachGroupPolicyRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyArn" => %{"shape" => "arnType"}}, "required" => ["GroupName", "PolicyArn"], "type" => "structure"}, "DeleteSigningCertificateRequest" => %{"members" => %{"CertificateId" => %{"shape" => "certificateIdType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["CertificateId"], "type" => "structure"}, "ContextEntry" => %{"members" => %{"ContextKeyName" => %{"shape" => "ContextKeyNameType"}, "ContextKeyType" => %{"shape" => "ContextKeyTypeEnum"}, "ContextKeyValues" => %{"shape" => "ContextKeyValueListType"}}, "type" => "structure"}, "CreateServiceLinkedRoleRequest" => %{"members" => %{"AWSServiceName" => %{"shape" => "groupNameType"}, "CustomSuffix" => %{"shape" => "customSuffixType"}, "Description" => %{"shape" => "roleDescriptionType"}}, "required" => ["AWSServiceName"], "type" => "structure"}, "UpdateLoginProfileRequest" => %{"members" => %{"Password" => %{"shape" => "passwordType"}, "PasswordResetRequired" => %{"shape" => "booleanObjectType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName"], "type" => "structure"}, "SimulatePrincipalPolicyRequest" => %{"members" => %{"ActionNames" => %{"shape" => "ActionNameListType"}, "CallerArn" => %{"shape" => "ResourceNameType"}, "ContextEntries" => %{"shape" => "ContextEntryListType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PolicyInputList" => %{"shape" => "SimulationPolicyListType"}, "PolicySourceArn" => %{"shape" => "arnType"}, "ResourceArns" => %{"shape" => "ResourceNameListType"}, "ResourceHandlingOption" => %{"shape" => "ResourceHandlingOptionType"}, "ResourceOwner" => %{"shape" => "ResourceNameType"}, "ResourcePolicy" => %{"shape" => "policyDocumentType"}}, "required" => ["PolicySourceArn", "ActionNames"], "type" => "structure"}, "ListAccessKeysRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "ListInstanceProfilesResponse" => %{"members" => %{"InstanceProfiles" => %{"shape" => "instanceProfileListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["InstanceProfiles"], "type" => "structure"}, "Role" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AssumeRolePolicyDocument" => %{"shape" => "policyDocumentType"}, "CreateDate" => %{"shape" => "dateType"}, "Description" => %{"shape" => "roleDescriptionType"}, "Path" => %{"shape" => "pathType"}, "RoleId" => %{"shape" => "idType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["Path", "RoleName", "RoleId", "Arn", "CreateDate"], "type" => "structure"}, "ListPoliciesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "OnlyAttached" => %{"shape" => "booleanType"}, "PathPrefix" => %{"shape" => "policyPathType"}, "Scope" => %{"shape" => "policyScopeType"}}, "type" => "structure"}, "CreateRoleResponse" => %{"members" => %{"Role" => %{"shape" => "Role"}}, "required" => ["Role"], "type" => "structure"}, "UnrecognizedPublicKeyEncodingException" => %{"error" => %{"code" => "UnrecognizedPublicKeyEncoding", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "unrecognizedPublicKeyEncodingMessage"}}, "type" => "structure"}, "DeleteGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}}, "required" => ["GroupName"], "type" => "structure"}, "CreateServiceSpecificCredentialResponse" => %{"members" => %{"ServiceSpecificCredential" => %{"shape" => "ServiceSpecificCredential"}}, "type" => "structure"}, "policyEvaluationErrorMessage" => %{"type" => "string"}, "ActionNameListType" => %{"member" => %{"shape" => "ActionNameType"}, "type" => "list"}, "CreateInstanceProfileResponse" => %{"members" => %{"InstanceProfile" => %{"shape" => "InstanceProfile"}}, "required" => ["InstanceProfile"], "type" => "structure"}, "certificateChainType" => %{"max" => 2097152, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "type" => "string"}, "User" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "CreateDate" => %{"shape" => "dateType"}, "PasswordLastUsed" => %{"shape" => "dateType"}, "Path" => %{"shape" => "pathType"}, "UserId" => %{"shape" => "idType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["Path", "UserName", "UserId", "Arn", "CreateDate"], "type" => "structure"}, "EntityTemporarilyUnmodifiableException" => %{"error" => %{"code" => "EntityTemporarilyUnmodifiable", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "entityTemporarilyUnmodifiableMessage"}}, "type" => "structure"}, "SSHPublicKeyMetadata" => %{"members" => %{"SSHPublicKeyId" => %{"shape" => "publicKeyIdType"}, "Status" => %{"shape" => "statusType"}, "UploadDate" => %{"shape" => "dateType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyId", "Status", "UploadDate"], "type" => "structure"}, "serialNumberType" => %{"max" => 256, "min" => 9, "pattern" => "[\\w+=/:,.@-]+", "type" => "string"}, "UpdateOpenIDConnectProviderThumbprintRequest" => %{"members" => %{"OpenIDConnectProviderArn" => %{"shape" => "arnType"}, "ThumbprintList" => %{"shape" => "thumbprintListType"}}, "required" => ["OpenIDConnectProviderArn", "ThumbprintList"], "type" => "structure"}, "PutGroupPolicyRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "required" => ["GroupName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "GetInstanceProfileResponse" => %{"members" => %{"InstanceProfile" => %{"shape" => "InstanceProfile"}}, "required" => ["InstanceProfile"], "type" => "structure"}, "ListPolicyVersionsResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Versions" => %{"shape" => "policyDocumentVersionListType"}}, "type" => "structure"}, "GetContextKeysForCustomPolicyRequest" => %{"members" => %{"PolicyInputList" => %{"shape" => "SimulationPolicyListType"}}, "required" => ["PolicyInputList"], "type" => "structure"}, "serviceName" => %{"type" => "string"}, "UploadSSHPublicKeyRequest" => %{"members" => %{"SSHPublicKeyBody" => %{"shape" => "publicKeyMaterialType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyBody"], "type" => "structure"}, "CreateServiceLinkedRoleResponse" => %{"members" => %{"Role" => %{"shape" => "Role"}}, "type" => "structure"}, "policyDocumentType" => %{"max" => 131072, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "type" => "string"}, "RemoveClientIDFromOpenIDConnectProviderRequest" => %{"members" => %{"ClientID" => %{"shape" => "clientIDType"}, "OpenIDConnectProviderArn" => %{"shape" => "arnType"}}, "required" => ["OpenIDConnectProviderArn", "ClientID"], "type" => "structure"}, "CreateRoleRequest" => %{"members" => %{"AssumeRolePolicyDocument" => %{"shape" => "policyDocumentType"}, "Description" => %{"shape" => "roleDescriptionType"}, "Path" => %{"shape" => "pathType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "AssumeRolePolicyDocument"], "type" => "structure"}, "groupNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "UserDetail" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AttachedManagedPolicies" => %{"shape" => "attachedPoliciesListType"}, "CreateDate" => %{"shape" => "dateType"}, "GroupList" => %{"shape" => "groupNameListType"}, "Path" => %{"shape" => "pathType"}, "UserId" => %{"shape" => "idType"}, "UserName" => %{"shape" => "userNameType"}, "UserPolicyList" => %{"shape" => "policyDetailListType"}}, "type" => "structure"}, "policyScopeType" => %{"enum" => ["All", "AWS", "Local"], "type" => "string"}, "EvalDecisionDetailsType" => %{"key" => %{"shape" => "EvalDecisionSourceType"}, "type" => "map", "value" => %{"shape" => "PolicyEvaluationDecisionType"}}, "DeleteVirtualMFADeviceRequest" => %{"members" => %{"SerialNumber" => %{"shape" => "serialNumberType"}}, "required" => ["SerialNumber"], "type" => "structure"}, "PolicyUserListType" => %{"member" => %{"shape" => "PolicyUser"}, "type" => "list"}, "GetRolePolicyResponse" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "ListGroupPoliciesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "PolicyNames" => %{"shape" => "policyNameListType"}}, "required" => ["PolicyNames"], "type" => "structure"}, "PolicyGroup" => %{"members" => %{"GroupId" => %{"shape" => "idType"}, "GroupName" => %{"shape" => "groupNameType"}}, "type" => "structure"}, "policyListType" => %{"member" => %{"shape" => "Policy"}, "type" => "list"}, "GetSAMLProviderRequest" => %{"members" => %{"SAMLProviderArn" => %{"shape" => "arnType"}}, "required" => ["SAMLProviderArn"], "type" => "structure"}, "ListAttachedRolePoliciesResponse" => %{"members" => %{"AttachedPolicies" => %{"shape" => "attachedPoliciesListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "type" => "structure"}, "summaryMapType" => %{"key" => %{"shape" => "summaryKeyType"}, "type" => "map", "value" => %{"shape" => "summaryValueType"}}, "ServerCertificateMetadata" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "Expiration" => %{"shape" => "dateType"}, "Path" => %{"shape" => "pathType"}, "ServerCertificateId" => %{"shape" => "idType"}, "ServerCertificateName" => %{"shape" => "serverCertificateNameType"}, "UploadDate" => %{"shape" => "dateType"}}, "required" => ["Path", "ServerCertificateName", "ServerCertificateId", "Arn"], "type" => "structure"}, "CredentialReportNotReadyException" => %{"error" => %{"code" => "ReportInProgress", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "credentialReportNotReadyExceptionMessage"}}, "type" => "structure"}, "CreateVirtualMFADeviceRequest" => %{"members" => %{"Path" => %{"shape" => "pathType"}, "VirtualMFADeviceName" => %{"shape" => "virtualMFADeviceName"}}, "required" => ["VirtualMFADeviceName"], "type" => "structure"}, "InvalidUserTypeException" => %{"error" => %{"code" => "InvalidUserType", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "invalidUserTypeMessage"}}, "type" => "structure"}, "GetOpenIDConnectProviderRequest" => %{"members" => %{"OpenIDConnectProviderArn" => %{"shape" => "arnType"}}, "required" => ["OpenIDConnectProviderArn"], "type" => "structure"}, "Position" => %{"members" => %{"Column" => %{"shape" => "ColumnNumber"}, "Line" => %{"shape" => "LineNumber"}}, "type" => "structure"}, "accessKeySecretType" => %{"sensitive" => true, "type" => "string"}, "policyDetailListType" => %{"member" => %{"shape" => "PolicyDetail"}, "type" => "list"}, "GetGroupPolicyResponse" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "required" => ["GroupName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "ListGroupsForUserResponse" => %{"members" => %{"Groups" => %{"shape" => "groupListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["Groups"], "type" => "structure"}, "ResourceSpecificResult" => %{"members" => %{"EvalDecisionDetails" => %{"shape" => "EvalDecisionDetailsType"}, "EvalResourceDecision" => %{"shape" => "PolicyEvaluationDecisionType"}, "EvalResourceName" => %{"shape" => "ResourceNameType"}, "MatchedStatements" => %{"shape" => "StatementListType"}, "MissingContextValues" => %{"shape" => "ContextKeyNamesResultListType"}}, "required" => ["EvalResourceName", "EvalResourceDecision"], "type" => "structure"}, "ReportStateDescriptionType" => %{"type" => "string"}, "GetAccountPasswordPolicyResponse" => %{"members" => %{"PasswordPolicy" => %{"shape" => "PasswordPolicy"}}, "required" => ["PasswordPolicy"], "type" => "structure"}, "CredentialReportExpiredException" => %{"error" => %{"code" => "ReportExpired", "httpStatusCode" => 410, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "credentialReportExpiredExceptionMessage"}}, "type" => "structure"}, "ServiceNotSupportedException" => %{"error" => %{"code" => "NotSupportedService", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "serviceNotSupportedMessage"}}, "type" => "structure"}, "ContextEntryListType" => %{"member" => %{"shape" => "ContextEntry"}, "type" => "list"}, "GetUserRequest" => %{"members" => %{"UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "ListSAMLProvidersRequest" => %{"members" => %{}, "type" => "structure"}, "CreateOpenIDConnectProviderRequest" => %{"members" => %{"ClientIDList" => %{"shape" => "clientIDListType"}, "ThumbprintList" => %{"shape" => "thumbprintListType"}, "Url" => %{"shape" => "OpenIDConnectProviderUrlType"}}, "required" => ["Url", "ThumbprintList"], "type" => "structure"}, "statusType" => %{"enum" => ["Active", "Inactive"], "type" => "string"}, "malformedPolicyDocumentMessage" => %{"type" => "string"}, "GetInstanceProfileRequest" => %{"members" => %{"InstanceProfileName" => %{"shape" => "instanceProfileNameType"}}, "required" => ["InstanceProfileName"], "type" => "structure"}, "maxPasswordAgeType" => %{"box" => true, "max" => 1095, "min" => 1, "type" => "integer"}, "CreateOpenIDConnectProviderResponse" => %{"members" => %{"OpenIDConnectProviderArn" => %{"shape" => "arnType"}}, "type" => "structure"}, "SSHPublicKey" => %{"members" => %{"Fingerprint" => %{"shape" => "publicKeyFingerprintType"}, "SSHPublicKeyBody" => %{"shape" => "publicKeyMaterialType"}, "SSHPublicKeyId" => %{"shape" => "publicKeyIdType"}, "Status" => %{"shape" => "statusType"}, "UploadDate" => %{"shape" => "dateType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyId", "Fingerprint", "SSHPublicKeyBody", "Status"], "type" => "structure"}, "MalformedPolicyDocumentException" => %{"error" => %{"code" => "MalformedPolicyDocument", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "malformedPolicyDocumentMessage"}}, "type" => "structure"}, "ListGroupsResponse" => %{"members" => %{"Groups" => %{"shape" => "groupListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["Groups"], "type" => "structure"}, "roleDetailListType" => %{"member" => %{"shape" => "RoleDetail"}, "type" => "list"}, "DeleteServiceSpecificCredentialRequest" => %{"members" => %{"ServiceSpecificCredentialId" => %{"shape" => "serviceSpecificCredentialId"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["ServiceSpecificCredentialId"], "type" => "structure"}, "CreatePolicyVersionRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "PolicyDocument" => %{"shape" => "policyDocumentType"}, "SetAsDefault" => %{"shape" => "booleanType"}}, "required" => ["PolicyArn", "PolicyDocument"], "type" => "structure"}, "existingUserNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "userDetailListType" => %{"member" => %{"shape" => "UserDetail"}, "type" => "list"}, "ReportStateType" => %{"enum" => ["STARTED", "INPROGRESS", "COMPLETE"], "type" => "string"}, "ListServerCertificatesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "ServerCertificateMetadataList" => %{"shape" => "serverCertificateMetadataListType"}}, "required" => ["ServerCertificateMetadataList"], "type" => "structure"}, "PolicyVersion" => %{"members" => %{"CreateDate" => %{"shape" => "dateType"}, "Document" => %{"shape" => "policyDocumentType"}, "IsDefaultVersion" => %{"shape" => "booleanType"}, "VersionId" => %{"shape" => "policyVersionIdType"}}, "type" => "structure"}, "GetAccessKeyLastUsedRequest" => %{"members" => %{"AccessKeyId" => %{"shape" => "accessKeyIdType"}}, "required" => ["AccessKeyId"], "type" => "structure"}, "LoginProfile" => %{"members" => %{"CreateDate" => %{"shape" => "dateType"}, "PasswordResetRequired" => %{"shape" => "booleanType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "CreateDate"], "type" => "structure"}, "summaryValueType" => %{"type" => "integer"}, "VirtualMFADevice" => %{"members" => %{"Base32StringSeed" => %{"shape" => "BootstrapDatum"}, "EnableDate" => %{"shape" => "dateType"}, "QRCodePNG" => %{"shape" => "BootstrapDatum"}, "SerialNumber" => %{"shape" => "serialNumberType"}, "User" => %{"shape" => "User"}}, "required" => ["SerialNumber"], "type" => "structure"}, "GetSAMLProviderResponse" => %{"members" => %{"CreateDate" => %{"shape" => "dateType"}, "SAMLMetadataDocument" => %{"shape" => "SAMLMetadataDocumentType"}, "ValidUntil" => %{"shape" => "dateType"}}, "type" => "structure"}, "dateType" => %{"type" => "timestamp"}, "GetServerCertificateResponse" => %{"members" => %{"ServerCertificate" => %{"shape" => "ServerCertificate"}}, "required" => ["ServerCertificate"], "type" => "structure"}, "ListRolePoliciesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "PolicyNames" => %{"shape" => "policyNameListType"}}, "required" => ["PolicyNames"], "type" => "structure"}, "policyNameListType" => %{"member" => %{"shape" => "policyNameType"}, "type" => "list"}, "groupNameListType" => %{"member" => %{"shape" => "groupNameType"}, "type" => "list"}, "DeleteUserPolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "policyNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "PolicyName"], "type" => "structure"}, "GetGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}}, "required" => ["GroupName"], "type" => "structure"}, "DeleteLoginProfileRequest" => %{"members" => %{"UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName"], "type" => "structure"}, "AddClientIDToOpenIDConnectProviderRequest" => %{"members" => %{"ClientID" => %{"shape" => "clientIDType"}, "OpenIDConnectProviderArn" => %{"shape" => "arnType"}}, "required" => ["OpenIDConnectProviderArn", "ClientID"], "type" => "structure"}, "SAMLProviderNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w._-]+", "type" => "string"}, "attachmentCountType" => %{"type" => "integer"}, "entityTemporarilyUnmodifiableMessage" => %{"type" => "string"}, "CreateGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "Path" => %{"shape" => "pathType"}}, "required" => ["GroupName"], "type" => "structure"}, "ListInstanceProfilesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathPrefixType"}}, "type" => "structure"}, "GetSSHPublicKeyRequest" => %{"members" => %{"Encoding" => %{"shape" => "encodingType"}, "SSHPublicKeyId" => %{"shape" => "publicKeyIdType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyId", "Encoding"], "type" => "structure"}, "mfaDeviceListType" => %{"member" => %{"shape" => "MFADevice"}, "type" => "list"}, "summaryKeyType" => %{"enum" => ["Users", "UsersQuota", "Groups", "GroupsQuota", "ServerCertificates", "ServerCertificatesQuota", "UserPolicySizeQuota", "GroupPolicySizeQuota", "GroupsPerUserQuota", "SigningCertificatesPerUserQuota", "AccessKeysPerUserQuota", "MFADevices", "MFADevicesInUse", "AccountMFAEnabled", "AccountAccessKeysPresent", "AccountSigningCertificatesPresent", "AttachedPoliciesPerGroupQuota", "AttachedPoliciesPerRoleQuota", "AttachedPoliciesPerUserQuota", "Policies", "PoliciesQuota", "PolicySizeQuota", "PolicyVersionsInUse", "PolicyVersionsInUseQuota", "VersionsPerPolicyQuota"], "type" => "string"}, "SAMLMetadataDocumentType" => %{"max" => 10000000, "min" => 1000, "type" => "string"}, "entityListType" => %{"member" => %{"shape" => "EntityType"}, "type" => "list"}, "DeleteRolePolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "policyNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyName"], "type" => "structure"}, "UploadSigningCertificateRequest" => %{"members" => %{"CertificateBody" => %{"shape" => "certificateBodyType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["CertificateBody"], "type" => "structure"}, "PolicyGroupListType" => %{"member" => %{"shape" => "PolicyGroup"}, "type" => "list"}, "CreateLoginProfileResponse" => %{"members" => %{"LoginProfile" => %{"shape" => "LoginProfile"}}, "required" => ["LoginProfile"], "type" => "structure"}, "serviceNotSupportedMessage" => %{"type" => "string"}, "serviceSpecificCredentialId" => %{"max" => 128, "min" => 20, "pattern" => "[\\w]+", "type" => "string"}, "invalidAuthenticationCodeMessage" => %{"type" => "string"}, "PolicyIdentifierType" => %{"type" => "string"}, "ListServiceSpecificCredentialsRequest" => %{"members" => %{"ServiceName" => %{"shape" => "serviceName"}, "UserName" => %{"shape" => "userNameType"}}, "type" => "structure"}, "GetUserResponse" => %{"members" => %{"User" => %{"shape" => "User"}}, "required" => ["User"], "type" => "structure"}, "GetContextKeysForPrincipalPolicyRequest" => %{"members" => %{"PolicyInputList" => %{"shape" => "SimulationPolicyListType"}, "PolicySourceArn" => %{"shape" => "arnType"}}, "required" => ["PolicySourceArn"], "type" => "structure"}, "ListGroupsForUserRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName"], "type" => "structure"}, "PolicyDetail" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "type" => "structure"}, "noSuchEntityMessage" => %{"type" => "string"}, "ContextKeyValueType" => %{"type" => "string"}, "servicePassword" => %{"sensitive" => true, "type" => "string"}, "PolicySourceType" => %{"enum" => ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"], "type" => "string"}, "ListRolePoliciesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName"], "type" => "structure"}, "ListRolesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Roles" => %{"shape" => "roleListType"}}, "required" => ["Roles"], "type" => "structure"}, "ContextKeyNameType" => %{"max" => 256, "min" => 5, "type" => "string"}, "SimulationPolicyListType" => %{"member" => %{"shape" => "policyDocumentType"}, "type" => "list"}, "CreateAccessKeyResponse" => %{"members" => %{"AccessKey" => %{"shape" => "AccessKey"}}, "required" => ["AccessKey"], "type" => "structure"}, "ManagedPolicyDetail" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AttachmentCount" => %{"shape" => "attachmentCountType"}, "CreateDate" => %{"shape" => "dateType"}, "DefaultVersionId" => %{"shape" => "policyVersionIdType"}, "Description" => %{"shape" => "policyDescriptionType"}, "IsAttachable" => %{"shape" => "booleanType"}, "Path" => %{"shape" => "policyPathType"}, "PolicyId" => %{"shape" => "idType"}, "PolicyName" => %{"shape" => "policyNameType"}, "PolicyVersionList" => %{"shape" => "policyDocumentVersionListType"}, "UpdateDate" => %{"shape" => "dateType"}}, "type" => "structure"}, "virtualMFADeviceName" => %{"min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "ResourceSpecificResultListType" => %{"member" => %{"shape" => "ResourceSpecificResult"}, "type" => "list"}, "GetUserPolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "policyNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "PolicyName"], "type" => "structure"}, "minimumPasswordLengthType" => %{"max" => 128, "min" => 6, "type" => "integer"}, "Statement" => %{"members" => %{"EndPosition" => %{"shape" => "Position"}, "SourcePolicyId" => %{"shape" => "PolicyIdentifierType"}, "SourcePolicyType" => %{"shape" => "PolicySourceType"}, "StartPosition" => %{"shape" => "Position"}}, "type" => "structure"}, "EvaluationResultsListType" => %{"member" => %{"shape" => "EvaluationResult"}, "type" => "list"}, "RoleDetail" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AssumeRolePolicyDocument" => %{"shape" => "policyDocumentType"}, "AttachedManagedPolicies" => %{"shape" => "attachedPoliciesListType"}, "CreateDate" => %{"shape" => "dateType"}, "InstanceProfileList" => %{"shape" => "instanceProfileListType"}, "Path" => %{"shape" => "pathType"}, "RoleId" => %{"shape" => "idType"}, "RoleName" => %{"shape" => "roleNameType"}, "RolePolicyList" => %{"shape" => "policyDetailListType"}}, "type" => "structure"}, "RemoveUserFromGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["GroupName", "UserName"], "type" => "structure"}, "PasswordPolicy" => %{"members" => %{"AllowUsersToChangePassword" => %{"shape" => "booleanType"}, "ExpirePasswords" => %{"shape" => "booleanType"}, "HardExpiry" => %{"shape" => "booleanObjectType"}, "MaxPasswordAge" => %{"shape" => "maxPasswordAgeType"}, "MinimumPasswordLength" => %{"shape" => "minimumPasswordLengthType"}, "PasswordReusePrevention" => %{"shape" => "passwordReusePreventionType"}, "RequireLowercaseCharacters" => %{"shape" => "booleanType"}, "RequireNumbers" => %{"shape" => "booleanType"}, "RequireSymbols" => %{"shape" => "booleanType"}, "RequireUppercaseCharacters" => %{"shape" => "booleanType"}}, "type" => "structure"}, "ListGroupPoliciesRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}}, "required" => ["GroupName"], "type" => "structure"}, "ListEntitiesForPolicyResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "PolicyGroups" => %{"shape" => "PolicyGroupListType"}, "PolicyRoles" => %{"shape" => "PolicyRoleListType"}, "PolicyUsers" => %{"shape" => "PolicyUserListType"}}, "type" => "structure"}, "ServiceSpecificCredentialsListType" => %{"member" => %{"shape" => "ServiceSpecificCredentialMetadata"}, "type" => "list"}, "ActionNameType" => %{"max" => 128, "min" => 3, "type" => "string"}, "duplicateCertificateMessage" => %{"type" => "string"}, "GetAccountSummaryResponse" => %{"members" => %{"SummaryMap" => %{"shape" => "summaryMapType"}}, "type" => "structure"}, "ResyncMFADeviceRequest" => %{"members" => %{"AuthenticationCode1" => %{"shape" => "authenticationCodeType"}, "AuthenticationCode2" => %{"shape" => "authenticationCodeType"}, "SerialNumber" => %{"shape" => "serialNumberType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "SerialNumber", "AuthenticationCode1", "AuthenticationCode2"], "type" => "structure"}, "certificateIdType" => %{"max" => 128, "min" => 24, "pattern" => "[\\w]+", "type" => "string"}, "ListVirtualMFADevicesRequest" => %{"members" => %{"AssignmentStatus" => %{"shape" => "assignmentStatusType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}}, "type" => "structure"}, "GetGroupResponse" => %{"members" => %{"Group" => %{"shape" => "Group"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Users" => %{"shape" => "userListType"}}, "required" => ["Group", "Users"], "type" => "structure"}, "serviceFailureExceptionMessage" => %{"type" => "string"}, "StatementListType" => %{"member" => %{"shape" => "Statement"}, "type" => "list"}, "InstanceProfile" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "CreateDate" => %{"shape" => "dateType"}, "InstanceProfileId" => %{"shape" => "idType"}, "InstanceProfileName" => %{"shape" => "instanceProfileNameType"}, "Path" => %{"shape" => "pathType"}, "Roles" => %{"shape" => "roleListType"}}, "required" => ["Path", "InstanceProfileName", "InstanceProfileId", "Arn", "CreateDate", "Roles"], "type" => "structure"}, "ListSigningCertificatesResponse" => %{"members" => %{"Certificates" => %{"shape" => "certificateListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["Certificates"], "type" => "structure"}, "DetachUserPolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "PolicyArn"], "type" => "structure"}, "SSHPublicKeyListType" => %{"member" => %{"shape" => "SSHPublicKeyMetadata"}, "type" => "list"}, "virtualMFADeviceListType" => %{"member" => %{"shape" => "VirtualMFADevice"}, "type" => "list"}, "DeleteAccessKeyRequest" => %{"members" => %{"AccessKeyId" => %{"shape" => "accessKeyIdType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["AccessKeyId"], "type" => "structure"}, "AddUserToGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["GroupName", "UserName"], "type" => "structure"}, "UploadSSHPublicKeyResponse" => %{"members" => %{"SSHPublicKey" => %{"shape" => "SSHPublicKey"}}, "type" => "structure"}, "ListPoliciesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Policies" => %{"shape" => "policyListType"}}, "type" => "structure"}, "credentialReportExpiredExceptionMessage" => %{"type" => "string"}, "DeleteSAMLProviderRequest" => %{"members" => %{"SAMLProviderArn" => %{"shape" => "arnType"}}, "required" => ["SAMLProviderArn"], "type" => "structure"}, "GetAccessKeyLastUsedResponse" => %{"members" => %{"AccessKeyLastUsed" => %{"shape" => "AccessKeyLastUsed"}, "UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "OrganizationsDecisionDetail" => %{"members" => %{"AllowedByOrganizations" => %{"shape" => "booleanType"}}, "type" => "structure"}, "ListSSHPublicKeysResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "SSHPublicKeys" => %{"shape" => "SSHPublicKeyListType"}}, "type" => "structure"}, "attachedPoliciesListType" => %{"member" => %{"shape" => "AttachedPolicy"}, "type" => "list"}, "ListMFADevicesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "EvaluationResult" => %{"members" => %{"EvalActionName" => %{"shape" => "ActionNameType"}, "EvalDecision" => %{"shape" => "PolicyEvaluationDecisionType"}, "EvalDecisionDetails" => %{"shape" => "EvalDecisionDetailsType"}, "EvalResourceName" => %{"shape" => "ResourceNameType"}, "MatchedStatements" => %{"shape" => "StatementListType"}, "MissingContextValues" => %{"shape" => "ContextKeyNamesResultListType"}, "OrganizationsDecisionDetail" => %{"shape" => "OrganizationsDecisionDetail"}, "ResourceSpecificResults" => %{"shape" => "ResourceSpecificResultListType"}}, "required" => ["EvalActionName", "EvalDecision"], "type" => "structure"}, "deleteConflictMessage" => %{"type" => "string"}, "ListSAMLProvidersResponse" => %{"members" => %{"SAMLProviderList" => %{"shape" => "SAMLProviderListType"}}, "type" => "structure"}, "Policy" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AttachmentCount" => %{"shape" => "attachmentCountType"}, "CreateDate" => %{"shape" => "dateType"}, "DefaultVersionId" => %{"shape" => "policyVersionIdType"}, "Description" => %{"shape" => "policyDescriptionType"}, "IsAttachable" => %{"shape" => "booleanType"}, "Path" => %{"shape" => "policyPathType"}, "PolicyId" => %{"shape" => "idType"}, "PolicyName" => %{"shape" => "policyNameType"}, "UpdateDate" => %{"shape" => "dateType"}}, "type" => "structure"}, "invalidPublicKeyMessage" => %{"type" => "string"}, "ListAccountAliasesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}}, "type" => "structure"}, "DetachGroupPolicyRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyArn" => %{"shape" => "arnType"}}, "required" => ["GroupName", "PolicyArn"], "type" => "structure"}, "AccessKey" => %{"members" => %{"AccessKeyId" => %{"shape" => "accessKeyIdType"}, "CreateDate" => %{"shape" => "dateType"}, "SecretAccessKey" => %{"shape" => "accessKeySecretType"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "AccessKeyId", "Status", "SecretAccessKey"], "type" => "structure"}, "GetContextKeysForPolicyResponse" => %{"members" => %{"ContextKeyNames" => %{"shape" => "ContextKeyNamesResultListType"}}, "type" => "structure"}, "unrecognizedPublicKeyEncodingMessage" => %{"type" => "string"}, "AttachUserPolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "PolicyArn"], "type" => "structure"}, "ListOpenIDConnectProvidersResponse" => %{"members" => %{"OpenIDConnectProviderList" => %{"shape" => "OpenIDConnectProviderListType"}}, "type" => "structure"}, "GetPolicyResponse" => %{"members" => %{"Policy" => %{"shape" => "Policy"}}, "type" => "structure"}, "UnmodifiableEntityException" => %{"error" => %{"code" => "UnmodifiableEntity", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "unmodifiableEntityMessage"}}, "type" => "structure"}, "ColumnNumber" => %{"type" => "integer"}, "UpdateAccountPasswordPolicyRequest" => %{"members" => %{"AllowUsersToChangePassword" => %{"shape" => "booleanType"}, "HardExpiry" => %{"shape" => "booleanObjectType"}, "MaxPasswordAge" => %{"shape" => "maxPasswordAgeType"}, "MinimumPasswordLength" => %{"shape" => "minimumPasswordLengthType"}, "PasswordReusePrevention" => %{"shape" => "passwordReusePreventionType"}, "RequireLowercaseCharacters" => %{"shape" => "booleanType"}, "RequireNumbers" => %{"shape" => "booleanType"}, "RequireSymbols" => %{"shape" => "booleanType"}, "RequireUppercaseCharacters" => %{"shape" => "booleanType"}}, "type" => "structure"}, "EvalDecisionSourceType" => %{"max" => 256, "min" => 3, "type" => "string"}, "LineNumber" => %{"type" => "integer"}, "ChangePasswordRequest" => %{"members" => %{"NewPassword" => %{"shape" => "passwordType"}, "OldPassword" => %{"shape" => "passwordType"}}, "required" => ["OldPassword", "NewPassword"], "type" => "structure"}, "DeleteConflictException" => %{"error" => %{"code" => "DeleteConflict", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "deleteConflictMessage"}}, "type" => "structure"}, "ListUsersResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Users" => %{"shape" => "userListType"}}, "required" => ["Users"], "type" => "structure"}, "DeleteRoleRequest" => %{"members" => %{"RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName"], "type" => "structure"}, "thumbprintListType" => %{"member" => %{"shape" => "thumbprintType"}, "type" => "list"}, "LimitExceededException" => %{"error" => %{"code" => "LimitExceeded", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "limitExceededMessage"}}, "type" => "structure"}, "DetachRolePolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyArn"], "type" => "structure"}, "PolicyEvaluationDecisionType" => %{"enum" => ["allowed", "explicitDeny", "implicitDeny"], "type" => "string"}, "DeleteUserRequest" => %{"members" => %{"UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName"], "type" => "structure"}, "ListInstanceProfilesForRoleRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName"], "type" => "structure"}, "customSuffixType" => %{"max" => 64, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "keyPairMismatchMessage" => %{"type" => "string"}, "EntityType" => %{"enum" => ["User", "Role", "Group", "LocalManagedPolicy", "AWSManagedPolicy"], "type" => "string"}, "UpdateRoleDescriptionResponse" => %{"members" => %{"Role" => %{"shape" => "Role"}}, "type" => "structure"}, "EnableMFADeviceRequest" => %{"members" => %{"AuthenticationCode1" => %{"shape" => "authenticationCodeType"}, "AuthenticationCode2" => %{"shape" => "authenticationCodeType"}, "SerialNumber" => %{"shape" => "serialNumberType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "SerialNumber", "AuthenticationCode1", "AuthenticationCode2"], "type" => "structure"}, "SetDefaultPolicyVersionRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "VersionId" => %{"shape" => "policyVersionIdType"}}, "required" => ["PolicyArn", "VersionId"], "type" => "structure"}, "DeletePolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}}, "required" => ["PolicyArn"], "type" => "structure"}, "DuplicateCertificateException" => %{"error" => %{"code" => "DuplicateCertificate", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "duplicateCertificateMessage"}}, "type" => "structure"}, "SigningCertificate" => %{"members" => %{"CertificateBody" => %{"shape" => "certificateBodyType"}, "CertificateId" => %{"shape" => "certificateIdType"}, "Status" => %{"shape" => "statusType"}, "UploadDate" => %{"shape" => "dateType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "CertificateId", "CertificateBody", "Status"], "type" => "structure"}, "publicKeyMaterialType" => %{"max" => 16384, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "type" => "string"}, "ContextKeyTypeEnum" => %{"enum" => ["string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date", "dateList"], "type" => "string"}, "authenticationCodeType" => %{"max" => 6, "min" => 6, "pattern" => "[\\d]+", "type" => "string"}, "invalidCertificateMessage" => %{"type" => "string"}, "clientIDListType" => %{"member" => %{"shape" => "clientIDType"}, "type" => "list"}, "serviceUserName" => %{"max" => 200, "min" => 17, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "accountAliasListType" => %{"member" => %{"shape" => "accountAliasType"}, "type" => "list"}, "groupListType" => %{"member" => %{"shape" => "Group"}, "type" => "list"}, "unmodifiableEntityMessage" => %{"type" => "string"}, "MalformedCertificateException" => %{"error" => %{"code" => "MalformedCertificate", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "malformedCertificateMessage"}}, "type" => "structure"}, "CreateAccountAliasRequest" => %{"members" => %{"AccountAlias" => %{"shape" => "accountAliasType"}}, "required" => ["AccountAlias"], "type" => "structure"}, "ListUserPoliciesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "PolicyNames" => %{"shape" => "policyNameListType"}}, "required" => ["PolicyNames"], "type" => "structure"}, "BootstrapDatum" => %{"sensitive" => true, "type" => "blob"}, "ListRolesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathPrefixType"}}, "type" => "structure"}, "CreateLoginProfileRequest" => %{"members" => %{"Password" => %{"shape" => "passwordType"}, "PasswordResetRequired" => %{"shape" => "booleanType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "Password"], "type" => "structure"}, "ListServerCertificatesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathPrefixType"}}, "type" => "structure"}, "GetRolePolicyRequest" => %{"members" => %{"PolicyName" => %{"shape" => "policyNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyName"], "type" => "structure"}, "OpenIDConnectProviderListEntry" => %{"members" => %{"Arn" => %{"shape" => "arnType"}}, "type" => "structure"}, "DeletePolicyVersionRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "VersionId" => %{"shape" => "policyVersionIdType"}}, "required" => ["PolicyArn", "VersionId"], "type" => "structure"}, "ListGroupsRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathPrefixType"}}, "type" => "structure"}, "CreateSAMLProviderRequest" => %{"members" => %{"Name" => %{"shape" => "SAMLProviderNameType"}, "SAMLMetadataDocument" => %{"shape" => "SAMLMetadataDocumentType"}}, "required" => ["SAMLMetadataDocument", "Name"], "type" => "structure"}, "PolicyEvaluationException" => %{"error" => %{"code" => "PolicyEvaluation", "httpStatusCode" => 500}, "exception" => true, "members" => %{"message" => %{"shape" => "policyEvaluationErrorMessage"}}, "type" => "structure"}, "ListUsersRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathPrefixType"}}, "type" => "structure"}, "ListServiceSpecificCredentialsResponse" => %{"members" => %{"ServiceSpecificCredentials" => %{"shape" => "ServiceSpecificCredentialsListType"}}, "type" => "structure"}, "SimulatePolicyResponse" => %{"members" => %{"EvaluationResults" => %{"shape" => "EvaluationResultsListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "type" => "structure"}, "ContextKeyValueListType" => %{"member" => %{"shape" => "ContextKeyValueType"}, "type" => "list"}, "CreatePolicyRequest" => %{"members" => %{"Description" => %{"shape" => "policyDescriptionType"}, "Path" => %{"shape" => "policyPathType"}, "PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "required" => ["PolicyName", "PolicyDocument"], "type" => "structure"}, "CredentialReportNotPresentException" => %{"error" => %{"code" => "ReportNotPresent", "httpStatusCode" => 410, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "credentialReportNotPresentExceptionMessage"}}, "type" => "structure"}, "UpdateSAMLProviderResponse" => %{"members" => %{"SAMLProviderArn" => %{"shape" => "arnType"}}, "type" => "structure"}, "ReportFormatType" => %{"enum" => ["text/csv"], "type" => "string"}, "instanceProfileListType" => %{"member" => %{"shape" => "InstanceProfile"}, "type" => "list"}, "stringType" => %{"type" => "string"}, "accessKeyMetadataListType" => %{"member" => %{"shape" => "AccessKeyMetadata"}, "type" => "list"}, "PolicyUser" => %{"members" => %{"UserId" => %{"shape" => "idType"}, "UserName" => %{"shape" => "userNameType"}}, "type" => "structure"}, "ListAccountAliasesResponse" => %{"members" => %{"AccountAliases" => %{"shape" => "accountAliasListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["AccountAliases"], "type" => "structure"}, "ResetServiceSpecificCredentialResponse" => %{"members" => %{"ServiceSpecificCredential" => %{"shape" => "ServiceSpecificCredential"}}, "type" => "structure"}, "ResourceHandlingOptionType" => %{"max" => 64, "min" => 1, "type" => "string"}, "GetAccountAuthorizationDetailsRequest" => %{"members" => %{"Filter" => %{"shape" => "entityListType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}}, "type" => "structure"}, "instanceProfileNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "groupDetailListType" => %{"member" => %{"shape" => "GroupDetail"}, "type" => "list"}, "AttachRolePolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyArn"], "type" => "structure"}, "DeleteAccountAliasRequest" => %{"members" => %{"AccountAlias" => %{"shape" => "accountAliasType"}}, "required" => ["AccountAlias"], "type" => "structure"}, "GetServerCertificateRequest" => %{"members" => %{"ServerCertificateName" => %{"shape" => "serverCertificateNameType"}}, "required" => ["ServerCertificateName"], "type" => "structure"}, "serverCertificateMetadataListType" => %{"member" => %{"shape" => "ServerCertificateMetadata"}, "type" => "list"}, "InvalidAuthenticationCodeException" => %{"error" => %{"code" => "InvalidAuthenticationCode", "httpStatusCode" => 403, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "invalidAuthenticationCodeMessage"}}, "type" => "structure"}, "GetPolicyRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}}, "required" => ["PolicyArn"], "type" => "structure"}, "AddRoleToInstanceProfileRequest" => %{"members" => %{"InstanceProfileName" => %{"shape" => "instanceProfileNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["InstanceProfileName", "RoleName"], "type" => "structure"}, "limitExceededMessage" => %{"type" => "string"}, "certificateBodyType" => %{"max" => 16384, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", "type" => "string"}, "UpdateServiceSpecificCredentialRequest" => %{"members" => %{"ServiceSpecificCredentialId" => %{"shape" => "serviceSpecificCredentialId"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["ServiceSpecificCredentialId", "Status"], "type" => "structure"}, "publicKeyIdType" => %{"max" => 128, "min" => 20, "pattern" => "[\\w]+", "type" => "string"}, "SAMLProviderListType" => %{"member" => %{"shape" => "SAMLProviderListEntry"}, "type" => "list"}, "duplicateSSHPublicKeyMessage" => %{"type" => "string"}, "ResetServiceSpecificCredentialRequest" => %{"members" => %{"ServiceSpecificCredentialId" => %{"shape" => "serviceSpecificCredentialId"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["ServiceSpecificCredentialId"], "type" => "structure"}, "GetLoginProfileResponse" => %{"members" => %{"LoginProfile" => %{"shape" => "LoginProfile"}}, "required" => ["LoginProfile"], "type" => "structure"}, "ListAccessKeysResponse" => %{"members" => %{"AccessKeyMetadata" => %{"shape" => "accessKeyMetadataListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["AccessKeyMetadata"], "type" => "structure"}, "userListType" => %{"member" => %{"shape" => "User"}, "type" => "list"}, "AttachedPolicy" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "type" => "structure"}, "passwordPolicyViolationMessage" => %{"type" => "string"}, "entityAlreadyExistsMessage" => %{"type" => "string"}, "markerType" => %{"max" => 320, "min" => 1, "pattern" => "[\\u0020-\\u00FF]+", "type" => "string"}, "ListSigningCertificatesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "GetPolicyVersionResponse" => %{"members" => %{"PolicyVersion" => %{"shape" => "PolicyVersion"}}, "type" => "structure"}, "GetRoleResponse" => %{"members" => %{"Role" => %{"shape" => "Role"}}, "required" => ["Role"], "type" => "structure"}, "DeleteSSHPublicKeyRequest" => %{"members" => %{"SSHPublicKeyId" => %{"shape" => "publicKeyIdType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SSHPublicKeyId"], "type" => "structure"}, "roleListType" => %{"member" => %{"shape" => "Role"}, "type" => "list"}, "ListVirtualMFADevicesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "VirtualMFADevices" => %{"shape" => "virtualMFADeviceListType"}}, "required" => ["VirtualMFADevices"], "type" => "structure"}, "passwordReusePreventionType" => %{"box" => true, "max" => 24, "min" => 1, "type" => "integer"}, "PutRolePolicyRequest" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "UpdateSigningCertificateRequest" => %{"members" => %{"CertificateId" => %{"shape" => "certificateIdType"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["CertificateId", "Status"], "type" => "structure"}, "UpdateSAMLProviderRequest" => %{"members" => %{"SAMLMetadataDocument" => %{"shape" => "SAMLMetadataDocumentType"}, "SAMLProviderArn" => %{"shape" => "arnType"}}, "required" => ["SAMLMetadataDocument", "SAMLProviderArn"], "type" => "structure"}, "UpdateUserRequest" => %{"members" => %{"NewPath" => %{"shape" => "pathType"}, "NewUserName" => %{"shape" => "userNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName"], "type" => "structure"}, "ReportContentType" => %{"type" => "blob"}, "UploadServerCertificateRequest" => %{"members" => %{"CertificateBody" => %{"shape" => "certificateBodyType"}, "CertificateChain" => %{"shape" => "certificateChainType"}, "Path" => %{"shape" => "pathType"}, "PrivateKey" => %{"shape" => "privateKeyType"}, "ServerCertificateName" => %{"shape" => "serverCertificateNameType"}}, "required" => ["ServerCertificateName", "CertificateBody", "PrivateKey"], "type" => "structure"}, "PolicyRole" => %{"members" => %{"RoleId" => %{"shape" => "idType"}, "RoleName" => %{"shape" => "roleNameType"}}, "type" => "structure"}, "accountAliasType" => %{"max" => 63, "min" => 3, "pattern" => "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$", "type" => "string"}, "UpdateAccessKeyRequest" => %{"members" => %{"AccessKeyId" => %{"shape" => "accessKeyIdType"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["AccessKeyId", "Status"], "type" => "structure"}, "ListEntitiesForPolicyRequest" => %{"members" => %{"EntityFilter" => %{"shape" => "EntityType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "pathType"}, "PolicyArn" => %{"shape" => "arnType"}}, "required" => ["PolicyArn"], "type" => "structure"}, "roleDescriptionType" => %{"max" => 1000, "pattern" => "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*", "type" => "string"}, "assignmentStatusType" => %{"enum" => ["Assigned", "Unassigned", "Any"], "type" => "string"}, "PasswordPolicyViolationException" => %{"error" => %{"code" => "PasswordPolicyViolation", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "passwordPolicyViolationMessage"}}, "type" => "structure"}, "invalidUserTypeMessage" => %{"type" => "string"}, "policyDocumentVersionListType" => %{"member" => %{"shape" => "PolicyVersion"}, "type" => "list"}, "UploadServerCertificateResponse" => %{"members" => %{"ServerCertificateMetadata" => %{"shape" => "ServerCertificateMetadata"}}, "type" => "structure"}, "UploadSigningCertificateResponse" => %{"members" => %{"Certificate" => %{"shape" => "SigningCertificate"}}, "required" => ["Certificate"], "type" => "structure"}, "credentialReportNotPresentExceptionMessage" => %{"type" => "string"}, "InvalidPublicKeyException" => %{"error" => %{"code" => "InvalidPublicKey", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "invalidPublicKeyMessage"}}, "type" => "structure"}, "NoSuchEntityException" => %{"error" => %{"code" => "NoSuchEntity", "httpStatusCode" => 404, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "noSuchEntityMessage"}}, "type" => "structure"}, "ServiceSpecificCredential" => %{"members" => %{"CreateDate" => %{"shape" => "dateType"}, "ServiceName" => %{"shape" => "serviceName"}, "ServicePassword" => %{"shape" => "servicePassword"}, "ServiceSpecificCredentialId" => %{"shape" => "serviceSpecificCredentialId"}, "ServiceUserName" => %{"shape" => "serviceUserName"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["CreateDate", "ServiceName", "ServiceUserName", "ServicePassword", "ServiceSpecificCredentialId", "UserName", "Status"], "type" => "structure"}, "certificateListType" => %{"member" => %{"shape" => "SigningCertificate"}, "type" => "list"}, "CreateGroupResponse" => %{"members" => %{"Group" => %{"shape" => "Group"}}, "required" => ["Group"], "type" => "structure"}, "ListOpenIDConnectProvidersRequest" => %{"members" => %{}, "type" => "structure"}, "ListAttachedGroupPoliciesResponse" => %{"members" => %{"AttachedPolicies" => %{"shape" => "attachedPoliciesListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "type" => "structure"}, "PutUserPolicyRequest" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "ListMFADevicesResponse" => %{"members" => %{"IsTruncated" => %{"shape" => "booleanType"}, "MFADevices" => %{"shape" => "mfaDeviceListType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["MFADevices"], "type" => "structure"}, "credentialReportNotReadyExceptionMessage" => %{"type" => "string"}, "ServiceSpecificCredentialMetadata" => %{"members" => %{"CreateDate" => %{"shape" => "dateType"}, "ServiceName" => %{"shape" => "serviceName"}, "ServiceSpecificCredentialId" => %{"shape" => "serviceSpecificCredentialId"}, "ServiceUserName" => %{"shape" => "serviceUserName"}, "Status" => %{"shape" => "statusType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "Status", "ServiceUserName", "CreateDate", "ServiceSpecificCredentialId", "ServiceName"], "type" => "structure"}, "ListAttachedGroupPoliciesRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "policyPathType"}}, "required" => ["GroupName"], "type" => "structure"}, "CreateUserRequest" => %{"members" => %{"Path" => %{"shape" => "pathType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName"], "type" => "structure"}, "booleanType" => %{"type" => "boolean"}, "OpenIDConnectProviderUrlType" => %{"max" => 255, "min" => 1, "type" => "string"}, "ResourceNameListType" => %{"member" => %{"shape" => "ResourceNameType"}, "type" => "list"}, "policyVersionIdType" => %{"pattern" => "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?", "type" => "string"}, "GetGroupPolicyRequest" => %{"members" => %{"GroupName" => %{"shape" => "groupNameType"}, "PolicyName" => %{"shape" => "policyNameType"}}, "required" => ["GroupName", "PolicyName"], "type" => "structure"}, "roleNameType" => %{"max" => 64, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "GetPolicyVersionRequest" => %{"members" => %{"PolicyArn" => %{"shape" => "arnType"}, "VersionId" => %{"shape" => "policyVersionIdType"}}, "required" => ["PolicyArn", "VersionId"], "type" => "structure"}, "GetUserPolicyResponse" => %{"members" => %{"PolicyDocument" => %{"shape" => "policyDocumentType"}, "PolicyName" => %{"shape" => "policyNameType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "PolicyName", "PolicyDocument"], "type" => "structure"}, "EntityAlreadyExistsException" => %{"error" => %{"code" => "EntityAlreadyExists", "httpStatusCode" => 409, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "entityAlreadyExistsMessage"}}, "type" => "structure"}, "AccessKeyLastUsed" => %{"members" => %{"LastUsedDate" => %{"shape" => "dateType"}, "Region" => %{"shape" => "stringType"}, "ServiceName" => %{"shape" => "stringType"}}, "required" => ["LastUsedDate", "ServiceName", "Region"], "type" => "structure"}, "idType" => %{"max" => 128, "min" => 16, "pattern" => "[\\w]+", "type" => "string"}, "ListAttachedRolePoliciesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "policyPathType"}, "RoleName" => %{"shape" => "roleNameType"}}, "required" => ["RoleName"], "type" => "structure"}, "SAMLProviderListEntry" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "CreateDate" => %{"shape" => "dateType"}, "ValidUntil" => %{"shape" => "dateType"}}, "type" => "structure"}, "CreateInstanceProfileRequest" => %{"members" => %{"InstanceProfileName" => %{"shape" => "instanceProfileNameType"}, "Path" => %{"shape" => "pathType"}}, "required" => ["InstanceProfileName"], "type" => "structure"}, "ListAttachedUserPoliciesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PathPrefix" => %{"shape" => "policyPathType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName"], "type" => "structure"}, "DeactivateMFADeviceRequest" => %{"members" => %{"SerialNumber" => %{"shape" => "serialNumberType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName", "SerialNumber"], "type" => "structure"}, "GetOpenIDConnectProviderResponse" => %{"members" => %{"ClientIDList" => %{"shape" => "clientIDListType"}, "CreateDate" => %{"shape" => "dateType"}, "ThumbprintList" => %{"shape" => "thumbprintListType"}, "Url" => %{"shape" => "OpenIDConnectProviderUrlType"}}, "type" => "structure"}, "CreatePolicyVersionResponse" => %{"members" => %{"PolicyVersion" => %{"shape" => "PolicyVersion"}}, "type" => "structure"}, "policyPathType" => %{"pattern" => "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/", "type" => "string"}, "SimulateCustomPolicyRequest" => %{"members" => %{"ActionNames" => %{"shape" => "ActionNameListType"}, "CallerArn" => %{"shape" => "ResourceNameType"}, "ContextEntries" => %{"shape" => "ContextEntryListType"}, "Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "PolicyInputList" => %{"shape" => "SimulationPolicyListType"}, "ResourceArns" => %{"shape" => "ResourceNameListType"}, "ResourceHandlingOption" => %{"shape" => "ResourceHandlingOptionType"}, "ResourceOwner" => %{"shape" => "ResourceNameType"}, "ResourcePolicy" => %{"shape" => "policyDocumentType"}}, "required" => ["PolicyInputList", "ActionNames"], "type" => "structure"}, "GetLoginProfileRequest" => %{"members" => %{"UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName"], "type" => "structure"}, "ListInstanceProfilesForRoleResponse" => %{"members" => %{"InstanceProfiles" => %{"shape" => "instanceProfileListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}}, "required" => ["InstanceProfiles"], "type" => "structure"}, "CreateAccessKeyRequest" => %{"members" => %{"UserName" => %{"shape" => "existingUserNameType"}}, "type" => "structure"}, "DeleteInstanceProfileRequest" => %{"members" => %{"InstanceProfileName" => %{"shape" => "instanceProfileNameType"}}, "required" => ["InstanceProfileName"], "type" => "structure"}, "ListUserPoliciesRequest" => %{"members" => %{"Marker" => %{"shape" => "markerType"}, "MaxItems" => %{"shape" => "maxItemsType"}, "UserName" => %{"shape" => "existingUserNameType"}}, "required" => ["UserName"], "type" => "structure"}, "publicKeyFingerprintType" => %{"max" => 48, "min" => 48, "pattern" => "[:\\w]+", "type" => "string"}, "policyNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "ServerCertificate" => %{"members" => %{"CertificateBody" => %{"shape" => "certificateBodyType"}, "CertificateChain" => %{"shape" => "certificateChainType"}, "ServerCertificateMetadata" => %{"shape" => "ServerCertificateMetadata"}}, "required" => ["ServerCertificateMetadata", "CertificateBody"], "type" => "structure"}, "PolicyRoleListType" => %{"member" => %{"shape" => "PolicyRole"}, "type" => "list"}, "encodingType" => %{"enum" => ["SSH", "PEM"], "type" => "string"}, "serverCertificateNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "Group" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "CreateDate" => %{"shape" => "dateType"}, "GroupId" => %{"shape" => "idType"}, "GroupName" => %{"shape" => "groupNameType"}, "Path" => %{"shape" => "pathType"}}, "required" => ["Path", "GroupName", "GroupId", "Arn", "CreateDate"], "type" => "structure"}, "GetAccountAuthorizationDetailsResponse" => %{"members" => %{"GroupDetailList" => %{"shape" => "groupDetailListType"}, "IsTruncated" => %{"shape" => "booleanType"}, "Marker" => %{"shape" => "markerType"}, "Policies" => %{"shape" => "ManagedPolicyDetailListType"}, "RoleDetailList" => %{"shape" => "roleDetailListType"}, "UserDetailList" => %{"shape" => "userDetailListType"}}, "type" => "structure"}, "userNameType" => %{"max" => 64, "min" => 1, "pattern" => "[\\w+=,.@-]+", "type" => "string"}, "CreateServiceSpecificCredentialRequest" => %{"members" => %{"ServiceName" => %{"shape" => "serviceName"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "ServiceName"], "type" => "structure"}, "GroupDetail" => %{"members" => %{"Arn" => %{"shape" => "arnType"}, "AttachedManagedPolicies" => %{"shape" => "attachedPoliciesListType"}, "CreateDate" => %{"shape" => "dateType"}, "GroupId" => %{"shape" => "idType"}, "GroupName" => %{"shape" => "groupNameType"}, "GroupPolicyList" => %{"shape" => "policyDetailListType"}, "Path" => %{"shape" => "pathType"}}, "type" => "structure"}, "InvalidInputException" => %{"error" => %{"code" => "InvalidInput", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "invalidInputMessage"}}, "type" => "structure"}, "InvalidCertificateException" => %{"error" => %{"code" => "InvalidCertificate", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "invalidCertificateMessage"}}, "type" => "structure"}, "KeyPairMismatchException" => %{"error" => %{"code" => "KeyPairMismatch", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "keyPairMismatchMessage"}}, "type" => "structure"}, "DuplicateSSHPublicKeyException" => %{"error" => %{"code" => "DuplicateSSHPublicKey", "httpStatusCode" => 400, "senderFault" => true}, "exception" => true, "members" => %{"message" => %{"shape" => "duplicateSSHPublicKeyMessage"}}, "type" => "structure"}, "GenerateCredentialReportResponse" => %{"members" => %{"Description" => %{"shape" => "ReportStateDescriptionType"}, "State" => %{"shape" => "ReportStateType"}}, "type" => "structure"}, "MFADevice" => %{"members" => %{"EnableDate" => %{"shape" => "dateType"}, "SerialNumber" => %{"shape" => "serialNumberType"}, "UserName" => %{"shape" => "userNameType"}}, "required" => ["UserName", "SerialNumber", "EnableDate"], "type" => "structure"}, "OpenIDConnectProviderListType" => %{"member" => %{"shape" => "OpenIDConnectProviderListEntry"}, "type" => "list"}, "DeleteServerCertificateRequest" => %{"members" => %{"ServerCertificateName" => %{"shape" => "serverCertificateNameType"}}, "required" => ["ServerCertificateName"], "type" => "structure"}}
  end
end