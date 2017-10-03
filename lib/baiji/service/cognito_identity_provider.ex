defmodule Baiji.CognitoIdentityProvider do
  @moduledoc """
  Using the Amazon Cognito User Pools API, you can create a user pool to
  manage directories and users. You can authenticate a user to obtain tokens
  related to user identity and access policies.

  This API reference provides information about user pools in Amazon Cognito
  User Pools.

  For more information, see the Amazon Cognito Documentation.
  """
  
  @doc """
  Describes a resource server.
  """
  def describe_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeResourceServer",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes an identity provider for a user pool.
  """
  def delete_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteIdentityProvider",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the device status as an administrator.

  Requires developer credentials.
  """
  def admin_update_device_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminUpdateDeviceStatus",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ChangePassword",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Signs out users from all devices, as an administrator.

  Requires developer credentials.
  """
  def admin_user_global_sign_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminUserGlobalSignOut",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Removes the specified user from the specified group.

  Requires developer credentials.
  """
  def admin_remove_user_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminRemoveUserFromGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Returns the configuration information and metadata of the specified user
  pool.
  """
  def describe_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPool",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Confirms tracking of the device. This API call is the call that begins
  device tracking.
  """
  def confirm_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ConfirmDevice",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Responds to the authentication challenge.
  """
  def respond_to_auth_challenge(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RespondToAuthChallenge",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopUserImportJob",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates an identity provider for a user pool.
  """
  def create_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateIdentityProvider",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the user pools associated with an AWS account.
  """
  def list_user_pools(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUserPools",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the clients that have been created for the specified user pool.
  """
  def list_user_pool_clients(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUserPoolClients",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the device status.
  """
  def update_device_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateDeviceStatus",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Sets all the user settings for a specified user name. Works on any user.

  Requires developer credentials.
  """
  def admin_set_user_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminSetUserSettings",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Initiates the authentication flow, as an administrator.

  Requires developer credentials.
  """
  def admin_initiate_auth(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminInitiateAuth",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the user attributes and metadata for a user.
  """
  def get_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the specified user pool with the specified attributes.
  """
  def update_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateUserPool",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the user attribute verification code for the specified attribute name.
  """
  def get_user_attribute_verification_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetUserAttributeVerificationCode",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the groups that the user belongs to.

  Requires developer credentials.
  """
  def admin_list_groups_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminListGroupsForUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the specified user's attributes, including developer attributes, as
  an administrator. Works on any user.

  For custom attributes, you must prepend the `custom:` prefix to the
  attribute name.

  In addition to updating user attributes, this API can also be used to mark
  phone and email as verified.

  Requires developer credentials.
  """
  def admin_update_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminUpdateUserAttributes",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Adds the specified user to the specified group.

  Requires developer credentials.
  """
  def admin_add_user_to_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminAddUserToGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the resource servers for a user pool.
  """
  def list_resource_servers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListResourceServers",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists information about all identity providers for a user pool.
  """
  def list_identity_providers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListIdentityProviders",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Disables the user from signing in with the specified external (SAML or
  social) identity provider. If the user to disable is a Cognito User Pools
  native username + password user, they are not permitted to use their
  password to sign-in. If the user to disable is a linked external IdP user,
  any link between that user and an existing user is removed. The next time
  the external user (no longer attached to the previously linked
  `DestinationUser`) signs in, they must create a new user account. See
  [AdminLinkProviderForUser](API_AdminLinkProviderForUser.html).

  This action is enabled only for admin access and requires developer
  credentials.

  The `ProviderName` must match the value specified when creating an IdP for
  the pool.

  To disable a native username + password user, the `ProviderName` value must
  be `Cognito` and the `ProviderAttributeName` must be `Cognito_Subject`,
  with the `ProviderAttributeValue` being the name that is used in the user
  pool for the user.

  The `ProviderAttributeName` must always be `Cognito_Subject` for social
  identity providers. The `ProviderAttributeValue` must always be the exact
  subject that was used when the user was originally linked as a source user.

  For de-linking a SAML identity, there are two scenarios. If the linked
  identity has not yet been used to sign-in, the `ProviderAttributeName` and
  `ProviderAttributeValue` must be the same values that were used for the
  `SourceUser` when the identities were originally linked in the
  [AdminLinkProviderForUser](API_AdminLinkProviderForUser.html) call. (If the
  linking was done with `ProviderAttributeName` set to `Cognito_Subject`, the
  same applies here). However, if the user has already signed in, the
  `ProviderAttributeName` must be `Cognito_Subject` and
  `ProviderAttributeValue` must be the subject of the SAML assertion.
  """
  def admin_disable_provider_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminDisableProviderForUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes a user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminDeleteUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Forgets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_forget_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminForgetDevice",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the specified user by user name in a user pool as an administrator.
  Works on any user.

  Requires developer credentials.
  """
  def admin_get_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminGetUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes the user attributes in a user pool as an administrator. Works on
  any user.

  Requires developer credentials.
  """
  def admin_delete_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminDeleteUserAttributes",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Resends the confirmation (for confirmation of registration) to a specific
  user in the user pool.
  """
  def resend_confirmation_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResendConfirmationCode",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the header information for the .csv file to be used as input for the
  user import job.
  """
  def get_c_s_v_header(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetCSVHeader",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes a group. Currently only groups with no members can be deleted.

  Requires developer credentials.
  """
  def delete_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes the attributes for a user.
  """
  def delete_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUserAttributes",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates a new user in the specified user pool and sends a welcome message
  via email or phone (SMS). This message is based on a template that you
  configured in your call to [CreateUserPool](API_CreateUserPool.html) or
  [UpdateUserPool](API_UpdateUserPool.html). This template includes your
  custom sign-up instructions and placeholders for user name and temporary
  password.

  Requires developer credentials.
  """
  def admin_create_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminCreateUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPoolClient",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the device.
  """
  def get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetDevice",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Allows a user to update a specific attribute (one at a time).
  """
  def update_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateUserAttributes",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the user import jobs.
  """
  def list_user_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUserImportJobs",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.
  """
  def create_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateUserPool",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates the user import job.
  """
  def create_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateUserImportJob",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the devices.
  """
  def list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListDevices",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates the user pool client.
  """
  def create_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateUserPoolClient",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Responds to an authentication challenge, as an administrator.

  Requires developer credentials.
  """
  def admin_respond_to_auth_challenge(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminRespondToAuthChallenge",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Sets the UI customization information for a user pool's built-in app UI.

  You can specify app UI customization settings for a single client (with a
  specific `clientId`) or for all clients (by setting the `clientId` to
  `ALL`). If you specify `ALL`, the default configuration will be used for
  every client that has no UI customization set previously. If you specify UI
  customization settings for a particular client, it will no longer fall back
  to the `ALL` configuration.

  <note> To use this API, your user pool must have a domain associated with
  it. Otherwise, there is no place to host the app's pages, and the service
  will throw an error.

  </note>
  """
  def set_u_i_customization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetUICustomization",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets a group.

  Requires developer credentials.
  """
  def get_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists devices, as an administrator.

  Requires developer credentials.
  """
  def admin_list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminListDevices",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Starts the user import.
  """
  def start_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartUserImportJob",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes a resource server.
  """
  def delete_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteResourceServer",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Initiates the authentication flow.
  """
  def initiate_auth(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "InitiateAuth",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Allows a user to delete himself or herself.
  """
  def delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates a new domain for a user pool.
  """
  def create_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateUserPoolDomain",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Enables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_enable_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminEnableUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Forgets the specified device.
  """
  def forget_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ForgetDevice",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the specified identity provider.
  """
  def get_identity_provider_by_identifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIdentityProviderByIdentifier",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the users in the Amazon Cognito user pool.
  """
  def list_users(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUsers",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddCustomAttributes",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes a domain for a user pool.
  """
  def delete_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPoolDomain",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the groups associated with a user pool.

  Requires developer credentials.
  """
  def list_groups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListGroups",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Client method for returning the configuration information and metadata of
  the specified user pool client.
  """
  def describe_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPoolClient",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates identity provider information for a user pool.
  """
  def update_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateIdentityProvider",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.
  """
  def confirm_forgot_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ConfirmForgotPassword",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Resets the specified user's password in a user pool as an administrator.
  Works on any user.

  When a developer calls this API, the current password is invalidated, so it
  must be changed. If a user tries to sign in after the API is called, the
  app will get a PasswordResetRequiredException exception back and should
  direct the user down the flow to reset the password, which is the same as
  the forgot password flow. In addition, if the user pool has phone
  verification selected and a verified phone number exists for the user, or
  if email verification is selected and a verified email exists for the user,
  calling this API will also result in sending a message to the end user with
  the code to change their password.

  Requires developer credentials.
  """
  def admin_reset_user_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminResetUserPassword",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Lists the users in the specified group.

  Requires developer credentials.
  """
  def list_users_in_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListUsersInGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a specific identity provider.
  """
  def describe_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeIdentityProvider",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Links an existing user account in a user pool (`DestinationUser`) to an
  identity from an external identity provider (`SourceUser`) based on a
  specified attribute name and value from the external identity provider.
  This allows you to create a link from the existing user account to an
  external federated user identity that has not yet been used to sign in, so
  that the federated user identity can be used to sign in as the existing
  user account.

  For example, if there is an existing user with a username and password,
  this API links that user to a federated user identity, so that when the
  federated user identity is used, the user signs in as the existing user
  account.

  <important> Because this API allows a user with an external federated
  identity to sign in as an existing user in the user pool, it is critical
  that it only be used with external identity providers and provider
  attributes that have been trusted by the application owner.

  </important> See also
  [AdminDisableProviderForUser](API_AdminDisableProviderForUser.html).

  This action is enabled only for admin access and requires developer
  credentials.
  """
  def admin_link_provider_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminLinkProviderForUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes in it.
  """
  def create_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateResourceServer",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Sets the user settings like multi-factor authentication (MFA). If MFA is to
  be removed for a particular attribute pass the attribute with code delivery
  as null. If null list is passed, all MFA options are removed.
  """
  def set_user_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SetUserSettings",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the name and scopes of resource server. All other fields are
  read-only.
  """
  def update_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateResourceServer",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Allows the developer to update the specified user pool client and password
  policy.
  """
  def update_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateUserPoolClient",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Signs out users from all devices.
  """
  def global_sign_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GlobalSignOut",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Confirms registration of a user and handles the existing alias from a
  previous user.
  """
  def confirm_sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ConfirmSignUp",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Confirms user registration as an admin without using a confirmation code.
  Works on any user.

  Requires developer credentials.
  """
  def admin_confirm_sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminConfirmSignUp",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets information about a domain.
  """
  def describe_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPoolDomain",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Describes the user import job.
  """
  def describe_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeUserImportJob",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Updates the specified group with the specified attributes.

  Requires developer credentials.
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Registers the user in the specified user pool and creates a user name,
  password, and user attributes.
  """
  def sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SignUp",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPool",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Creates a new group in the specified user pool.

  Requires developer credentials.
  """
  def create_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateGroup",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Verifies the specified user attributes in the user pool.
  """
  def verify_user_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "VerifyUserAttribute",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Calling this API causes a message to be sent to the end user with a
  confirmation code that is required to change the user's password. For the
  `Username` parameter, you can use the username or user alias. If a verified
  phone number exists for the user, the confirmation code is sent to the
  phone number. Otherwise, if a verified email exists, the confirmation code
  is sent to the email. If neither a verified phone number nor a verified
  email exists, `InvalidParameterException` is thrown. To use the
  confirmation code for resetting the password, call
  [ConfirmForgotPassword](API_ConfirmForgotPassword.html).
  """
  def forgot_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ForgotPassword",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Disables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_disable_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminDisableUser",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AdminGetDevice",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
  @doc """
  Gets the UI Customization information for a particular app client's app UI,
  if there is something set. If nothing is set for the particular client, but
  there is an existing pool level customization (app `clientId` will be
  `ALL`), then that is returned. If nothing is present, then an empty shape
  is returned.
  """
  def get_u_i_customization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "cognito-idp",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetUICustomization",
      
      target_prefix:    "AWSCognitoIdentityProviderService",
      
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      method:           :post
    }
  end
  
end