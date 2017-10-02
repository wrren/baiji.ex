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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SimulatePrincipalPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetUserPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetInstanceProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified service-specific credential.
  """
  def delete_service_specific_credential(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteServiceSpecificCredential",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAttachedUserPolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResyncMFADevice",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAccountAlias",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachUserPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListRoles",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListPolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAccountSummary",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ChangePassword",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Lists information about the IAM OpenID Connect (OIDC) provider resource
  objects defined in the AWS account.
  """
  def list_open_i_d_connect_providers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListOpenIDConnectProviders",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetContextKeysForPrincipalPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAttachedRolePolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListRolePolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Lists the IAM groups that the specified IAM user belongs to.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListGroupsForUser",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachUserPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAccountAlias",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Returns information about the specified OpenID Connect (OIDC) provider
  resource object in IAM.
  """
  def get_open_i_d_connect_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetOpenIDConnectProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListPolicyVersions",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetUser",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Modifies the description of a role.
  """
  def update_role_description(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateRoleDescription",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteServerCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateSAMLProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Adds the specified user to the specified group.
  """
  def add_user_to_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddUserToGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePolicyVersion",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateUser",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateServiceSpecificCredential",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateOpenIDConnectProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeactivateMFADevice",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteOpenIDConnectProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSSHPublicKeys",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteVirtualMFADevice",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified IAM group. The group must not contain any users or
  have any attached policies.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateLoginProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AttachGroupPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GenerateCredentialReport",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateServerCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddRoleToInstanceProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ResetServiceSpecificCredential",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SetDefaultPolicyVersion",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateSAMLProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateUser",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSAMLProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListInstanceProfiles",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Deletes the password policy for the AWS account. There are no parameters.
  """
  def delete_account_password_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAccountPasswordPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteGroupPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutUserPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListMFADevices",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Returns a list of IAM users that are in the specified IAM group. You can
  paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the user name and password-creation date for the specified IAM
  user. If the user has not been assigned a password, the action returns a
  404 (`NoSuchEntity`) error.
  """
  def get_login_profile(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetLoginProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Retrieves the password policy for the AWS account. For more information
  about using a password policy, go to [Managing an IAM Password
  Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  """
  def get_account_password_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAccountPasswordPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListServiceSpecificCredentials",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateServiceLinkedRole",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListEntitiesForPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPolicyVersion",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateServiceSpecificCredential",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveClientIDFromOpenIDConnectProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "SimulateCustomPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachGroupPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListVirtualMFADevices",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateOpenIDConnectProviderThumbprint",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteRole",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveRoleFromInstanceProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListServerCertificates",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSAMLProviders",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Deletes the specified IAM user. The user must not belong to any groups or
  have any access keys, signing certificates, or attached policies.
  """
  def delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteUser",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UploadSSHPublicKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UploadServerCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetRole",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListUsers",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteAccessKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Lists the IAM groups that have the specified path prefix.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListGroups",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetCredentialReport",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Enables the specified MFA device and associates it with the specified IAM
  user. When enabled, the MFA device is required for every subsequent login
  by the IAM user associated with the device.
  """
  def enable_m_f_a_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "EnableMFADevice",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
  @doc """
  Removes the specified user from the specified group.
  """
  def remove_user_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "RemoveUserFromGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateRole",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateAccessKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSAMLProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAccountAuthorizationDetails",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetGroupPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListUserPolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateAccountPasswordPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateInstanceProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteUserPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteInstanceProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListGroupPolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetSSHPublicKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateAssumeRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetContextKeysForCustomPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetAccessKeyLastUsed",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAccountAliases",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateAccessKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeletePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAttachedGroupPolicies",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateGroup",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "AddClientIDToOpenIDConnectProvider",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreatePolicyVersion",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteLoginProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateSigningCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSigningCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "PutGroupPolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListAccessKeys",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListInstanceProfilesForRole",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UpdateSSHPublicKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateVirtualMFADevice",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DetachRolePolicy",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "GetServerCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "ListSigningCertificates",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "UploadSigningCertificate",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "DeleteSSHPublicKey",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
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
      service:        "iam",
      endpoint:       "/",
      input:          input,
      options:        options,
      action:         "CreateLoginProfile",
      
      type:           :xml,
      version:        "2010-05-08",
      method:         :post
    }
  end
  
end