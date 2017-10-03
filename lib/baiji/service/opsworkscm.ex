defmodule Baiji.OpsWorksCM do
  @moduledoc """
  AWS OpsWorks for Chef Automate

  AWS OpsWorks for Chef Automate is a service that runs and manages
  configuration management servers.

  **Glossary of terms**

  <ul> <li> **Server**: A configuration management server that can be
  highly-available. The configuration manager runs on your instances by using
  various AWS services, such as Amazon Elastic Compute Cloud (EC2), and
  potentially Amazon Relational Database Service (RDS). A server is a generic
  abstraction over the configuration manager that you want to use, much like
  Amazon RDS. In AWS OpsWorks for Chef Automate, you do not start or stop
  servers. After you create servers, they continue to run until they are
  deleted.

  </li> <li> **Engine**: The specific configuration manager that you want to
  use (such as `Chef`) is the engine.

  </li> <li> **Backup**: This is an application-level backup of the data that
  the configuration manager stores. A backup creates a .tar.gz file that is
  stored in an Amazon Simple Storage Service (S3) bucket in your account. AWS
  OpsWorks for Chef Automate creates the S3 bucket when you launch the first
  instance. A backup maintains a snapshot of all of a server's important
  attributes at the time of the backup.

  </li> <li> **Events**: Events are always related to a server. Events are
  written during server creation, when health checks run, when backups are
  created, etc. When you delete a server, the server's events are also
  deleted.

  </li> <li> **AccountAttributes**: Every account has attributes that are
  assigned in the AWS OpsWorks for Chef Automate database. These attributes
  store information about configuration limits (servers, backups, etc.) and
  your customer account.

  </li> </ul> **Endpoints**

  AWS OpsWorks for Chef Automate supports the following endpoints, all HTTPS.
  You must connect to one of the following endpoints. Chef servers can only
  be accessed or managed within the endpoint in which they are created.

  <ul> <li> opsworks-cm.us-east-1.amazonaws.com

  </li> <li> opsworks-cm.us-west-2.amazonaws.com

  </li> <li> opsworks-cm.eu-west-1.amazonaws.com

  </li> </ul> **Throttling limits**

  All API operations allow for five requests per second with a burst of 10
  requests per second.
  """
  
  @doc """
  Associates a new node with the Chef server. This command is an alternative
  to `knife bootstrap`. For more information about how to disassociate a
  node, see `DisassociateNode`.

  A node can can only be associated with servers that are in a `HEALTHY`
  state. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid. The AssociateNode API call can be integrated into Auto Scaling
  configurations, AWS Cloudformation templates, or the user data of a
  server's instance.

  Example: `aws opsworks-cm associate-node --server-name *MyServer*
  --node-name *MyManagedNode* --engine-attributes
  "Name=*MyOrganization*,Value=default"
  "Name=*Chef_node_public_key*,Value=*Public_key_contents*"`
  """
  def associate_node(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateNode",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "AssociateNodeRequest",
      output_shape:     "AssociateNodeResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an application-level backup of a server. While the server is in the
  `BACKING_UP` state, the server cannot be changed, and no additional backup
  can be created.

  Backups can be created for servers in `RUNNING`, `HEALTHY`, and `UNHEALTHY`
  states. By default, you can create a maximum of 50 manual backups.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when the maximum number of manual
  backups is reached. An `InvalidStateException` is thrown when the server is
  not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A
  `ResourceNotFoundException` is thrown when the server is not found. A
  `ValidationException` is thrown when parameters of the request are not
  valid.
  """
  def create_backup(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateBackup",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "CreateBackupRequest",
      output_shape:     "CreateBackupResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates and immedately starts a new server. The server is ready to use when
  it is in the `HEALTHY` state. By default, you can create a maximum of 10
  servers.

  This operation is asynchronous.

  A `LimitExceededException` is thrown when you have created the maximum
  number of servers (10). A `ResourceAlreadyExistsException` is thrown when a
  server with the same name already exists in the account. A
  `ResourceNotFoundException` is thrown when you specify a backup ID that is
  not valid or is for a backup that does not exist. A `ValidationException`
  is thrown when parameters of the request are not valid.

  If you do not specify a security group by adding the `SecurityGroupIds`
  parameter, AWS OpsWorks creates a new security group. The default security
  group opens the Chef server to the world on TCP port 443. If a KeyName is
  present, AWS OpsWorks enables SSH access. SSH is also open to the world on
  TCP port 22.

  By default, the Chef Server is accessible from any IP address. We recommend
  that you update your security group rules to allow access from known IP
  addresses and address ranges only. To edit security group rules, open
  Security Groups in the navigation pane of the EC2 management console.
  """
  def create_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateServer",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "CreateServerRequest",
      output_shape:     "CreateServerResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes a backup. You can delete both manual and automated backups. This
  operation is asynchronous.

  An `InvalidStateException` is thrown when a backup deletion is already in
  progress. A `ResourceNotFoundException` is thrown when the backup does not
  exist. A `ValidationException` is thrown when parameters of the request are
  not valid.
  """
  def delete_backup(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteBackup",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DeleteBackupRequest",
      output_shape:     "DeleteBackupResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Deletes the server and the underlying AWS CloudFormation stack (including
  the server's EC2 instance). When you run this command, the server state is
  updated to `DELETING`. After the server is deleted, it is no longer
  returned by `DescribeServer` requests. If the AWS CloudFormation stack
  cannot be deleted, the server cannot be deleted.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when a server deletion is already in
  progress. A `ResourceNotFoundException` is thrown when the server does not
  exist. A `ValidationException` is raised when parameters of the request are
  not valid.
  """
  def delete_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteServer",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DeleteServerRequest",
      output_shape:     "DeleteServerResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes your account attributes, and creates requests to increase limits
  before they are reached or exceeded.

  This operation is synchronous.
  """
  def describe_account_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAccountAttributes",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DescribeAccountAttributesRequest",
      output_shape:     "DescribeAccountAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes backups. The results are ordered by time, with newest backups
  first. If you do not specify a BackupId or ServerName, the command returns
  all backups.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the backup does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_backups(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBackups",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DescribeBackupsRequest",
      output_shape:     "DescribeBackupsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Describes events for a specified server. Results are ordered by time, with
  newest events first.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEvents",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DescribeEventsRequest",
      output_shape:     "DescribeEventsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the current status of an existing association or disassociation
  request.

  A `ResourceNotFoundException` is thrown when no recent association or
  disassociation request with the specified token is found, or when the
  server does not exist. A `ValidationException` is raised when parameters of
  the request are not valid.
  """
  def describe_node_association_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeNodeAssociationStatus",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DescribeNodeAssociationStatusRequest",
      output_shape:     "DescribeNodeAssociationStatusResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Lists all configuration management servers that are identified with your
  account. Only the stored results from Amazon DynamoDB are returned. AWS
  OpsWorks for Chef Automate does not query other services.

  This operation is synchronous.

  A `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def describe_servers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeServers",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DescribeServersRequest",
      output_shape:     "DescribeServersResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Disassociates a node from a Chef server, and removes the node from the Chef
  server's managed nodes. After a node is disassociated, the node key pair is
  no longer valid for accessing the Chef API. For more information about how
  to associate a node, see `AssociateNode`.

  A node can can only be disassociated from a server that is in a `HEALTHY`
  state. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def disassociate_node(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateNode",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "DisassociateNodeRequest",
      output_shape:     "DisassociateNodeResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Restores a backup to a server that is in a `CONNECTION_LOST`, `HEALTHY`,
  `RUNNING`, `UNHEALTHY`, or `TERMINATED` state. When you run RestoreServer,
  the server's EC2 instance is deleted, and a new EC2 instance is configured.
  RestoreServer maintains the existing server endpoint, so configuration
  management of the server's client devices (nodes) should continue to work.

  This operation is asynchronous.

  An `InvalidStateException` is thrown when the server is not in a valid
  state. A `ResourceNotFoundException` is thrown when the server does not
  exist. A `ValidationException` is raised when parameters of the request are
  not valid.
  """
  def restore_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RestoreServer",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "RestoreServerRequest",
      output_shape:     "RestoreServerResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Manually starts server maintenance. This command can be useful if an
  earlier maintenance attempt failed, and the underlying cause of maintenance
  failure has been resolved. The server is in an `UNDER_MAINTENANCE` state
  while maintenance is in progress.

  Maintenance can only be started on servers in `HEALTHY` and `UNHEALTHY`
  states. Otherwise, an `InvalidStateException` is thrown. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def start_maintenance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartMaintenance",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "StartMaintenanceRequest",
      output_shape:     "StartMaintenanceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates settings for a server.

  This operation is synchronous.
  """
  def update_server(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateServer",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "UpdateServerRequest",
      output_shape:     "UpdateServerResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Updates engine-specific attributes on a specified server. The server enters
  the `MODIFYING` state when this operation is in progress. Only one update
  can occur at a time. You can use this command to reset the Chef server's
  private key (`CHEF_PIVOTAL_KEY`).

  This operation is asynchronous.

  This operation can only be called for servers in `HEALTHY` or `UNHEALTHY`
  states. Otherwise, an `InvalidStateException` is raised. A
  `ResourceNotFoundException` is thrown when the server does not exist. A
  `ValidationException` is raised when parameters of the request are not
  valid.
  """
  def update_server_engine_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "opsworkscm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateServerEngineAttributes",
      
      target_prefix:    "OpsWorksCM_V2016_11_01",
      
      endpoint_prefix:  "opsworks-cm",
      type:             :json,
      version:          "2016-11-01",
      method:           :post,
      input_shape:      "UpdateServerEngineAttributesRequest",
      output_shape:     "UpdateServerEngineAttributesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"KeyPair" => %{"type" => "string"}, "DisassociateNodeRequest" => %{"members" => %{"EngineAttributes" => %{"shape" => "EngineAttributes"}, "NodeName" => %{"shape" => "NodeName"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName", "NodeName"], "type" => "structure"}, "CreateBackupResponse" => %{"members" => %{"Backup" => %{"shape" => "Backup"}}, "type" => "structure"}, "EngineAttributes" => %{"member" => %{"shape" => "EngineAttribute"}, "type" => "list"}, "AccountAttribute" => %{"members" => %{"Maximum" => %{"shape" => "Integer"}, "Name" => %{"shape" => "String"}, "Used" => %{"shape" => "Integer"}}, "type" => "structure"}, "DeleteServerResponse" => %{"members" => %{}, "type" => "structure"}, "String" => %{"type" => "string"}, "Boolean" => %{"type" => "boolean"}, "CreateServerResponse" => %{"members" => %{"Server" => %{"shape" => "Server"}}, "type" => "structure"}, "EngineAttribute" => %{"members" => %{"Name" => %{"shape" => "EngineAttributeName"}, "Value" => %{"shape" => "EngineAttributeValue"}}, "type" => "structure"}, "AttributeName" => %{"max" => 64, "min" => 1, "pattern" => "[A-Z][A-Z0-9_]*", "type" => "string"}, "ServiceRoleArn" => %{"pattern" => "arn:aws:iam::[0-9]{12}:role/.*", "type" => "string"}, "MaintenanceStatus" => %{"enum" => ["SUCCESS", "FAILED"], "type" => "string"}, "InvalidNextTokenException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "Strings" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "DescribeAccountAttributesRequest" => %{"members" => %{}, "type" => "structure"}, "BackupType" => %{"enum" => ["AUTOMATED", "MANUAL"], "type" => "string"}, "RestoreServerRequest" => %{"members" => %{"BackupId" => %{"shape" => "BackupId"}, "InstanceType" => %{"shape" => "String"}, "KeyPair" => %{"shape" => "KeyPair"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["BackupId", "ServerName"], "type" => "structure"}, "UpdateServerRequest" => %{"members" => %{"BackupRetentionCount" => %{"shape" => "Integer"}, "DisableAutomatedBackup" => %{"shape" => "Boolean"}, "PreferredBackupWindow" => %{"shape" => "TimeWindowDefinition"}, "PreferredMaintenanceWindow" => %{"shape" => "TimeWindowDefinition"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName"], "type" => "structure"}, "CreateBackupRequest" => %{"members" => %{"Description" => %{"shape" => "String"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName"], "type" => "structure"}, "DescribeEventsResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "ServerEvents" => %{"shape" => "ServerEvents"}}, "type" => "structure"}, "AssociateNodeRequest" => %{"members" => %{"EngineAttributes" => %{"shape" => "EngineAttributes"}, "NodeName" => %{"shape" => "NodeName"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName", "NodeName", "EngineAttributes"], "type" => "structure"}, "ServerStatus" => %{"enum" => ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"], "type" => "string"}, "UpdateServerResponse" => %{"members" => %{"Server" => %{"shape" => "Server"}}, "type" => "structure"}, "DescribeEventsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName"], "type" => "structure"}, "NodeAssociationStatusToken" => %{"type" => "string"}, "InstanceProfileArn" => %{"pattern" => "arn:aws:iam::[0-9]{12}:instance-profile/.*", "type" => "string"}, "DeleteBackupResponse" => %{"members" => %{}, "type" => "structure"}, "ServerEvent" => %{"members" => %{"CreatedAt" => %{"shape" => "Timestamp"}, "LogUrl" => %{"shape" => "String"}, "Message" => %{"shape" => "String"}, "ServerName" => %{"shape" => "String"}}, "type" => "structure"}, "BackupId" => %{"max" => 79, "type" => "string"}, "Timestamp" => %{"type" => "timestamp"}, "DescribeNodeAssociationStatusResponse" => %{"members" => %{"NodeAssociationStatus" => %{"shape" => "NodeAssociationStatus"}}, "type" => "structure"}, "Servers" => %{"member" => %{"shape" => "Server"}, "type" => "list"}, "MaxResults" => %{"min" => 1, "type" => "integer"}, "DescribeBackupsResponse" => %{"members" => %{"Backups" => %{"shape" => "Backups"}, "NextToken" => %{"shape" => "String"}}, "type" => "structure"}, "Backups" => %{"member" => %{"shape" => "Backup"}, "type" => "list"}, "ValidationException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "EngineAttributeValue" => %{"sensitive" => true, "type" => "string"}, "Server" => %{"members" => %{"AssociatePublicIpAddress" => %{"shape" => "Boolean"}, "BackupRetentionCount" => %{"shape" => "Integer"}, "CloudFormationStackArn" => %{"shape" => "String"}, "CreatedAt" => %{"shape" => "Timestamp"}, "DisableAutomatedBackup" => %{"shape" => "Boolean"}, "Endpoint" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineAttributes" => %{"shape" => "EngineAttributes"}, "EngineModel" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "InstanceProfileArn" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "KeyPair" => %{"shape" => "String"}, "MaintenanceStatus" => %{"shape" => "MaintenanceStatus"}, "PreferredBackupWindow" => %{"shape" => "TimeWindowDefinition"}, "PreferredMaintenanceWindow" => %{"shape" => "TimeWindowDefinition"}, "SecurityGroupIds" => %{"shape" => "Strings"}, "ServerArn" => %{"shape" => "String"}, "ServerName" => %{"shape" => "String"}, "ServiceRoleArn" => %{"shape" => "String"}, "Status" => %{"shape" => "ServerStatus"}, "StatusReason" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "Strings"}}, "type" => "structure"}, "InvalidStateException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "DescribeNodeAssociationStatusRequest" => %{"members" => %{"NodeAssociationStatusToken" => %{"shape" => "NodeAssociationStatusToken"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["NodeAssociationStatusToken", "ServerName"], "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "StartMaintenanceResponse" => %{"members" => %{"Server" => %{"shape" => "Server"}}, "type" => "structure"}, "ServerEvents" => %{"member" => %{"shape" => "ServerEvent"}, "type" => "list"}, "AssociateNodeResponse" => %{"members" => %{"NodeAssociationStatusToken" => %{"shape" => "NodeAssociationStatusToken"}}, "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "Backup" => %{"members" => %{"BackupArn" => %{"shape" => "String"}, "BackupId" => %{"shape" => "BackupId"}, "BackupType" => %{"shape" => "BackupType"}, "CreatedAt" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "Engine" => %{"shape" => "String"}, "EngineModel" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "InstanceProfileArn" => %{"shape" => "String"}, "InstanceType" => %{"shape" => "String"}, "KeyPair" => %{"shape" => "String"}, "PreferredBackupWindow" => %{"shape" => "TimeWindowDefinition"}, "PreferredMaintenanceWindow" => %{"shape" => "TimeWindowDefinition"}, "S3DataSize" => %{"deprecated" => true, "shape" => "Integer"}, "S3DataUrl" => %{"deprecated" => true, "shape" => "String"}, "S3LogUrl" => %{"shape" => "String"}, "SecurityGroupIds" => %{"shape" => "Strings"}, "ServerName" => %{"shape" => "ServerName"}, "ServiceRoleArn" => %{"shape" => "String"}, "Status" => %{"shape" => "BackupStatus"}, "StatusDescription" => %{"shape" => "String"}, "SubnetIds" => %{"shape" => "Strings"}, "ToolsVersion" => %{"shape" => "String"}, "UserArn" => %{"shape" => "String"}}, "type" => "structure"}, "StartMaintenanceRequest" => %{"members" => %{"ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName"], "type" => "structure"}, "TimeWindowDefinition" => %{"pattern" => "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$", "type" => "string"}, "BackupRetentionCountDefinition" => %{"min" => 1, "type" => "integer"}, "DescribeServersResponse" => %{"members" => %{"NextToken" => %{"shape" => "String"}, "Servers" => %{"shape" => "Servers"}}, "type" => "structure"}, "UpdateServerEngineAttributesRequest" => %{"members" => %{"AttributeName" => %{"shape" => "AttributeName"}, "AttributeValue" => %{"shape" => "AttributeValue"}, "ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName", "AttributeName"], "type" => "structure"}, "RestoreServerResponse" => %{"members" => %{}, "type" => "structure"}, "DeleteBackupRequest" => %{"members" => %{"BackupId" => %{"shape" => "BackupId"}}, "required" => ["BackupId"], "type" => "structure"}, "BackupStatus" => %{"enum" => ["IN_PROGRESS", "OK", "FAILED", "DELETING"], "type" => "string"}, "AccountAttributes" => %{"member" => %{"shape" => "AccountAttribute"}, "type" => "list"}, "DescribeBackupsRequest" => %{"members" => %{"BackupId" => %{"shape" => "BackupId"}, "MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ServerName" => %{"shape" => "ServerName"}}, "type" => "structure"}, "AttributeValue" => %{"type" => "string"}, "DescribeServersRequest" => %{"members" => %{"MaxResults" => %{"shape" => "MaxResults"}, "NextToken" => %{"shape" => "NextToken"}, "ServerName" => %{"shape" => "ServerName"}}, "type" => "structure"}, "ResourceAlreadyExistsException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "String"}}, "type" => "structure"}, "EngineAttributeName" => %{"type" => "string"}, "CreateServerRequest" => %{"members" => %{"AssociatePublicIpAddress" => %{"shape" => "Boolean"}, "BackupId" => %{"shape" => "BackupId"}, "BackupRetentionCount" => %{"shape" => "BackupRetentionCountDefinition"}, "DisableAutomatedBackup" => %{"shape" => "Boolean"}, "Engine" => %{"shape" => "String"}, "EngineAttributes" => %{"shape" => "EngineAttributes"}, "EngineModel" => %{"shape" => "String"}, "EngineVersion" => %{"shape" => "String"}, "InstanceProfileArn" => %{"shape" => "InstanceProfileArn"}, "InstanceType" => %{"shape" => "String"}, "KeyPair" => %{"shape" => "KeyPair"}, "PreferredBackupWindow" => %{"shape" => "TimeWindowDefinition"}, "PreferredMaintenanceWindow" => %{"shape" => "TimeWindowDefinition"}, "SecurityGroupIds" => %{"shape" => "Strings"}, "ServerName" => %{"shape" => "ServerName"}, "ServiceRoleArn" => %{"shape" => "ServiceRoleArn"}, "SubnetIds" => %{"shape" => "Strings"}}, "required" => ["ServerName", "InstanceProfileArn", "InstanceType", "ServiceRoleArn"], "type" => "structure"}, "UpdateServerEngineAttributesResponse" => %{"members" => %{"Server" => %{"shape" => "Server"}}, "type" => "structure"}, "DescribeAccountAttributesResponse" => %{"members" => %{"Attributes" => %{"shape" => "AccountAttributes"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "DeleteServerRequest" => %{"members" => %{"ServerName" => %{"shape" => "ServerName"}}, "required" => ["ServerName"], "type" => "structure"}, "ServerName" => %{"max" => 40, "min" => 1, "pattern" => "[a-zA-Z][a-zA-Z0-9\\-]*", "type" => "string"}, "NextToken" => %{"type" => "string"}, "NodeName" => %{"pattern" => "^[\\-\\p{Alnum}_:.]+$", "type" => "string"}, "DisassociateNodeResponse" => %{"members" => %{"NodeAssociationStatusToken" => %{"shape" => "NodeAssociationStatusToken"}}, "type" => "structure"}, "NodeAssociationStatus" => %{"enum" => ["SUCCESS", "FAILED", "IN_PROGRESS"], "type" => "string"}}
  end
end