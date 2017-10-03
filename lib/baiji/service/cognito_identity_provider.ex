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
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeResourceServer",
      method:           :post,
      input_shape:      "DescribeResourceServerRequest",
      output_shape:     "DescribeResourceServerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an identity provider for a user pool.
  """
  def delete_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteIdentityProvider",
      method:           :post,
      input_shape:      "DeleteIdentityProviderRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the device status as an administrator.

  Requires developer credentials.
  """
  def admin_update_device_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminUpdateDeviceStatus",
      method:           :post,
      input_shape:      "AdminUpdateDeviceStatusRequest",
      output_shape:     "AdminUpdateDeviceStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ChangePassword",
      method:           :post,
      input_shape:      "ChangePasswordRequest",
      output_shape:     "ChangePasswordResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Signs out users from all devices, as an administrator.

  Requires developer credentials.
  """
  def admin_user_global_sign_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminUserGlobalSignOut",
      method:           :post,
      input_shape:      "AdminUserGlobalSignOutRequest",
      output_shape:     "AdminUserGlobalSignOutResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes the specified user from the specified group.

  Requires developer credentials.
  """
  def admin_remove_user_from_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminRemoveUserFromGroup",
      method:           :post,
      input_shape:      "AdminRemoveUserFromGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns the configuration information and metadata of the specified user
  pool.
  """
  def describe_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPool",
      method:           :post,
      input_shape:      "DescribeUserPoolRequest",
      output_shape:     "DescribeUserPoolResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Confirms tracking of the device. This API call is the call that begins
  device tracking.
  """
  def confirm_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmDevice",
      method:           :post,
      input_shape:      "ConfirmDeviceRequest",
      output_shape:     "ConfirmDeviceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Responds to the authentication challenge.
  """
  def respond_to_auth_challenge(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RespondToAuthChallenge",
      method:           :post,
      input_shape:      "RespondToAuthChallengeRequest",
      output_shape:     "RespondToAuthChallengeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopUserImportJob",
      method:           :post,
      input_shape:      "StopUserImportJobRequest",
      output_shape:     "StopUserImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an identity provider for a user pool.
  """
  def create_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateIdentityProvider",
      method:           :post,
      input_shape:      "CreateIdentityProviderRequest",
      output_shape:     "CreateIdentityProviderResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the user pools associated with an AWS account.
  """
  def list_user_pools(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUserPools",
      method:           :post,
      input_shape:      "ListUserPoolsRequest",
      output_shape:     "ListUserPoolsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the clients that have been created for the specified user pool.
  """
  def list_user_pool_clients(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUserPoolClients",
      method:           :post,
      input_shape:      "ListUserPoolClientsRequest",
      output_shape:     "ListUserPoolClientsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the device status.
  """
  def update_device_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateDeviceStatus",
      method:           :post,
      input_shape:      "UpdateDeviceStatusRequest",
      output_shape:     "UpdateDeviceStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets all the user settings for a specified user name. Works on any user.

  Requires developer credentials.
  """
  def admin_set_user_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminSetUserSettings",
      method:           :post,
      input_shape:      "AdminSetUserSettingsRequest",
      output_shape:     "AdminSetUserSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Initiates the authentication flow, as an administrator.

  Requires developer credentials.
  """
  def admin_initiate_auth(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminInitiateAuth",
      method:           :post,
      input_shape:      "AdminInitiateAuthRequest",
      output_shape:     "AdminInitiateAuthResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the user attributes and metadata for a user.
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
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the specified user pool with the specified attributes.
  """
  def update_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserPool",
      method:           :post,
      input_shape:      "UpdateUserPoolRequest",
      output_shape:     "UpdateUserPoolResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the user attribute verification code for the specified attribute name.
  """
  def get_user_attribute_verification_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUserAttributeVerificationCode",
      method:           :post,
      input_shape:      "GetUserAttributeVerificationCodeRequest",
      output_shape:     "GetUserAttributeVerificationCodeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the groups that the user belongs to.

  Requires developer credentials.
  """
  def admin_list_groups_for_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminListGroupsForUser",
      method:           :post,
      input_shape:      "AdminListGroupsForUserRequest",
      output_shape:     "AdminListGroupsForUserResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminUpdateUserAttributes",
      method:           :post,
      input_shape:      "AdminUpdateUserAttributesRequest",
      output_shape:     "AdminUpdateUserAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds the specified user to the specified group.

  Requires developer credentials.
  """
  def admin_add_user_to_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminAddUserToGroup",
      method:           :post,
      input_shape:      "AdminAddUserToGroupRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the resource servers for a user pool.
  """
  def list_resource_servers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListResourceServers",
      method:           :post,
      input_shape:      "ListResourceServersRequest",
      output_shape:     "ListResourceServersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists information about all identity providers for a user pool.
  """
  def list_identity_providers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListIdentityProviders",
      method:           :post,
      input_shape:      "ListIdentityProvidersRequest",
      output_shape:     "ListIdentityProvidersResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminDisableProviderForUser",
      method:           :post,
      input_shape:      "AdminDisableProviderForUserRequest",
      output_shape:     "AdminDisableProviderForUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_delete_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminDeleteUser",
      method:           :post,
      input_shape:      "AdminDeleteUserRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Forgets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_forget_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminForgetDevice",
      method:           :post,
      input_shape:      "AdminForgetDeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.
  Works on any user.

  Requires developer credentials.
  """
  def admin_get_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminGetUser",
      method:           :post,
      input_shape:      "AdminGetUserRequest",
      output_shape:     "AdminGetUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator. Works on
  any user.

  Requires developer credentials.
  """
  def admin_delete_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminDeleteUserAttributes",
      method:           :post,
      input_shape:      "AdminDeleteUserAttributesRequest",
      output_shape:     "AdminDeleteUserAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific
  user in the user pool.
  """
  def resend_confirmation_code(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResendConfirmationCode",
      method:           :post,
      input_shape:      "ResendConfirmationCodeRequest",
      output_shape:     "ResendConfirmationCodeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the header information for the .csv file to be used as input for the
  user import job.
  """
  def get_c_s_v_header(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCSVHeader",
      method:           :post,
      input_shape:      "GetCSVHeaderRequest",
      output_shape:     "GetCSVHeaderResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a group. Currently only groups with no members can be deleted.

  Requires developer credentials.
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
  Deletes the attributes for a user.
  """
  def delete_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserAttributes",
      method:           :post,
      input_shape:      "DeleteUserAttributesRequest",
      output_shape:     "DeleteUserAttributesResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminCreateUser",
      method:           :post,
      input_shape:      "AdminCreateUserRequest",
      output_shape:     "AdminCreateUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPoolClient",
      method:           :post,
      input_shape:      "DeleteUserPoolClientRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the device.
  """
  def get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetDevice",
      method:           :post,
      input_shape:      "GetDeviceRequest",
      output_shape:     "GetDeviceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a user to update a specific attribute (one at a time).
  """
  def update_user_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserAttributes",
      method:           :post,
      input_shape:      "UpdateUserAttributesRequest",
      output_shape:     "UpdateUserAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the user import jobs.
  """
  def list_user_import_jobs(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUserImportJobs",
      method:           :post,
      input_shape:      "ListUserImportJobsRequest",
      output_shape:     "ListUserImportJobsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.
  """
  def create_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserPool",
      method:           :post,
      input_shape:      "CreateUserPoolRequest",
      output_shape:     "CreateUserPoolResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates the user import job.
  """
  def create_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserImportJob",
      method:           :post,
      input_shape:      "CreateUserImportJobRequest",
      output_shape:     "CreateUserImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the devices.
  """
  def list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListDevices",
      method:           :post,
      input_shape:      "ListDevicesRequest",
      output_shape:     "ListDevicesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates the user pool client.
  """
  def create_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserPoolClient",
      method:           :post,
      input_shape:      "CreateUserPoolClientRequest",
      output_shape:     "CreateUserPoolClientResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Responds to an authentication challenge, as an administrator.

  Requires developer credentials.
  """
  def admin_respond_to_auth_challenge(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminRespondToAuthChallenge",
      method:           :post,
      input_shape:      "AdminRespondToAuthChallengeRequest",
      output_shape:     "AdminRespondToAuthChallengeResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetUICustomization",
      method:           :post,
      input_shape:      "SetUICustomizationRequest",
      output_shape:     "SetUICustomizationResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets a group.

  Requires developer credentials.
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
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists devices, as an administrator.

  Requires developer credentials.
  """
  def admin_list_devices(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminListDevices",
      method:           :post,
      input_shape:      "AdminListDevicesRequest",
      output_shape:     "AdminListDevicesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Starts the user import.
  """
  def start_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartUserImportJob",
      method:           :post,
      input_shape:      "StartUserImportJobRequest",
      output_shape:     "StartUserImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a resource server.
  """
  def delete_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteResourceServer",
      method:           :post,
      input_shape:      "DeleteResourceServerRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Initiates the authentication flow.
  """
  def initiate_auth(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "InitiateAuth",
      method:           :post,
      input_shape:      "InitiateAuthRequest",
      output_shape:     "InitiateAuthResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a user to delete himself or herself.
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
  Creates a new domain for a user pool.
  """
  def create_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateUserPoolDomain",
      method:           :post,
      input_shape:      "CreateUserPoolDomainRequest",
      output_shape:     "CreateUserPoolDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Enables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_enable_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminEnableUser",
      method:           :post,
      input_shape:      "AdminEnableUserRequest",
      output_shape:     "AdminEnableUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Forgets the specified device.
  """
  def forget_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ForgetDevice",
      method:           :post,
      input_shape:      "ForgetDeviceRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the specified identity provider.
  """
  def get_identity_provider_by_identifier(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetIdentityProviderByIdentifier",
      method:           :post,
      input_shape:      "GetIdentityProviderByIdentifierRequest",
      output_shape:     "GetIdentityProviderByIdentifierResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the users in the Amazon Cognito user pool.
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
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddCustomAttributes",
      method:           :post,
      input_shape:      "AddCustomAttributesRequest",
      output_shape:     "AddCustomAttributesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a domain for a user pool.
  """
  def delete_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPoolDomain",
      method:           :post,
      input_shape:      "DeleteUserPoolDomainRequest",
      output_shape:     "DeleteUserPoolDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the groups associated with a user pool.

  Requires developer credentials.
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
      endpoint:         __spec__()
    }
  end

  @doc """
  Client method for returning the configuration information and metadata of
  the specified user pool client.
  """
  def describe_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPoolClient",
      method:           :post,
      input_shape:      "DescribeUserPoolClientRequest",
      output_shape:     "DescribeUserPoolClientResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates identity provider information for a user pool.
  """
  def update_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateIdentityProvider",
      method:           :post,
      input_shape:      "UpdateIdentityProviderRequest",
      output_shape:     "UpdateIdentityProviderResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.
  """
  def confirm_forgot_password(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmForgotPassword",
      method:           :post,
      input_shape:      "ConfirmForgotPasswordRequest",
      output_shape:     "ConfirmForgotPasswordResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminResetUserPassword",
      method:           :post,
      input_shape:      "AdminResetUserPasswordRequest",
      output_shape:     "AdminResetUserPasswordResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the users in the specified group.

  Requires developer credentials.
  """
  def list_users_in_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListUsersInGroup",
      method:           :post,
      input_shape:      "ListUsersInGroupRequest",
      output_shape:     "ListUsersInGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a specific identity provider.
  """
  def describe_identity_provider(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeIdentityProvider",
      method:           :post,
      input_shape:      "DescribeIdentityProviderRequest",
      output_shape:     "DescribeIdentityProviderResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminLinkProviderForUser",
      method:           :post,
      input_shape:      "AdminLinkProviderForUserRequest",
      output_shape:     "AdminLinkProviderForUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes in it.
  """
  def create_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateResourceServer",
      method:           :post,
      input_shape:      "CreateResourceServerRequest",
      output_shape:     "CreateResourceServerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Sets the user settings like multi-factor authentication (MFA). If MFA is to
  be removed for a particular attribute pass the attribute with code delivery
  as null. If null list is passed, all MFA options are removed.
  """
  def set_user_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SetUserSettings",
      method:           :post,
      input_shape:      "SetUserSettingsRequest",
      output_shape:     "SetUserSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the name and scopes of resource server. All other fields are
  read-only.
  """
  def update_resource_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateResourceServer",
      method:           :post,
      input_shape:      "UpdateResourceServerRequest",
      output_shape:     "UpdateResourceServerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Allows the developer to update the specified user pool client and password
  policy.
  """
  def update_user_pool_client(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateUserPoolClient",
      method:           :post,
      input_shape:      "UpdateUserPoolClientRequest",
      output_shape:     "UpdateUserPoolClientResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Signs out users from all devices.
  """
  def global_sign_out(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GlobalSignOut",
      method:           :post,
      input_shape:      "GlobalSignOutRequest",
      output_shape:     "GlobalSignOutResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Confirms registration of a user and handles the existing alias from a
  previous user.
  """
  def confirm_sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ConfirmSignUp",
      method:           :post,
      input_shape:      "ConfirmSignUpRequest",
      output_shape:     "ConfirmSignUpResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Confirms user registration as an admin without using a confirmation code.
  Works on any user.

  Requires developer credentials.
  """
  def admin_confirm_sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminConfirmSignUp",
      method:           :post,
      input_shape:      "AdminConfirmSignUpRequest",
      output_shape:     "AdminConfirmSignUpResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets information about a domain.
  """
  def describe_user_pool_domain(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserPoolDomain",
      method:           :post,
      input_shape:      "DescribeUserPoolDomainRequest",
      output_shape:     "DescribeUserPoolDomainResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Describes the user import job.
  """
  def describe_user_import_job(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeUserImportJob",
      method:           :post,
      input_shape:      "DescribeUserImportJobRequest",
      output_shape:     "DescribeUserImportJobResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the specified group with the specified attributes.

  Requires developer credentials.
  """
  def update_group(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGroup",
      method:           :post,
      input_shape:      "UpdateGroupRequest",
      output_shape:     "UpdateGroupResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers the user in the specified user pool and creates a user name,
  password, and user attributes.
  """
  def sign_up(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SignUp",
      method:           :post,
      input_shape:      "SignUpRequest",
      output_shape:     "SignUpResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteUserPool",
      method:           :post,
      input_shape:      "DeleteUserPoolRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new group in the specified user pool.

  Requires developer credentials.
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
      endpoint:         __spec__()
    }
  end

  @doc """
  Verifies the specified user attributes in the user pool.
  """
  def verify_user_attribute(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "VerifyUserAttribute",
      method:           :post,
      input_shape:      "VerifyUserAttributeRequest",
      output_shape:     "VerifyUserAttributeResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "ForgotPassword",
      method:           :post,
      input_shape:      "ForgotPasswordRequest",
      output_shape:     "ForgotPasswordResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Disables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_disable_user(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminDisableUser",
      method:           :post,
      input_shape:      "AdminDisableUserRequest",
      output_shape:     "AdminDisableUserResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Gets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_get_device(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AdminGetDevice",
      method:           :post,
      input_shape:      "AdminGetDeviceRequest",
      output_shape:     "AdminGetDeviceResponse",
      endpoint:         __spec__()
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
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetUICustomization",
      method:           :post,
      input_shape:      "GetUICustomizationRequest",
      output_shape:     "GetUICustomizationResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "cognito-idp",
      target_prefix:    "AWSCognitoIdentityProviderService",
      endpoint_prefix:  "cognito-idp",
      type:             :json,
      version:          "2016-04-18",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"ForceAliasCreation" => %{"type" => "boolean"}, "PoolQueryLimitType" => %{"max" => 60, "min" => 1, "type" => "integer"}, "ListDevicesRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "Limit" => %{"shape" => "QueryLimitType"}, "PaginationToken" => %{"shape" => "SearchPaginationTokenType"}}, "required" => ["AccessToken"], "type" => "structure"}, "ConfirmDeviceResponse" => %{"members" => %{"UserConfirmationNecessary" => %{"shape" => "BooleanType"}}, "type" => "structure"}, "DescriptionType" => %{"max" => 2048, "type" => "string"}, "GroupType" => %{"members" => %{"CreationDate" => %{"shape" => "DateType"}, "Description" => %{"shape" => "DescriptionType"}, "GroupName" => %{"shape" => "GroupNameType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "Precedence" => %{"shape" => "PrecedenceType"}, "RoleArn" => %{"shape" => "ArnType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "AdminUpdateUserAttributesResponse" => %{"members" => %{}, "type" => "structure"}, "OAuthFlowType" => %{"enum" => ["code", "implicit", "client_credentials"], "type" => "string"}, "AdminUserGlobalSignOutRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "DeleteUserPoolClientRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ClientId"], "type" => "structure"}, "CreateUserPoolClientRequest" => %{"members" => %{"AllowedOAuthFlows" => %{"shape" => "OAuthFlowsType"}, "AllowedOAuthFlowsUserPoolClient" => %{"shape" => "BooleanType"}, "AllowedOAuthScopes" => %{"shape" => "ScopeListType"}, "CallbackURLs" => %{"shape" => "CallbackURLsListType"}, "ClientName" => %{"shape" => "ClientNameType"}, "DefaultRedirectURI" => %{"shape" => "RedirectUrlType"}, "ExplicitAuthFlows" => %{"shape" => "ExplicitAuthFlowsListType"}, "GenerateSecret" => %{"shape" => "GenerateSecret"}, "LogoutURLs" => %{"shape" => "LogoutURLsListType"}, "ReadAttributes" => %{"shape" => "ClientPermissionListType"}, "RefreshTokenValidity" => %{"shape" => "RefreshTokenValidityType"}, "SupportedIdentityProviders" => %{"shape" => "SupportedIdentityProvidersListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "WriteAttributes" => %{"shape" => "ClientPermissionListType"}}, "required" => ["UserPoolId", "ClientName"], "type" => "structure"}, "UsernameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "sensitive" => true, "type" => "string"}, "AliasExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "DescribeUserPoolClientResponse" => %{"members" => %{"UserPoolClient" => %{"shape" => "UserPoolClientType"}}, "type" => "structure"}, "DescribeUserPoolResponse" => %{"members" => %{"UserPool" => %{"shape" => "UserPoolType"}}, "type" => "structure"}, "AddCustomAttributesRequest" => %{"members" => %{"CustomAttributes" => %{"shape" => "CustomAttributesListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "CustomAttributes"], "type" => "structure"}, "SearchPaginationTokenType" => %{"min" => 1, "pattern" => "[\\S]+", "type" => "string"}, "ListUsersInGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "GroupNameType"}, "Limit" => %{"shape" => "QueryLimitType"}, "NextToken" => %{"shape" => "PaginationKey"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "GroupName"], "type" => "structure"}, "SmsConfigurationType" => %{"members" => %{"ExternalId" => %{"shape" => "StringType"}, "SnsCallerArn" => %{"shape" => "ArnType"}}, "required" => ["SnsCallerArn"], "type" => "structure"}, "UpdateGroupRequest" => %{"members" => %{"Description" => %{"shape" => "DescriptionType"}, "GroupName" => %{"shape" => "GroupNameType"}, "Precedence" => %{"shape" => "PrecedenceType"}, "RoleArn" => %{"shape" => "ArnType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["GroupName", "UserPoolId"], "type" => "structure"}, "AdminConfirmSignUpResponse" => %{"members" => %{}, "type" => "structure"}, "ResourceServerNameType" => %{"max" => 256, "min" => 1, "pattern" => "[\\w\\s+=,.@-]+", "type" => "string"}, "InvalidParameterException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AttributeMappingKeyType" => %{"max" => 32, "min" => 1, "type" => "string"}, "UserPoolTaggingException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AWSAccountIdType" => %{"type" => "string"}, "SetUICustomizationResponse" => %{"members" => %{"UICustomization" => %{"shape" => "UICustomizationType"}}, "required" => ["UICustomization"], "type" => "structure"}, "UpdateDeviceStatusResponse" => %{"members" => %{}, "type" => "structure"}, "VerifiedAttributesListType" => %{"member" => %{"shape" => "VerifiedAttributeType"}, "type" => "list"}, "UserImportJobsListType" => %{"max" => 50, "member" => %{"shape" => "UserImportJobType"}, "min" => 1, "type" => "list"}, "CodeDeliveryDetailsType" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeNameType"}, "DeliveryMedium" => %{"shape" => "DeliveryMediumType"}, "Destination" => %{"shape" => "StringType"}}, "type" => "structure"}, "AdminListGroupsForUserRequest" => %{"members" => %{"Limit" => %{"shape" => "QueryLimitType"}, "NextToken" => %{"shape" => "PaginationKey"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["Username", "UserPoolId"], "type" => "structure"}, "ListUserPoolsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PoolQueryLimitType"}, "NextToken" => %{"shape" => "PaginationKeyType"}}, "required" => ["MaxResults"], "type" => "structure"}, "GetDeviceResponse" => %{"members" => %{"Device" => %{"shape" => "DeviceType"}}, "required" => ["Device"], "type" => "structure"}, "ScopeListType" => %{"max" => 25, "member" => %{"shape" => "ScopeType"}, "type" => "list"}, "AdminRespondToAuthChallengeRequest" => %{"members" => %{"ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeResponses" => %{"shape" => "ChallengeResponsesType"}, "ClientId" => %{"shape" => "ClientIdType"}, "Session" => %{"shape" => "SessionType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ClientId", "ChallengeName"], "type" => "structure"}, "DeleteGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "GroupNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["GroupName", "UserPoolId"], "type" => "structure"}, "InvalidOAuthFlowException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "UserPoolDescriptionType" => %{"members" => %{"CreationDate" => %{"shape" => "DateType"}, "Id" => %{"shape" => "UserPoolIdType"}, "LambdaConfig" => %{"shape" => "LambdaConfigType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "Name" => %{"shape" => "UserPoolNameType"}, "Status" => %{"shape" => "StatusType"}}, "type" => "structure"}, "UpdateDeviceStatusRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}, "DeviceRememberedStatus" => %{"shape" => "DeviceRememberedStatusType"}}, "required" => ["AccessToken", "DeviceKey"], "type" => "structure"}, "GenerateSecret" => %{"type" => "boolean"}, "AdminDisableProviderForUserResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteUserPoolRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "VerifyUserAttributeResponse" => %{"members" => %{}, "type" => "structure"}, "DefaultEmailOptionType" => %{"enum" => ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"], "type" => "string"}, "CreateResourceServerResponse" => %{"members" => %{"ResourceServer" => %{"shape" => "ResourceServerType"}}, "required" => ["ResourceServer"], "type" => "structure"}, "InvalidPasswordException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "GetIdentityProviderByIdentifierResponse" => %{"members" => %{"IdentityProvider" => %{"shape" => "IdentityProviderType"}}, "required" => ["IdentityProvider"], "type" => "structure"}, "DeleteUserPoolDomainRequest" => %{"members" => %{"Domain" => %{"shape" => "DomainType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["Domain", "UserPoolId"], "type" => "structure"}, "ProviderNameType" => %{"max" => 32, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "DeviceType" => %{"members" => %{"DeviceAttributes" => %{"shape" => "AttributeListType"}, "DeviceCreateDate" => %{"shape" => "DateType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}, "DeviceLastAuthenticatedDate" => %{"shape" => "DateType"}, "DeviceLastModifiedDate" => %{"shape" => "DateType"}}, "type" => "structure"}, "CodeMismatchException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "QueryLimit" => %{"max" => 60, "min" => 1, "type" => "integer"}, "AdminCreateUserRequest" => %{"members" => %{"DesiredDeliveryMediums" => %{"shape" => "DeliveryMediumListType"}, "ForceAliasCreation" => %{"shape" => "ForceAliasCreation"}, "MessageAction" => %{"shape" => "MessageActionType"}, "TemporaryPassword" => %{"shape" => "PasswordType"}, "UserAttributes" => %{"shape" => "AttributeListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}, "ValidationData" => %{"shape" => "AttributeListType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "ListProvidersLimitType" => %{"max" => 60, "min" => 1, "type" => "integer"}, "IdentityProviderType" => %{"members" => %{"AttributeMapping" => %{"shape" => "AttributeMappingType"}, "CreationDate" => %{"shape" => "DateType"}, "IdpIdentifiers" => %{"shape" => "IdpIdentifiersListType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "ProviderDetails" => %{"shape" => "ProviderDetailsType"}, "ProviderName" => %{"shape" => "ProviderNameType"}, "ProviderType" => %{"shape" => "IdentityProviderTypeType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "UpdateUserAttributesResponse" => %{"members" => %{"CodeDeliveryDetailsList" => %{"shape" => "CodeDeliveryDetailsListType"}}, "type" => "structure"}, "AdminConfirmSignUpRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "DeviceConfigurationType" => %{"members" => %{"ChallengeRequiredOnNewDevice" => %{"shape" => "BooleanType"}, "DeviceOnlyRememberedOnUserPrompt" => %{"shape" => "BooleanType"}}, "type" => "structure"}, "CSSVersionType" => %{"type" => "string"}, "MessageTemplateType" => %{"members" => %{"EmailMessage" => %{"shape" => "EmailVerificationMessageType"}, "EmailSubject" => %{"shape" => "EmailVerificationSubjectType"}, "SMSMessage" => %{"shape" => "SmsVerificationMessageType"}}, "type" => "structure"}, "UserPoolType" => %{"members" => %{"AdminCreateUserConfig" => %{"shape" => "AdminCreateUserConfigType"}, "AliasAttributes" => %{"shape" => "AliasAttributesListType"}, "AutoVerifiedAttributes" => %{"shape" => "VerifiedAttributesListType"}, "CreationDate" => %{"shape" => "DateType"}, "DeviceConfiguration" => %{"shape" => "DeviceConfigurationType"}, "EmailConfiguration" => %{"shape" => "EmailConfigurationType"}, "EmailConfigurationFailure" => %{"shape" => "StringType"}, "EmailVerificationMessage" => %{"shape" => "EmailVerificationMessageType"}, "EmailVerificationSubject" => %{"shape" => "EmailVerificationSubjectType"}, "EstimatedNumberOfUsers" => %{"shape" => "IntegerType"}, "Id" => %{"shape" => "UserPoolIdType"}, "LambdaConfig" => %{"shape" => "LambdaConfigType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "MfaConfiguration" => %{"shape" => "UserPoolMfaType"}, "Name" => %{"shape" => "UserPoolNameType"}, "Policies" => %{"shape" => "UserPoolPolicyType"}, "SchemaAttributes" => %{"shape" => "SchemaAttributesListType"}, "SmsAuthenticationMessage" => %{"shape" => "SmsVerificationMessageType"}, "SmsConfiguration" => %{"shape" => "SmsConfigurationType"}, "SmsConfigurationFailure" => %{"shape" => "StringType"}, "SmsVerificationMessage" => %{"shape" => "SmsVerificationMessageType"}, "Status" => %{"shape" => "StatusType"}, "UserPoolTags" => %{"shape" => "UserPoolTagsType"}, "UsernameAttributes" => %{"shape" => "UsernameAttributesListType"}, "VerificationMessageTemplate" => %{"shape" => "VerificationMessageTemplateType"}}, "type" => "structure"}, "DomainType" => %{"max" => 63, "min" => 1, "pattern" => "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$", "type" => "string"}, "DeviceKeyType" => %{"max" => 55, "min" => 1, "pattern" => "[\\w-]+_[0-9a-f-]+", "type" => "string"}, "GroupListType" => %{"member" => %{"shape" => "GroupType"}, "type" => "list"}, "UserImportJobStatusType" => %{"enum" => ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"], "type" => "string"}, "ClientNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w\\s+=,.@-]+", "type" => "string"}, "StatusType" => %{"enum" => ["Enabled", "Disabled"], "type" => "string"}, "GlobalSignOutResponse" => %{"members" => %{}, "type" => "structure"}, "ConfirmationCodeType" => %{"max" => 2048, "min" => 1, "pattern" => "[\\S]+", "type" => "string"}, "UserPoolListType" => %{"member" => %{"shape" => "UserPoolDescriptionType"}, "type" => "list"}, "VerifyUserAttributeRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "AttributeName" => %{"shape" => "AttributeNameType"}, "Code" => %{"shape" => "ConfirmationCodeType"}}, "required" => ["AccessToken", "AttributeName", "Code"], "type" => "structure"}, "DeviceNameType" => %{"max" => 1024, "min" => 1, "type" => "string"}, "UpdateUserPoolResponse" => %{"members" => %{}, "type" => "structure"}, "InvalidSmsRoleAccessPolicyException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ChangePasswordResponse" => %{"members" => %{}, "type" => "structure"}, "LogoutURLsListType" => %{"max" => 100, "member" => %{"shape" => "RedirectUrlType"}, "min" => 0, "type" => "list"}, "GetUserRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}}, "required" => ["AccessToken"], "type" => "structure"}, "AdminInitiateAuthResponse" => %{"members" => %{"AuthenticationResult" => %{"shape" => "AuthenticationResultType"}, "ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeParameters" => %{"shape" => "ChallengeParametersType"}, "Session" => %{"shape" => "SessionType"}}, "type" => "structure"}, "GroupNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "VerifiedAttributeType" => %{"enum" => ["phone_number", "email"], "type" => "string"}, "NumberAttributeConstraintsType" => %{"members" => %{"MaxValue" => %{"shape" => "StringType"}, "MinValue" => %{"shape" => "StringType"}}, "type" => "structure"}, "ResourceServerScopeNameType" => %{"max" => 256, "min" => 1, "pattern" => "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+", "type" => "string"}, "AdminForgetDeviceRequest" => %{"members" => %{"DeviceKey" => %{"shape" => "DeviceKeyType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "DeviceKey"], "type" => "structure"}, "MFAMethodNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ListGroupsResponse" => %{"members" => %{"Groups" => %{"shape" => "GroupListType"}, "NextToken" => %{"shape" => "PaginationKey"}}, "type" => "structure"}, "AdminDeleteUserAttributesResponse" => %{"members" => %{}, "type" => "structure"}, "AdminDisableUserResponse" => %{"members" => %{}, "type" => "structure"}, "CreateUserImportJobResponse" => %{"members" => %{"UserImportJob" => %{"shape" => "UserImportJobType"}}, "type" => "structure"}, "SearchedAttributeNamesListType" => %{"member" => %{"shape" => "AttributeNameType"}, "type" => "list"}, "UsernameExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminResetUserPasswordResponse" => %{"members" => %{}, "type" => "structure"}, "AdminGetDeviceRequest" => %{"members" => %{"DeviceKey" => %{"shape" => "DeviceKeyType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["DeviceKey", "UserPoolId", "Username"], "type" => "structure"}, "TooManyRequestsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "IdpIdentifiersListType" => %{"max" => 50, "member" => %{"shape" => "IdpIdentifierType"}, "min" => 0, "type" => "list"}, "GetCSVHeaderResponse" => %{"members" => %{"CSVHeader" => %{"shape" => "ListOfStringTypes"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "AdminResetUserPasswordRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "UsernameAttributeType" => %{"enum" => ["phone_number", "email"], "type" => "string"}, "ExplicitAuthFlowsListType" => %{"member" => %{"shape" => "ExplicitAuthFlowsType"}, "type" => "list"}, "DeleteResourceServerRequest" => %{"members" => %{"Identifier" => %{"shape" => "ResourceServerIdentifierType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "Identifier"], "type" => "structure"}, "ConfirmForgotPasswordResponse" => %{"members" => %{}, "type" => "structure"}, "ProviderDetailsType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "ResendConfirmationCodeRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "SecretHash" => %{"shape" => "SecretHashType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["ClientId", "Username"], "type" => "structure"}, "DeliveryMediumListType" => %{"member" => %{"shape" => "DeliveryMediumType"}, "type" => "list"}, "UnsupportedUserStateException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "UserPoolMfaType" => %{"enum" => ["OFF", "ON", "OPTIONAL"], "type" => "string"}, "AdminListDevicesRequest" => %{"members" => %{"Limit" => %{"shape" => "QueryLimitType"}, "PaginationToken" => %{"shape" => "SearchPaginationTokenType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "UpdateUserPoolRequest" => %{"members" => %{"AdminCreateUserConfig" => %{"shape" => "AdminCreateUserConfigType"}, "AutoVerifiedAttributes" => %{"shape" => "VerifiedAttributesListType"}, "DeviceConfiguration" => %{"shape" => "DeviceConfigurationType"}, "EmailConfiguration" => %{"shape" => "EmailConfigurationType"}, "EmailVerificationMessage" => %{"shape" => "EmailVerificationMessageType"}, "EmailVerificationSubject" => %{"shape" => "EmailVerificationSubjectType"}, "LambdaConfig" => %{"shape" => "LambdaConfigType"}, "MfaConfiguration" => %{"shape" => "UserPoolMfaType"}, "Policies" => %{"shape" => "UserPoolPolicyType"}, "SmsAuthenticationMessage" => %{"shape" => "SmsVerificationMessageType"}, "SmsConfiguration" => %{"shape" => "SmsConfigurationType"}, "SmsVerificationMessage" => %{"shape" => "SmsVerificationMessageType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "UserPoolTags" => %{"shape" => "UserPoolTagsType"}, "VerificationMessageTemplate" => %{"shape" => "VerificationMessageTemplateType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "SessionType" => %{"max" => 2048, "min" => 20, "type" => "string"}, "GetGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "GroupNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["GroupName", "UserPoolId"], "type" => "structure"}, "DeviceRememberedStatusType" => %{"enum" => ["remembered", "not_remembered"], "type" => "string"}, "ImageFileType" => %{"type" => "blob"}, "ResourceServerIdentifierType" => %{"max" => 256, "min" => 1, "pattern" => "[\\x21\\x23-\\x5B\\x5D-\\x7E]+", "type" => "string"}, "SchemaAttributeType" => %{"members" => %{"AttributeDataType" => %{"shape" => "AttributeDataType"}, "DeveloperOnlyAttribute" => %{"box" => true, "shape" => "BooleanType"}, "Mutable" => %{"box" => true, "shape" => "BooleanType"}, "Name" => %{"shape" => "CustomAttributeNameType"}, "NumberAttributeConstraints" => %{"shape" => "NumberAttributeConstraintsType"}, "Required" => %{"box" => true, "shape" => "BooleanType"}, "StringAttributeConstraints" => %{"shape" => "StringAttributeConstraintsType"}}, "type" => "structure"}, "CreateGroupRequest" => %{"members" => %{"Description" => %{"shape" => "DescriptionType"}, "GroupName" => %{"shape" => "GroupNameType"}, "Precedence" => %{"shape" => "PrecedenceType"}, "RoleArn" => %{"shape" => "ArnType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["GroupName", "UserPoolId"], "type" => "structure"}, "EmailVerificationMessageType" => %{"max" => 20000, "min" => 6, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*", "type" => "string"}, "EmailAddressType" => %{"pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "LambdaConfigType" => %{"members" => %{"CreateAuthChallenge" => %{"shape" => "ArnType"}, "CustomMessage" => %{"shape" => "ArnType"}, "DefineAuthChallenge" => %{"shape" => "ArnType"}, "PostAuthentication" => %{"shape" => "ArnType"}, "PostConfirmation" => %{"shape" => "ArnType"}, "PreAuthentication" => %{"shape" => "ArnType"}, "PreSignUp" => %{"shape" => "ArnType"}, "VerifyAuthChallengeResponse" => %{"shape" => "ArnType"}}, "type" => "structure"}, "OAuthFlowsType" => %{"max" => 3, "member" => %{"shape" => "OAuthFlowType"}, "min" => 0, "type" => "list"}, "ListIdentityProvidersResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationKeyType"}, "Providers" => %{"shape" => "ProvidersListType"}}, "required" => ["Providers"], "type" => "structure"}, "AdminLinkProviderForUserResponse" => %{"members" => %{}, "type" => "structure"}, "SetUICustomizationRequest" => %{"members" => %{"CSS" => %{"shape" => "CSSType"}, "ClientId" => %{"shape" => "ClientIdType"}, "ImageFile" => %{"shape" => "ImageFileType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "GetUICustomizationResponse" => %{"members" => %{"UICustomization" => %{"shape" => "UICustomizationType"}}, "required" => ["UICustomization"], "type" => "structure"}, "UserStatusType" => %{"enum" => ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD"], "type" => "string"}, "StringAttributeConstraintsType" => %{"members" => %{"MaxLength" => %{"shape" => "StringType"}, "MinLength" => %{"shape" => "StringType"}}, "type" => "structure"}, "UserNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ForgotPasswordRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "SecretHash" => %{"shape" => "SecretHashType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["ClientId", "Username"], "type" => "structure"}, "CreateUserPoolResponse" => %{"members" => %{"UserPool" => %{"shape" => "UserPoolType"}}, "type" => "structure"}, "GetUserResponse" => %{"members" => %{"MFAOptions" => %{"shape" => "MFAOptionListType"}, "UserAttributes" => %{"shape" => "AttributeListType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["Username", "UserAttributes"], "type" => "structure"}, "DescribeResourceServerRequest" => %{"members" => %{"Identifier" => %{"shape" => "ResourceServerIdentifierType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "Identifier"], "type" => "structure"}, "IntegerType" => %{"type" => "integer"}, "GetDeviceRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}}, "required" => ["DeviceKey"], "type" => "structure"}, "CreateUserImportJobRequest" => %{"members" => %{"CloudWatchLogsRoleArn" => %{"shape" => "ArnType"}, "JobName" => %{"shape" => "UserImportJobNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["JobName", "UserPoolId", "CloudWatchLogsRoleArn"], "type" => "structure"}, "ClientPermissionType" => %{"max" => 2048, "min" => 1, "type" => "string"}, "MessageActionType" => %{"enum" => ["RESEND", "SUPPRESS"], "type" => "string"}, "AliasAttributeType" => %{"enum" => ["phone_number", "email", "preferred_username"], "type" => "string"}, "ListUserImportJobsResponse" => %{"members" => %{"PaginationToken" => %{"shape" => "PaginationKeyType"}, "UserImportJobs" => %{"shape" => "UserImportJobsListType"}}, "type" => "structure"}, "AttributeNameType" => %{"max" => 32, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "RespondToAuthChallengeRequest" => %{"members" => %{"ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeResponses" => %{"shape" => "ChallengeResponsesType"}, "ClientId" => %{"shape" => "ClientIdType"}, "Session" => %{"shape" => "SessionType"}}, "required" => ["ClientId", "ChallengeName"], "type" => "structure"}, "InvalidLambdaResponseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminDisableProviderForUserRequest" => %{"members" => %{"User" => %{"shape" => "ProviderUserIdentifierType"}, "UserPoolId" => %{"shape" => "StringType"}}, "required" => ["UserPoolId", "User"], "type" => "structure"}, "UpdateIdentityProviderResponse" => %{"members" => %{"IdentityProvider" => %{"shape" => "IdentityProviderType"}}, "required" => ["IdentityProvider"], "type" => "structure"}, "UpdateUserPoolClientResponse" => %{"members" => %{"UserPoolClient" => %{"shape" => "UserPoolClientType"}}, "type" => "structure"}, "AliasAttributesListType" => %{"member" => %{"shape" => "AliasAttributeType"}, "type" => "list"}, "AdminGetUserRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "StopUserImportJobRequest" => %{"members" => %{"JobId" => %{"shape" => "UserImportJobIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "JobId"], "type" => "structure"}, "GetCSVHeaderRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "SignUpRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "Password" => %{"shape" => "PasswordType"}, "SecretHash" => %{"shape" => "SecretHashType"}, "UserAttributes" => %{"shape" => "AttributeListType"}, "Username" => %{"shape" => "UsernameType"}, "ValidationData" => %{"shape" => "AttributeListType"}}, "required" => ["ClientId", "Username", "Password"], "type" => "structure"}, "AdminDeleteUserAttributesRequest" => %{"members" => %{"UserAttributeNames" => %{"shape" => "AttributeNameListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "UserAttributeNames"], "type" => "structure"}, "ChallengeNameType" => %{"enum" => ["SMS_MFA", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED"], "type" => "string"}, "SetUserSettingsRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "MFAOptions" => %{"shape" => "MFAOptionListType"}}, "required" => ["AccessToken", "MFAOptions"], "type" => "structure"}, "InternalErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminUserGlobalSignOutResponse" => %{"members" => %{}, "type" => "structure"}, "SecretHashType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+=/]+", "sensitive" => true, "type" => "string"}, "AttributeDataType" => %{"enum" => ["String", "Number", "DateTime", "Boolean"], "type" => "string"}, "DomainStatusType" => %{"enum" => ["CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"], "type" => "string"}, "DuplicateProviderException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ListOfStringTypes" => %{"member" => %{"shape" => "StringType"}, "type" => "list"}, "UserFilterType" => %{"max" => 256, "type" => "string"}, "AdminCreateUserConfigType" => %{"members" => %{"AllowAdminCreateUserOnly" => %{"shape" => "BooleanType"}, "InviteMessageTemplate" => %{"shape" => "MessageTemplateType"}, "UnusedAccountValidityDays" => %{"shape" => "AdminCreateUserUnusedAccountValidityDaysType"}}, "type" => "structure"}, "UpdateGroupResponse" => %{"members" => %{"Group" => %{"shape" => "GroupType"}}, "type" => "structure"}, "AttributeType" => %{"members" => %{"Name" => %{"shape" => "AttributeNameType"}, "Value" => %{"shape" => "AttributeValueType"}}, "required" => ["Name"], "type" => "structure"}, "UserPoolTagsType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "IdentityProviderTypeType" => %{"enum" => ["SAML", "Facebook", "Google", "LoginWithAmazon"], "type" => "string"}, "SchemaAttributesListType" => %{"max" => 50, "member" => %{"shape" => "SchemaAttributeType"}, "min" => 1, "type" => "list"}, "PasswordType" => %{"max" => 256, "min" => 6, "pattern" => "[\\S]+", "sensitive" => true, "type" => "string"}, "GetGroupResponse" => %{"members" => %{"Group" => %{"shape" => "GroupType"}}, "type" => "structure"}, "MFAOptionListType" => %{"member" => %{"shape" => "MFAOptionType"}, "type" => "list"}, "DescribeUserPoolClientRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ClientId"], "type" => "structure"}, "ListResourceServersLimitType" => %{"max" => 50, "min" => 1, "type" => "integer"}, "CodeDeliveryDetailsListType" => %{"member" => %{"shape" => "CodeDeliveryDetailsType"}, "type" => "list"}, "ProviderUserIdentifierType" => %{"members" => %{"ProviderAttributeName" => %{"shape" => "StringType"}, "ProviderAttributeValue" => %{"shape" => "StringType"}, "ProviderName" => %{"shape" => "ProviderNameType"}}, "type" => "structure"}, "SupportedIdentityProvidersListType" => %{"member" => %{"shape" => "ProviderNameType"}, "type" => "list"}, "UserPoolPolicyType" => %{"members" => %{"PasswordPolicy" => %{"shape" => "PasswordPolicyType"}}, "type" => "structure"}, "GetUserAttributeVerificationCodeRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "AttributeName" => %{"shape" => "AttributeNameType"}}, "required" => ["AccessToken", "AttributeName"], "type" => "structure"}, "ListUserPoolsResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationKeyType"}, "UserPools" => %{"shape" => "UserPoolListType"}}, "type" => "structure"}, "ChallengeParametersType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "AdminEnableUserRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "UsernameAttributesListType" => %{"member" => %{"shape" => "UsernameAttributeType"}, "type" => "list"}, "DescribeIdentityProviderRequest" => %{"members" => %{"ProviderName" => %{"shape" => "ProviderNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ProviderName"], "type" => "structure"}, "UnsupportedIdentityProviderException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminCreateUserResponse" => %{"members" => %{"User" => %{"shape" => "UserType"}}, "type" => "structure"}, "GetUICustomizationRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "UpdateUserPoolClientRequest" => %{"members" => %{"AllowedOAuthFlows" => %{"shape" => "OAuthFlowsType"}, "AllowedOAuthFlowsUserPoolClient" => %{"shape" => "BooleanType"}, "AllowedOAuthScopes" => %{"shape" => "ScopeListType"}, "CallbackURLs" => %{"shape" => "CallbackURLsListType"}, "ClientId" => %{"shape" => "ClientIdType"}, "ClientName" => %{"shape" => "ClientNameType"}, "DefaultRedirectURI" => %{"shape" => "RedirectUrlType"}, "ExplicitAuthFlows" => %{"shape" => "ExplicitAuthFlowsListType"}, "LogoutURLs" => %{"shape" => "LogoutURLsListType"}, "ReadAttributes" => %{"shape" => "ClientPermissionListType"}, "RefreshTokenValidity" => %{"shape" => "RefreshTokenValidityType"}, "SupportedIdentityProviders" => %{"shape" => "SupportedIdentityProvidersListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "WriteAttributes" => %{"shape" => "ClientPermissionListType"}}, "required" => ["UserPoolId", "ClientId"], "type" => "structure"}, "ListUserImportJobsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "PoolQueryLimitType"}, "PaginationToken" => %{"shape" => "PaginationKeyType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "MaxResults"], "type" => "structure"}, "NotAuthorizedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ClientPermissionListType" => %{"member" => %{"shape" => "ClientPermissionType"}, "type" => "list"}, "CustomAttributeNameType" => %{"max" => 20, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "AttributeValueType" => %{"max" => 2048, "sensitive" => true, "type" => "string"}, "ProviderNameTypeV1" => %{"max" => 32, "min" => 1, "pattern" => "[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+", "type" => "string"}, "AdminDisableUserRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "UserPoolIdType" => %{"max" => 55, "min" => 1, "pattern" => "[\\w-]+_[0-9a-zA-Z]+", "type" => "string"}, "UserImportJobNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w\\s+=,.@-]+", "type" => "string"}, "PasswordPolicyMinLengthType" => %{"max" => 99, "min" => 6, "type" => "integer"}, "S3BucketType" => %{"max" => 1024, "min" => 3, "pattern" => "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$", "type" => "string"}, "AdminUpdateDeviceStatusResponse" => %{"members" => %{}, "type" => "structure"}, "RespondToAuthChallengeResponse" => %{"members" => %{"AuthenticationResult" => %{"shape" => "AuthenticationResultType"}, "ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeParameters" => %{"shape" => "ChallengeParametersType"}, "Session" => %{"shape" => "SessionType"}}, "type" => "structure"}, "AuthParametersType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "ConfirmDeviceRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}, "DeviceName" => %{"shape" => "DeviceNameType"}, "DeviceSecretVerifierConfig" => %{"shape" => "DeviceSecretVerifierConfigType"}}, "required" => ["AccessToken", "DeviceKey"], "type" => "structure"}, "NewDeviceMetadataType" => %{"members" => %{"DeviceGroupKey" => %{"shape" => "StringType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}}, "type" => "structure"}, "ChangePasswordRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "PreviousPassword" => %{"shape" => "PasswordType"}, "ProposedPassword" => %{"shape" => "PasswordType"}}, "required" => ["PreviousPassword", "ProposedPassword", "AccessToken"], "type" => "structure"}, "PreSignedUrlType" => %{"max" => 2048, "min" => 0, "type" => "string"}, "ListUsersResponse" => %{"members" => %{"PaginationToken" => %{"shape" => "SearchPaginationTokenType"}, "Users" => %{"shape" => "UsersListType"}}, "type" => "structure"}, "ProvidersListType" => %{"max" => 50, "member" => %{"shape" => "ProviderDescription"}, "min" => 0, "type" => "list"}, "EmailVerificationSubjectByLinkType" => %{"max" => 140, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+", "type" => "string"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ListResourceServersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ListResourceServersLimitType"}, "NextToken" => %{"shape" => "PaginationKeyType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "DeleteUserRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}}, "required" => ["AccessToken"], "type" => "structure"}, "UserImportJobType" => %{"members" => %{"CloudWatchLogsRoleArn" => %{"shape" => "ArnType"}, "CompletionDate" => %{"shape" => "DateType"}, "CompletionMessage" => %{"shape" => "CompletionMessageType"}, "CreationDate" => %{"shape" => "DateType"}, "FailedUsers" => %{"shape" => "LongType"}, "ImportedUsers" => %{"shape" => "LongType"}, "JobId" => %{"shape" => "UserImportJobIdType"}, "JobName" => %{"shape" => "UserImportJobNameType"}, "PreSignedUrl" => %{"shape" => "PreSignedUrlType"}, "SkippedUsers" => %{"shape" => "LongType"}, "StartDate" => %{"shape" => "DateType"}, "Status" => %{"shape" => "UserImportJobStatusType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "DeviceSecretVerifierConfigType" => %{"members" => %{"PasswordVerifier" => %{"shape" => "StringType"}, "Salt" => %{"shape" => "StringType"}}, "type" => "structure"}, "DescribeUserPoolDomainRequest" => %{"members" => %{"Domain" => %{"shape" => "DomainType"}}, "required" => ["Domain"], "type" => "structure"}, "CreateUserPoolDomainResponse" => %{"members" => %{}, "type" => "structure"}, "DescribeUserPoolRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "ExpiredCodeException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminSetUserSettingsResponse" => %{"members" => %{}, "type" => "structure"}, "UserNotConfirmedException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminListGroupsForUserResponse" => %{"members" => %{"Groups" => %{"shape" => "GroupListType"}, "NextToken" => %{"shape" => "PaginationKey"}}, "type" => "structure"}, "ListResourceServersResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationKeyType"}, "ResourceServers" => %{"shape" => "ResourceServersListType"}}, "required" => ["ResourceServers"], "type" => "structure"}, "ChallengeResponsesType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "UpdateIdentityProviderRequest" => %{"members" => %{"AttributeMapping" => %{"shape" => "AttributeMappingType"}, "IdpIdentifiers" => %{"shape" => "IdpIdentifiersListType"}, "ProviderDetails" => %{"shape" => "ProviderDetailsType"}, "ProviderName" => %{"shape" => "ProviderNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ProviderName"], "type" => "structure"}, "CreateUserPoolRequest" => %{"members" => %{"AdminCreateUserConfig" => %{"shape" => "AdminCreateUserConfigType"}, "AliasAttributes" => %{"shape" => "AliasAttributesListType"}, "AutoVerifiedAttributes" => %{"shape" => "VerifiedAttributesListType"}, "DeviceConfiguration" => %{"shape" => "DeviceConfigurationType"}, "EmailConfiguration" => %{"shape" => "EmailConfigurationType"}, "EmailVerificationMessage" => %{"shape" => "EmailVerificationMessageType"}, "EmailVerificationSubject" => %{"shape" => "EmailVerificationSubjectType"}, "LambdaConfig" => %{"shape" => "LambdaConfigType"}, "MfaConfiguration" => %{"shape" => "UserPoolMfaType"}, "Policies" => %{"shape" => "UserPoolPolicyType"}, "PoolName" => %{"shape" => "UserPoolNameType"}, "Schema" => %{"shape" => "SchemaAttributesListType"}, "SmsAuthenticationMessage" => %{"shape" => "SmsVerificationMessageType"}, "SmsConfiguration" => %{"shape" => "SmsConfigurationType"}, "SmsVerificationMessage" => %{"shape" => "SmsVerificationMessageType"}, "UserPoolTags" => %{"shape" => "UserPoolTagsType"}, "UsernameAttributes" => %{"shape" => "UsernameAttributesListType"}, "VerificationMessageTemplate" => %{"shape" => "VerificationMessageTemplateType"}}, "required" => ["PoolName"], "type" => "structure"}, "CompletionMessageType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w]+", "type" => "string"}, "DeleteUserAttributesRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "UserAttributeNames" => %{"shape" => "AttributeNameListType"}}, "required" => ["UserAttributeNames", "AccessToken"], "type" => "structure"}, "DeleteUserAttributesResponse" => %{"members" => %{}, "type" => "structure"}, "UserPoolClientDescription" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "ClientName" => %{"shape" => "ClientNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "EmailVerificationMessageByLinkType" => %{"max" => 20000, "min" => 6, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*", "type" => "string"}, "ResourceServersListType" => %{"member" => %{"shape" => "ResourceServerType"}, "type" => "list"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "PaginationKey" => %{"min" => 1, "pattern" => "[\\S]+", "type" => "string"}, "GetUserAttributeVerificationCodeResponse" => %{"members" => %{"CodeDeliveryDetails" => %{"shape" => "CodeDeliveryDetailsType"}}, "type" => "structure"}, "ListUserPoolClientsResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationKey"}, "UserPoolClients" => %{"shape" => "UserPoolClientListType"}}, "type" => "structure"}, "AttributeListType" => %{"member" => %{"shape" => "AttributeType"}, "type" => "list"}, "DescribeUserPoolDomainResponse" => %{"members" => %{"DomainDescription" => %{"shape" => "DomainDescriptionType"}}, "type" => "structure"}, "ConfirmSignUpRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "ConfirmationCode" => %{"shape" => "ConfirmationCodeType"}, "ForceAliasCreation" => %{"shape" => "ForceAliasCreation"}, "SecretHash" => %{"shape" => "SecretHashType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["ClientId", "Username", "ConfirmationCode"], "type" => "structure"}, "DateType" => %{"type" => "timestamp"}, "UnexpectedLambdaException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminGetDeviceResponse" => %{"members" => %{"Device" => %{"shape" => "DeviceType"}}, "required" => ["Device"], "type" => "structure"}, "DeviceListType" => %{"member" => %{"shape" => "DeviceType"}, "type" => "list"}, "VerificationMessageTemplateType" => %{"members" => %{"DefaultEmailOption" => %{"shape" => "DefaultEmailOptionType"}, "EmailMessage" => %{"shape" => "EmailVerificationMessageType"}, "EmailMessageByLink" => %{"shape" => "EmailVerificationMessageByLinkType"}, "EmailSubject" => %{"shape" => "EmailVerificationSubjectType"}, "EmailSubjectByLink" => %{"shape" => "EmailVerificationSubjectByLinkType"}, "SmsMessage" => %{"shape" => "SmsVerificationMessageType"}}, "type" => "structure"}, "ResourceServerType" => %{"members" => %{"Identifier" => %{"shape" => "ResourceServerIdentifierType"}, "Name" => %{"shape" => "ResourceServerNameType"}, "Scopes" => %{"shape" => "ResourceServerScopeListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "AdminRespondToAuthChallengeResponse" => %{"members" => %{"AuthenticationResult" => %{"shape" => "AuthenticationResultType"}, "ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeParameters" => %{"shape" => "ChallengeParametersType"}, "Session" => %{"shape" => "SessionType"}}, "type" => "structure"}, "AdminLinkProviderForUserRequest" => %{"members" => %{"DestinationUser" => %{"shape" => "ProviderUserIdentifierType"}, "SourceUser" => %{"shape" => "ProviderUserIdentifierType"}, "UserPoolId" => %{"shape" => "StringType"}}, "required" => ["UserPoolId", "DestinationUser", "SourceUser"], "type" => "structure"}, "AdminUpdateUserAttributesRequest" => %{"members" => %{"UserAttributes" => %{"shape" => "AttributeListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "UserAttributes"], "type" => "structure"}, "DeleteIdentityProviderRequest" => %{"members" => %{"ProviderName" => %{"shape" => "ProviderNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ProviderName"], "type" => "structure"}, "DomainDescriptionType" => %{"members" => %{"AWSAccountId" => %{"shape" => "AWSAccountIdType"}, "CloudFrontDistribution" => %{"shape" => "ArnType"}, "Domain" => %{"shape" => "DomainType"}, "S3Bucket" => %{"shape" => "S3BucketType"}, "Status" => %{"shape" => "DomainStatusType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Version" => %{"shape" => "DomainVersionType"}}, "type" => "structure"}, "ListGroupsRequest" => %{"members" => %{"Limit" => %{"shape" => "QueryLimitType"}, "NextToken" => %{"shape" => "PaginationKey"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "MessageType" => %{"type" => "string"}, "ResendConfirmationCodeResponse" => %{"members" => %{"CodeDeliveryDetails" => %{"shape" => "CodeDeliveryDetailsType"}}, "type" => "structure"}, "ListUsersRequest" => %{"members" => %{"AttributesToGet" => %{"shape" => "SearchedAttributeNamesListType"}, "Filter" => %{"shape" => "UserFilterType"}, "Limit" => %{"shape" => "QueryLimitType"}, "PaginationToken" => %{"shape" => "SearchPaginationTokenType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "UserPoolClientListType" => %{"member" => %{"shape" => "UserPoolClientDescription"}, "type" => "list"}, "ClientSecretType" => %{"max" => 64, "min" => 1, "pattern" => "[\\w+]+", "sensitive" => true, "type" => "string"}, "AdminGetUserResponse" => %{"members" => %{"Enabled" => %{"shape" => "BooleanType"}, "MFAOptions" => %{"shape" => "MFAOptionListType"}, "UserAttributes" => %{"shape" => "AttributeListType"}, "UserCreateDate" => %{"shape" => "DateType"}, "UserLastModifiedDate" => %{"shape" => "DateType"}, "UserStatus" => %{"shape" => "UserStatusType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["Username"], "type" => "structure"}, "AdminCreateUserUnusedAccountValidityDaysType" => %{"max" => 90, "min" => 0, "type" => "integer"}, "AdminRemoveUserFromGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "GroupNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "GroupName"], "type" => "structure"}, "EmailConfigurationType" => %{"members" => %{"ReplyToEmailAddress" => %{"shape" => "EmailAddressType"}, "SourceArn" => %{"shape" => "ArnType"}}, "type" => "structure"}, "DomainVersionType" => %{"max" => 20, "min" => 1, "type" => "string"}, "UserImportInProgressException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "DescribeUserImportJobRequest" => %{"members" => %{"JobId" => %{"shape" => "UserImportJobIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "JobId"], "type" => "structure"}, "CreateIdentityProviderResponse" => %{"members" => %{"IdentityProvider" => %{"shape" => "IdentityProviderType"}}, "required" => ["IdentityProvider"], "type" => "structure"}, "DeliveryMediumType" => %{"enum" => ["SMS", "EMAIL"], "type" => "string"}, "ConfirmSignUpResponse" => %{"members" => %{}, "type" => "structure"}, "BooleanType" => %{"type" => "boolean"}, "DescribeIdentityProviderResponse" => %{"members" => %{"IdentityProvider" => %{"shape" => "IdentityProviderType"}}, "required" => ["IdentityProvider"], "type" => "structure"}, "ResourceServerScopeListType" => %{"max" => 25, "member" => %{"shape" => "ResourceServerScopeType"}, "type" => "list"}, "DescribeUserImportJobResponse" => %{"members" => %{"UserImportJob" => %{"shape" => "UserImportJobType"}}, "type" => "structure"}, "TokenModelType" => %{"pattern" => "[A-Za-z0-9-_=.]+", "sensitive" => true, "type" => "string"}, "ForgotPasswordResponse" => %{"members" => %{"CodeDeliveryDetails" => %{"shape" => "CodeDeliveryDetailsType"}}, "type" => "structure"}, "UserLambdaValidationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "UserImportJobIdType" => %{"max" => 55, "min" => 1, "pattern" => "import-[0-9a-zA-Z-]+", "type" => "string"}, "CreateIdentityProviderRequest" => %{"members" => %{"AttributeMapping" => %{"shape" => "AttributeMappingType"}, "IdpIdentifiers" => %{"shape" => "IdpIdentifiersListType"}, "ProviderDetails" => %{"shape" => "ProviderDetailsType"}, "ProviderName" => %{"shape" => "ProviderNameTypeV1"}, "ProviderType" => %{"shape" => "IdentityProviderTypeType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ProviderName", "ProviderType", "ProviderDetails"], "type" => "structure"}, "UICustomizationType" => %{"members" => %{"CSS" => %{"shape" => "CSSType"}, "CSSVersion" => %{"shape" => "CSSVersionType"}, "ClientId" => %{"shape" => "ClientIdType"}, "CreationDate" => %{"shape" => "DateType"}, "ImageUrl" => %{"shape" => "ImageUrlType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "type" => "structure"}, "InvalidSmsRoleTrustRelationshipException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "SmsVerificationMessageType" => %{"max" => 140, "min" => 6, "pattern" => ".*\\{####\\}.*", "type" => "string"}, "CSSType" => %{"type" => "string"}, "PasswordResetRequiredException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "ArnType" => %{"max" => 2048, "min" => 20, "pattern" => "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?", "type" => "string"}, "GlobalSignOutRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}}, "required" => ["AccessToken"], "type" => "structure"}, "PaginationKeyType" => %{"min" => 1, "pattern" => "[\\S]+", "type" => "string"}, "StopUserImportJobResponse" => %{"members" => %{"UserImportJob" => %{"shape" => "UserImportJobType"}}, "type" => "structure"}, "InvalidUserPoolConfigurationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "UserPoolNameType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w\\s+=,.@-]+", "type" => "string"}, "UpdateResourceServerResponse" => %{"members" => %{"ResourceServer" => %{"shape" => "ResourceServerType"}}, "required" => ["ResourceServer"], "type" => "structure"}, "InitiateAuthRequest" => %{"members" => %{"AuthFlow" => %{"shape" => "AuthFlowType"}, "AuthParameters" => %{"shape" => "AuthParametersType"}, "ClientId" => %{"shape" => "ClientIdType"}, "ClientMetadata" => %{"shape" => "ClientMetadataType"}}, "required" => ["AuthFlow", "ClientId"], "type" => "structure"}, "AdminEnableUserResponse" => %{"members" => %{}, "type" => "structure"}, "AdminDeleteUserRequest" => %{"members" => %{"UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username"], "type" => "structure"}, "ScopeType" => %{"max" => 256, "min" => 1, "pattern" => "[\\x21\\x23-\\x5B\\x5D-\\x7E]+", "type" => "string"}, "AuthFlowType" => %{"enum" => ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH"], "type" => "string"}, "ListUserPoolClientsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "QueryLimit"}, "NextToken" => %{"shape" => "PaginationKey"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "ListIdentityProvidersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ListProvidersLimitType"}, "NextToken" => %{"shape" => "PaginationKeyType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId"], "type" => "structure"}, "ExplicitAuthFlowsType" => %{"enum" => ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY"], "type" => "string"}, "PreconditionNotMetException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminListDevicesResponse" => %{"members" => %{"Devices" => %{"shape" => "DeviceListType"}, "PaginationToken" => %{"shape" => "SearchPaginationTokenType"}}, "type" => "structure"}, "AttributeMappingType" => %{"key" => %{"shape" => "AttributeMappingKeyType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "CreateResourceServerRequest" => %{"members" => %{"Identifier" => %{"shape" => "ResourceServerIdentifierType"}, "Name" => %{"shape" => "ResourceServerNameType"}, "Scopes" => %{"shape" => "ResourceServerScopeListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "Identifier", "Name"], "type" => "structure"}, "ResourceServerScopeDescriptionType" => %{"max" => 256, "min" => 1, "type" => "string"}, "ResourceServerScopeType" => %{"members" => %{"ScopeDescription" => %{"shape" => "ResourceServerScopeDescriptionType"}, "ScopeName" => %{"shape" => "ResourceServerScopeNameType"}}, "required" => ["ScopeName", "ScopeDescription"], "type" => "structure"}, "InvalidEmailRoleAccessPolicyException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "TooManyFailedAttemptsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "UserType" => %{"members" => %{"Attributes" => %{"shape" => "AttributeListType"}, "Enabled" => %{"shape" => "BooleanType"}, "MFAOptions" => %{"shape" => "MFAOptionListType"}, "UserCreateDate" => %{"shape" => "DateType"}, "UserLastModifiedDate" => %{"shape" => "DateType"}, "UserStatus" => %{"shape" => "UserStatusType"}, "Username" => %{"shape" => "UsernameType"}}, "type" => "structure"}, "AttributeNameListType" => %{"member" => %{"shape" => "AttributeNameType"}, "type" => "list"}, "AdminUpdateDeviceStatusRequest" => %{"members" => %{"DeviceKey" => %{"shape" => "DeviceKeyType"}, "DeviceRememberedStatus" => %{"shape" => "DeviceRememberedStatusType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "DeviceKey"], "type" => "structure"}, "DescribeResourceServerResponse" => %{"members" => %{"ResourceServer" => %{"shape" => "ResourceServerType"}}, "required" => ["ResourceServer"], "type" => "structure"}, "RefreshTokenValidityType" => %{"max" => 3650, "min" => 0, "type" => "integer"}, "CustomAttributesListType" => %{"max" => 25, "member" => %{"shape" => "SchemaAttributeType"}, "min" => 1, "type" => "list"}, "GetIdentityProviderByIdentifierRequest" => %{"members" => %{"IdpIdentifier" => %{"shape" => "IdpIdentifierType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "IdpIdentifier"], "type" => "structure"}, "PrecedenceType" => %{"min" => 0, "type" => "integer"}, "CreateGroupResponse" => %{"members" => %{"Group" => %{"shape" => "GroupType"}}, "type" => "structure"}, "PasswordPolicyType" => %{"members" => %{"MinimumLength" => %{"shape" => "PasswordPolicyMinLengthType"}, "RequireLowercase" => %{"shape" => "BooleanType"}, "RequireNumbers" => %{"shape" => "BooleanType"}, "RequireSymbols" => %{"shape" => "BooleanType"}, "RequireUppercase" => %{"shape" => "BooleanType"}}, "type" => "structure"}, "IdpIdentifierType" => %{"max" => 40, "min" => 1, "pattern" => "[\\w\\s+=.@-]+", "type" => "string"}, "CreateUserPoolDomainRequest" => %{"members" => %{"Domain" => %{"shape" => "DomainType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["Domain", "UserPoolId"], "type" => "structure"}, "DeleteUserPoolDomainResponse" => %{"members" => %{}, "type" => "structure"}, "ClientMetadataType" => %{"key" => %{"shape" => "StringType"}, "type" => "map", "value" => %{"shape" => "StringType"}}, "UsersListType" => %{"member" => %{"shape" => "UserType"}, "type" => "list"}, "CodeDeliveryFailureException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "SignUpResponse" => %{"members" => %{"CodeDeliveryDetails" => %{"shape" => "CodeDeliveryDetailsType"}, "UserConfirmed" => %{"shape" => "BooleanType"}, "UserSub" => %{"shape" => "StringType"}}, "required" => ["UserConfirmed", "UserSub"], "type" => "structure"}, "UpdateUserAttributesRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "UserAttributes" => %{"shape" => "AttributeListType"}}, "required" => ["UserAttributes", "AccessToken"], "type" => "structure"}, "EmailVerificationSubjectType" => %{"max" => 140, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+", "type" => "string"}, "LongType" => %{"type" => "long"}, "StartUserImportJobRequest" => %{"members" => %{"JobId" => %{"shape" => "UserImportJobIdType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "JobId"], "type" => "structure"}, "ConfirmForgotPasswordRequest" => %{"members" => %{"ClientId" => %{"shape" => "ClientIdType"}, "ConfirmationCode" => %{"shape" => "ConfirmationCodeType"}, "Password" => %{"shape" => "PasswordType"}, "SecretHash" => %{"shape" => "SecretHashType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["ClientId", "Username", "ConfirmationCode", "Password"], "type" => "structure"}, "AddCustomAttributesResponse" => %{"members" => %{}, "type" => "structure"}, "ForgetDeviceRequest" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "DeviceKey" => %{"shape" => "DeviceKeyType"}}, "required" => ["DeviceKey"], "type" => "structure"}, "ScopeDoesNotExistException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AuthenticationResultType" => %{"members" => %{"AccessToken" => %{"shape" => "TokenModelType"}, "ExpiresIn" => %{"shape" => "IntegerType"}, "IdToken" => %{"shape" => "TokenModelType"}, "NewDeviceMetadata" => %{"shape" => "NewDeviceMetadataType"}, "RefreshToken" => %{"shape" => "TokenModelType"}, "TokenType" => %{"shape" => "StringType"}}, "type" => "structure"}, "StringType" => %{"type" => "string"}, "QueryLimitType" => %{"max" => 60, "min" => 0, "type" => "integer"}, "ListUsersInGroupResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationKey"}, "Users" => %{"shape" => "UsersListType"}}, "type" => "structure"}, "ProviderDescription" => %{"members" => %{"CreationDate" => %{"shape" => "DateType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "ProviderName" => %{"shape" => "ProviderNameType"}, "ProviderType" => %{"shape" => "IdentityProviderTypeType"}}, "type" => "structure"}, "CallbackURLsListType" => %{"max" => 100, "member" => %{"shape" => "RedirectUrlType"}, "min" => 0, "type" => "list"}, "UpdateResourceServerRequest" => %{"members" => %{"Identifier" => %{"shape" => "ResourceServerIdentifierType"}, "Name" => %{"shape" => "ResourceServerNameType"}, "Scopes" => %{"shape" => "ResourceServerScopeListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "Identifier", "Name"], "type" => "structure"}, "UserPoolClientType" => %{"members" => %{"AllowedOAuthFlows" => %{"shape" => "OAuthFlowsType"}, "AllowedOAuthFlowsUserPoolClient" => %{"box" => true, "shape" => "BooleanType"}, "AllowedOAuthScopes" => %{"shape" => "ScopeListType"}, "CallbackURLs" => %{"shape" => "CallbackURLsListType"}, "ClientId" => %{"shape" => "ClientIdType"}, "ClientName" => %{"shape" => "ClientNameType"}, "ClientSecret" => %{"shape" => "ClientSecretType"}, "CreationDate" => %{"shape" => "DateType"}, "DefaultRedirectURI" => %{"shape" => "RedirectUrlType"}, "ExplicitAuthFlows" => %{"shape" => "ExplicitAuthFlowsListType"}, "LastModifiedDate" => %{"shape" => "DateType"}, "LogoutURLs" => %{"shape" => "LogoutURLsListType"}, "ReadAttributes" => %{"shape" => "ClientPermissionListType"}, "RefreshTokenValidity" => %{"shape" => "RefreshTokenValidityType"}, "SupportedIdentityProviders" => %{"shape" => "SupportedIdentityProvidersListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "WriteAttributes" => %{"shape" => "ClientPermissionListType"}}, "type" => "structure"}, "StartUserImportJobResponse" => %{"members" => %{"UserImportJob" => %{"shape" => "UserImportJobType"}}, "type" => "structure"}, "AdminSetUserSettingsRequest" => %{"members" => %{"MFAOptions" => %{"shape" => "MFAOptionListType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "MFAOptions"], "type" => "structure"}, "SetUserSettingsResponse" => %{"members" => %{}, "type" => "structure"}, "InitiateAuthResponse" => %{"members" => %{"AuthenticationResult" => %{"shape" => "AuthenticationResultType"}, "ChallengeName" => %{"shape" => "ChallengeNameType"}, "ChallengeParameters" => %{"shape" => "ChallengeParametersType"}, "Session" => %{"shape" => "SessionType"}}, "type" => "structure"}, "ConcurrentModificationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}, "AdminInitiateAuthRequest" => %{"members" => %{"AuthFlow" => %{"shape" => "AuthFlowType"}, "AuthParameters" => %{"shape" => "AuthParametersType"}, "ClientId" => %{"shape" => "ClientIdType"}, "ClientMetadata" => %{"shape" => "ClientMetadataType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}}, "required" => ["UserPoolId", "ClientId", "AuthFlow"], "type" => "structure"}, "RedirectUrlType" => %{"max" => 1024, "min" => 1, "pattern" => "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+", "type" => "string"}, "CreateUserPoolClientResponse" => %{"members" => %{"UserPoolClient" => %{"shape" => "UserPoolClientType"}}, "type" => "structure"}, "ClientIdType" => %{"max" => 128, "min" => 1, "pattern" => "[\\w+]+", "sensitive" => true, "type" => "string"}, "ImageUrlType" => %{"type" => "string"}, "MFAOptionType" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeNameType"}, "DeliveryMedium" => %{"shape" => "DeliveryMediumType"}}, "type" => "structure"}, "ListDevicesResponse" => %{"members" => %{"Devices" => %{"shape" => "DeviceListType"}, "PaginationToken" => %{"shape" => "SearchPaginationTokenType"}}, "type" => "structure"}, "AdminAddUserToGroupRequest" => %{"members" => %{"GroupName" => %{"shape" => "GroupNameType"}, "UserPoolId" => %{"shape" => "UserPoolIdType"}, "Username" => %{"shape" => "UsernameType"}}, "required" => ["UserPoolId", "Username", "GroupName"], "type" => "structure"}, "GroupExistsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "MessageType"}}, "type" => "structure"}}
  end
end