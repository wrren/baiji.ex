defmodule Baiji.Gamelift do
  @moduledoc """
  Amazon GameLift Service

  Amazon GameLift is a managed service for developers who need a scalable,
  dedicated server solution for their multiplayer games. Amazon GameLift
  provides tools for the following tasks: (1) acquire computing resources and
  deploy game servers, (2) scale game server capacity to meet player demand,
  (3) host game sessions and manage player access, and (4) track in-depth
  metrics on player usage and server performance.

  The Amazon GameLift service API includes two important function sets:

  <ul> <li> **Manage game sessions and player access** -- Retrieve
  information on available game sessions; create new game sessions; send
  player requests to join a game session.

  </li> <li> **Configure and manage game server resources** -- Manage builds,
  fleets, queues, and aliases; set autoscaling policies; retrieve logs and
  metrics.

  </li> </ul> This reference guide describes the low-level service API for
  Amazon GameLift. You can use the API functionality with these tools:

  <ul> <li> The Amazon Web Services software development kit ([AWS
  SDK](http://aws.amazon.com/tools/#sdk)) is available in [multiple
  languages](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-supported.html#gamelift-supported-clients)
  including C++ and C#. Use the SDK to access the API programmatically from
  an application, such as a game client.

  </li> <li> The [AWS command-line interface](http://aws.amazon.com/cli/)
  (CLI) tool is primarily useful for handling administrative actions, such as
  setting up and managing Amazon GameLift settings and resources. You can use
  the AWS CLI to manage all of your AWS services.

  </li> <li> The [AWS Management
  Console](https://console.aws.amazon.com/gamelift/home) for Amazon GameLift
  provides a web interface to manage your Amazon GameLift settings and
  resources. The console includes a dashboard for tracking key resources,
  including builds and fleets, and displays usage and performance metrics for
  your games as customizable graphs.

  </li> <li> Amazon GameLift Local is a tool for testing your game's
  integration with Amazon GameLift before deploying it on the service. This
  tools supports a subset of key API actions, which can be called from either
  the AWS CLI or programmatically. See [Testing an
  Integration](http://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing-local.html).

  </li> </ul> **MORE RESOURCES**

  <ul> <li> [Amazon GameLift Developer
  Guide](http://docs.aws.amazon.com/gamelift/latest/developerguide/) -- Learn
  more about Amazon GameLift features and how to use them.

  </li> <li> [Lumberyard and Amazon GameLift
  Tutorials](https://gamedev.amazon.com/forums/tutorials) -- Get started fast
  with walkthroughs and sample projects.

  </li> <li> [GameDev Blog](http://aws.amazon.com/blogs/gamedev/) -- Stay up
  to date with new features and techniques.

  </li> <li> [GameDev
  Forums](https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html)
  -- Connect with the GameDev community.

  </li> <li> [Amazon GameLift Document
  History](http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html)
  -- See changes to the Amazon GameLift service, SDKs, and documentation, as
  well as links to release notes.

  </li> </ul> **API SUMMARY**

  This list offers a functional overview of the Amazon GameLift service API.

  **Managing Games and Players**

  Use these actions to start new game sessions, find existing game sessions,
  track game session status and other information, and enable player access
  to game sessions.

  <ul> <li> **Discover existing game sessions**

  <ul> <li> `SearchGameSessions` -- Retrieve all available game sessions or
  search for game sessions that match a set of criteria.

  </li> </ul> </li> <li> **Start new game sessions**

  <ul> <li> Start new games with Queues to find the best available hosting
  resources across multiple regions, minimize player latency, and balance
  game session activity for efficiency and cost effectiveness.

  <ul> <li> `StartGameSessionPlacement` -- Request a new game session
  placement and add one or more players to it.

  </li> <li> `DescribeGameSessionPlacement` -- Get details on a placement
  request, including status.

  </li> <li> `StopGameSessionPlacement` -- Cancel a placement request.

  </li> </ul> </li> <li> `CreateGameSession` -- Start a new game session on a
  specific fleet. *Available in Amazon GameLift Local.*

  </li> </ul> </li> <li> **Start new game sessions with FlexMatch
  matchmaking**

  <ul> <li> `StartMatchmaking` -- Request matchmaking for one players or a
  group who want to play together.

  </li> <li> `DescribeMatchmaking` -- Get details on a matchmaking request,
  including status.

  </li> <li> `AcceptMatch` -- Register that a player accepts a proposed
  match, for matches that require player acceptance.

  </li> <li> `StopMatchmaking` -- Cancel a matchmaking request.

  </li> </ul> </li> <li> **Manage game session data**

  <ul> <li> `DescribeGameSessions` -- Retrieve metadata for one or more game
  sessions, including length of time active and current player count.
  *Available in Amazon GameLift Local.*

  </li> <li> `DescribeGameSessionDetails` -- Retrieve metadata and the game
  session protection setting for one or more game sessions.

  </li> <li> `UpdateGameSession` -- Change game session settings, such as
  maximum player count and join policy.

  </li> <li> `GetGameSessionLogUrl` -- Get the location of saved logs for a
  game session.

  </li> </ul> </li> <li> **Manage player sessions**

  <ul> <li> `CreatePlayerSession` -- Send a request for a player to join a
  game session. *Available in Amazon GameLift Local.*

  </li> <li> `CreatePlayerSessions` -- Send a request for multiple players to
  join a game session. *Available in Amazon GameLift Local.*

  </li> <li> `DescribePlayerSessions` -- Get details on player activity,
  including status, playing time, and player data. *Available in Amazon
  GameLift Local.*

  </li> </ul> </li> </ul> **Setting Up and Managing Game Servers**

  When setting up Amazon GameLift resources for your game, you first [create
  a game
  build](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)
  and upload it to Amazon GameLift. You can then use these actions to
  configure and manage a fleet of resources to run your game servers, scale
  capacity to meet player demand, access performance and utilization metrics,
  and more.

  <ul> <li> **Manage game builds**

  <ul> <li> `CreateBuild` -- Create a new build using files stored in an
  Amazon S3 bucket. (Update uploading permissions with
  `RequestUploadCredentials`.) To create a build and upload files from a
  local path, use the AWS CLI command `upload-build`.

  </li> <li> `ListBuilds` -- Get a list of all builds uploaded to a Amazon
  GameLift region.

  </li> <li> `DescribeBuild` -- Retrieve information associated with a build.

  </li> <li> `UpdateBuild` -- Change build metadata, including build name and
  version.

  </li> <li> `DeleteBuild` -- Remove a build from Amazon GameLift.

  </li> </ul> </li> <li> **Manage fleets**

  <ul> <li> `CreateFleet` -- Configure and activate a new fleet to run a
  build's game servers.

  </li> <li> `ListFleets` -- Get a list of all fleet IDs in a Amazon GameLift
  region (all statuses).

  </li> <li> `DeleteFleet` -- Terminate a fleet that is no longer running
  game servers or hosting players.

  </li> <li> View / update fleet configurations.

  <ul> <li> `DescribeFleetAttributes` / `UpdateFleetAttributes` -- View or
  change a fleet's metadata and settings for game session protection and
  resource creation limits.

  </li> <li> `DescribeFleetPortSettings` / `UpdateFleetPortSettings` -- View
  or change the inbound permissions (IP address and port setting ranges)
  allowed for a fleet.

  </li> <li> `DescribeRuntimeConfiguration` / `UpdateRuntimeConfiguration` --
  View or change what server processes (and how many) to run on each instance
  in a fleet.

  </li> </ul> </li> </ul> </li> <li> **Control fleet capacity**

  <ul> <li> `DescribeEC2InstanceLimits` -- Retrieve maximum number of
  instances allowed for the current AWS account and the current usage level.

  </li> <li> `DescribeFleetCapacity` / `UpdateFleetCapacity` -- Retrieve the
  capacity settings and the current number of instances in a fleet; adjust
  fleet capacity settings to scale up or down.

  </li> <li> Autoscale -- Manage autoscaling rules and apply them to a fleet.

  <ul> <li> `PutScalingPolicy` -- Create a new autoscaling policy, or update
  an existing one.

  </li> <li> `DescribeScalingPolicies` -- Retrieve an existing autoscaling
  policy.

  </li> <li> `DeleteScalingPolicy` -- Delete an autoscaling policy and stop
  it from affecting a fleet's capacity.

  </li> </ul> </li> </ul> </li> <li> **Manage VPC peering connections for
  fleets**

  <ul> <li> `CreateVpcPeeringAuthorization` -- Authorize a peering connection
  to one of your VPCs.

  </li> <li> `DescribeVpcPeeringAuthorizations` -- Retrieve valid peering
  connection authorizations.

  </li> <li> `DeleteVpcPeeringAuthorization` -- Delete a peering connection
  authorization.

  </li> <li> `CreateVpcPeeringConnection` -- Establish a peering connection
  between the VPC for a Amazon GameLift fleet and one of your VPCs.

  </li> <li> `DescribeVpcPeeringConnections` -- Retrieve information on
  active or pending VPC peering connections with a Amazon GameLift fleet.

  </li> <li> `DeleteVpcPeeringConnection` -- Delete a VPC peering connection
  with a Amazon GameLift fleet.

  </li> </ul> </li> <li> **Access fleet activity statistics**

  <ul> <li> `DescribeFleetUtilization` -- Get current data on the number of
  server processes, game sessions, and players currently active on a fleet.

  </li> <li> `DescribeFleetEvents` -- Get a fleet's logged events for a
  specified time span.

  </li> <li> `DescribeGameSessions` -- Retrieve metadata associated with one
  or more game sessions, including length of time active and current player
  count.

  </li> </ul> </li> <li> **Remotely access an instance**

  <ul> <li> `DescribeInstances` -- Get information on each instance in a
  fleet, including instance ID, IP address, and status.

  </li> <li> `GetInstanceAccess` -- Request access credentials needed to
  remotely connect to a specified instance in a fleet.

  </li> </ul> </li> <li> **Manage fleet aliases**

  <ul> <li> `CreateAlias` -- Define a new alias and optionally assign it to a
  fleet.

  </li> <li> `ListAliases` -- Get all fleet aliases defined in a Amazon
  GameLift region.

  </li> <li> `DescribeAlias` -- Retrieve information on an existing alias.

  </li> <li> `UpdateAlias` -- Change settings for a alias, such as
  redirecting it from one fleet to another.

  </li> <li> `DeleteAlias` -- Remove an alias from the region.

  </li> <li> `ResolveAlias` -- Get the fleet ID that a specified alias points
  to.

  </li> </ul> </li> <li> **Manage game session queues**

  <ul> <li> `CreateGameSessionQueue` -- Create a queue for processing
  requests for new game sessions.

  </li> <li> `DescribeGameSessionQueues` -- Retrieve game session queues
  defined in a Amazon GameLift region.

  </li> <li> `UpdateGameSessionQueue` -- Change the configuration of a game
  session queue.

  </li> <li> `DeleteGameSessionQueue` -- Remove a game session queue from the
  region.

  </li> </ul> </li> <li> **Manage FlexMatch resources**

  <ul> <li> `CreateMatchmakingConfiguration` -- Create a matchmaking
  configuration with instructions for building a player group and placing in
  a new game session.

  </li> <li> `DescribeMatchmakingConfigurations` -- Retrieve matchmaking
  configurations defined a Amazon GameLift region.

  </li> <li> `UpdateMatchmakingConfiguration` -- Change settings for
  matchmaking configuration. queue.

  </li> <li> `DeleteMatchmakingConfiguration` -- Remove a matchmaking
  configuration from the region.

  </li> <li> `CreateMatchmakingRuleSet` -- Create a set of rules to use when
  searching for player matches.

  </li> <li> `DescribeMatchmakingRuleSets` -- Retrieve matchmaking rule sets
  defined in a Amazon GameLift region.

  </li> <li> `ValidateMatchmakingRuleSet` -- Verify syntax for a set of
  matchmaking rules.

  </li> </ul> </li> </ul>
  """

  @doc """
  Retrieves the properties for one or more game session queues. When
  requesting multiple queues, use the pagination parameters to retrieve
  results as a set of sequential pages. If successful, a `GameSessionQueue`
  object is returned for each requested queue. When specifying a list of
  queues, objects are returned only for queues that currently exist in the
  region.

  Queue-related operations include:

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def describe_game_session_queues(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionQueues",
      method:           :post,
      input_shape:      "DescribeGameSessionQueuesInput",
      output_shape:     "DescribeGameSessionQueuesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels a game session placement that is in `PENDING` status. To stop a
  placement, provide the placement ID values. If successful, the placement is
  moved to `CANCELLED` status.

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def stop_game_session_placement(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopGameSessionPlacement",
      method:           :post,
      input_shape:      "StopGameSessionPlacementInput",
      output_shape:     "StopGameSessionPlacementOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Permanently removes a FlexMatch matchmaking configuration. To delete,
  specify the configuration name. A matchmaking configuration cannot be
  deleted if it is being used in any active matchmaking tickets.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def delete_matchmaking_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteMatchmakingConfiguration",
      method:           :post,
      input_shape:      "DeleteMatchmakingConfigurationInput",
      output_shape:     "DeleteMatchmakingConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  *This API call is not currently in use. * Retrieves a fresh set of upload
  credentials and the assigned Amazon S3 storage location for a specific
  build. Valid credentials are required to upload your game build files to
  Amazon S3.
  """
  def request_upload_credentials(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RequestUploadCredentials",
      method:           :post,
      input_shape:      "RequestUploadCredentialsInput",
      output_shape:     "RequestUploadCredentialsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves properties, including the protection policy in force, for one or
  more game sessions. This action can be used in several ways: (1) provide a
  `GameSessionId` or `GameSessionArn` to request details for a specific game
  session; (2) provide either a `FleetId` or an `AliasId` to request
  properties for all game sessions running on a fleet.

  To get game session record(s), specify just one of the following: game
  session ID, fleet ID, or alias ID. You can filter this request by game
  session status. Use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `GameSessionDetail` object is
  returned for each session matching the request.

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_session_details(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionDetails",
      method:           :post,
      input_shape:      "DescribeGameSessionDetailsInput",
      output_shape:     "DescribeGameSessionDetailsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates or updates a scaling policy for a fleet. An active scaling policy
  prompts Amazon GameLift to track a certain metric for a fleet and
  automatically change the fleet's capacity in specific circumstances. Each
  scaling policy contains one rule statement. Fleets can have multiple
  scaling policies in force simultaneously.

  A scaling policy rule statement has the following structure:

  If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
  `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
  `[ScalingAdjustment]`.

  For example, this policy: "If the number of idle instances exceeds 20 for
  more than 15 minutes, then reduce the fleet capacity by 10 instances" could
  be implemented as the following rule statement:

  If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15]
  minutes, then [ChangeInCapacity] by [-10].

  To create or update a scaling policy, specify a unique combination of name
  and fleet ID, and set the rule values. All parameters for this action are
  required. If successful, the policy name is returned. Scaling policies
  cannot be suspended or made inactive. To stop enforcing a scaling policy,
  call `DeleteScalingPolicy`.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def put_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "PutScalingPolicy",
      method:           :post,
      input_shape:      "PutScalingPolicyInput",
      output_shape:     "PutScalingPolicyOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves properties for an alias. This operation returns all alias
  metadata and settings. To get an alias's target fleet ID only, use
  `ResolveAlias`.

  To get alias properties, specify the alias ID. If successful, the requested
  alias record is returned.

  Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def describe_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeAlias",
      method:           :post,
      input_shape:      "DescribeAliasInput",
      output_shape:     "DescribeAliasOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates settings for a game session queue, which determines how new game
  session requests in the queue are processed. To update settings, specify
  the queue name to be updated and provide the new settings. When updating
  destinations, provide a complete list of destinations.

  Queue-related operations include:

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def update_game_session_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGameSessionQueue",
      method:           :post,
      input_shape:      "UpdateGameSessionQueueInput",
      output_shape:     "UpdateGameSessionQueueOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the following information for the specified EC2 instance type:

  <ul> <li> maximum number of instances allowed per AWS account (service
  limit)

  </li> <li> current usage level for the AWS account

  </li> </ul> Service limits vary depending on region. Available regions for
  Amazon GameLift can be found in the AWS Management Console for Amazon
  GameLift (see the drop-down list in the upper right corner).

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_e_c2_instance_limits(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeEC2InstanceLimits",
      method:           :post,
      input_shape:      "DescribeEC2InstanceLimitsInput",
      output_shape:     "DescribeEC2InstanceLimitsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests remote access to a fleet instance. Remote access is useful for
  debugging, gathering benchmarking data, or watching activity in real time.

  Access requires credentials that match the operating system of the
  instance. For a Windows instance, Amazon GameLift returns a user name and
  password as strings for use with a Windows Remote Desktop client. For a
  Linux instance, Amazon GameLift returns a user name and RSA private key,
  also as strings, for use with an SSH client. The private key must be saved
  in the proper format to a `.pem` file before using. If you're making this
  request using the AWS CLI, saving the secret can be handled as part of the
  GetInstanceAccess request. (See the example later in this topic). For more
  information on remote access, see [Remotely Accessing an
  Instance](http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html).

  To request access to a specific instance, specify the IDs of the instance
  and the fleet it belongs to. If successful, an `InstanceAccess` object is
  returned containing the instance's IP address and a set of credentials.
  """
  def get_instance_access(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetInstanceAccess",
      method:           :post,
      input_shape:      "GetInstanceAccessInput",
      output_shape:     "GetInstanceAccessOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Validates the syntax of a matchmaking rule or rule set. This operation
  checks that the rule set uses syntactically correct JSON and that it
  conforms to allowed property expressions. To validate syntax, provide a
  rule set string.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def validate_matchmaking_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ValidateMatchmakingRuleSet",
      method:           :post,
      input_shape:      "ValidateMatchmakingRuleSetInput",
      output_shape:     "ValidateMatchmakingRuleSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the details of FlexMatch matchmaking configurations. with this
  operation, you have the following options: (1) retrieve all existing
  configurations, (2) provide the names of one or more configurations to
  retrieve, or (3) retrieve all configurations that use a specified rule set
  name. When requesting multiple items, use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a
  configuration is returned for each requested name. When specifying a list
  of names, only configurations that currently exist are returned.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def describe_matchmaking_configurations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmakingConfigurations",
      method:           :post,
      input_shape:      "DescribeMatchmakingConfigurationsInput",
      output_shape:     "DescribeMatchmakingConfigurationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Removes a VPC peering connection. To delete the connection, you must have a
  valid authorization for the VPC peering connection that you want to delete.
  You can check for an authorization by calling
  `DescribeVpcPeeringAuthorizations` or request a new one using
  `CreateVpcPeeringAuthorization`.

  Once a valid authorization exists, call this operation from the AWS account
  that is used to manage the Amazon GameLift fleets. Identify the connection
  to delete by the connection ID and fleet ID. If successful, the connection
  is removed.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def delete_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcPeeringConnection",
      method:           :post,
      input_shape:      "DeleteVpcPeeringConnectionInput",
      output_shape:     "DeleteVpcPeeringConnectionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels a matchmaking ticket that is currently being processed. To stop the
  matchmaking operation, specify the ticket ID. If successful, work on the
  ticket is stopped, and the ticket status is changed to `CANCELLED`.

  Matchmaking-related operations include:

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> </ul>
  """
  def stop_matchmaking(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StopMatchmaking",
      method:           :post,
      input_shape:      "StopMatchmakingInput",
      output_shape:     "StopMatchmakingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Establishes a VPC peering connection between a virtual private cloud (VPC)
  in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering
  enables the game servers on your fleet to communicate directly with other
  AWS resources. You can peer with VPCs in any AWS account that you have
  access to, including the account that you use to manage your Amazon
  GameLift fleets. You cannot peer with VPCs that are in different regions.
  For more information, see [VPC Peering with Amazon GameLift
  Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  Before calling this operation to establish the peering connection, you
  first need to call `CreateVpcPeeringAuthorization` and identify the VPC you
  want to peer with. Once the authorization for the specified VPC is issued,
  you have 24 hours to establish the connection. These two operations handle
  all tasks necessary to peer the two VPCs, including acceptance, updating
  routing tables, etc.

  To establish the connection, call this operation from the AWS account that
  is used to manage the Amazon GameLift fleets. Identify the following
  values: (1) The ID of the fleet you want to be enable a VPC peering
  connection for; (2) The AWS account with the VPC that you want to peer
  with; and (3) The ID of the VPC you want to peer with. This operation is
  asynchronous. If successful, a `VpcPeeringConnection` request is created.
  You can use continuous polling to track the request's status using
  `DescribeVpcPeeringConnections`, or by monitoring fleet events for success
  or failure using `DescribeFleetEvents`.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def create_vpc_peering_connection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateVpcPeeringConnection",
      method:           :post,
      input_shape:      "CreateVpcPeeringConnectionInput",
      output_shape:     "CreateVpcPeeringConnectionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a multiplayer game session for players. This action creates a game
  session record and assigns an available server process in the specified
  fleet to host the game session. A fleet must have an `ACTIVE` status before
  a game session can be created in it.

  To create a game session, specify either fleet ID or alias ID and indicate
  a maximum number of players to allow in the game session. You can also
  provide a name and game-specific properties for this game session. If
  successful, a `GameSession` object is returned containing the game session
  properties and other settings you specified.

  **Idempotency tokens.** You can add a token that uniquely identifies game
  session requests. This is useful for ensuring that game session requests
  are idempotent. Multiple requests with the same idempotency token are
  processed only once; subsequent requests return the original result. All
  response values are the same with the exception of game session status,
  which may change.

  **Resource creation limits.** If you are creating a game session on a fleet
  with a resource creation limit policy in force, then you must specify a
  creator ID. Without this ID, Amazon GameLift has no way to evaluate the
  policy for this new game session request.

  **Player acceptance policy.** By default, newly created game sessions are
  open to new players. You can restrict new player access by using
  `UpdateGameSession` to change the game session's player session creation
  policy.

  **Game session logs.** Logs are retained for all active game sessions for
  14 days. To access the logs, call `GetGameSessionLogUrl` to download the
  log files.

  *Available in Amazon GameLift Local.*

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_game_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateGameSession",
      method:           :post,
      input_shape:      "CreateGameSessionInput",
      output_shape:     "CreateGameSessionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new rule set for FlexMatch matchmaking. A rule set describes the
  type of match to create, such as the number and size of teams, and sets the
  parameters for acceptable player matches, such as minimum skill level or
  character type. Rule sets are used in matchmaking configurations, which
  define how matchmaking requests are handled. Each
  `MatchmakingConfiguration` uses one rule set; you can set up multiple rule
  sets to handle the scenarios that suit your game (such as for different
  game modes), and create a separate matchmaking configuration for each rule
  set. See additional information on rule set content in the
  `MatchmakingRuleSet` structure. For help creating rule sets, including
  useful examples, see the topic [ Adding FlexMatch to Your
  Game](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

  Once created, matchmaking rule sets cannot be changed or deleted, so we
  recommend checking the rule set syntax using
  `ValidateMatchmakingRuleSet`before creating the rule set.

  To create a matchmaking rule set, provide the set of rules and a unique
  name. Rule sets must be defined in the same region as the matchmaking
  configuration they will be used with. Rule sets cannot be edited or
  deleted. If you need to change a rule set, create a new one with the
  necessary edits and then update matchmaking configurations to use the new
  rule set.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def create_matchmaking_rule_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateMatchmakingRuleSet",
      method:           :post,
      input_shape:      "CreateMatchmakingRuleSetInput",
      output_shape:     "CreateMatchmakingRuleSetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates game session properties. This includes the session name, maximum
  player count, protection policy, which controls whether or not an active
  game session can be terminated during a scale-down event, and the player
  session creation policy, which controls whether or not new players can join
  the session. To update a game session, specify the game session ID and the
  values you want to change. If successful, an updated `GameSession` object
  is returned.

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def update_game_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateGameSession",
      method:           :post,
      input_shape:      "UpdateGameSessionInput",
      output_shape:     "UpdateGameSessionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates an alias for a fleet. In most situations, you can use an alias ID
  in place of a fleet ID. By using a fleet alias instead of a specific fleet
  ID, you can switch gameplay and players to a new fleet without changing
  your game client or other game components. For example, for games in
  production, using an alias allows you to seamlessly redirect your player
  base to a new game server update.

  Amazon GameLift supports two types of routing strategies for aliases:
  simple and terminal. A simple alias points to an active fleet. A terminal
  alias is used to display messaging or link to a URL instead of routing
  players to an active fleet. For example, you might use a terminal alias
  when a game version is no longer supported and you want to direct players
  to an upgrade site.

  To create a fleet alias, specify an alias name, routing strategy, and
  optional description. Each simple alias can point to only one fleet, but a
  fleet can have multiple aliases. If successful, a new alias record is
  returned, including an alias ID, which you can reference when creating a
  game session. You can reassign an alias to another fleet by calling
  `UpdateAlias`.

  Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def create_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAlias",
      method:           :post,
      input_shape:      "CreateAliasInput",
      output_shape:     "CreateAliasOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a group of players to a game session. This action is useful with a
  team matching feature. Before players can be added, a game session must
  have an `ACTIVE` status, have a creation policy of `ALLOW_ALL`, and have an
  open player slot. To add a single player to a game session, use
  `CreatePlayerSession`.

  To create player sessions, specify a game session ID, a list of player IDs,
  and optionally a set of player data strings. If successful, the players are
  added to the game session and a set of new `PlayerSession` objects is
  returned. Player sessions cannot be updated.

  *Available in Amazon GameLift Local.*

  Player-session-related operations include:

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_player_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePlayerSessions",
      method:           :post,
      input_shape:      "CreatePlayerSessionsInput",
      output_shape:     "CreatePlayerSessionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a game session queue. This action means that any
  `StartGameSessionPlacement` requests that reference this queue will fail.
  To delete a queue, specify the queue name.

  Queue-related operations include:

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def delete_game_session_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteGameSessionQueue",
      method:           :post,
      input_shape:      "DeleteGameSessionQueueInput",
      output_shape:     "DeleteGameSessionQueueOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves fleet properties, including metadata, status, and configuration,
  for one or more fleets. You can request attributes for all fleets, or
  specify a list of one or more fleet IDs. When requesting multiple fleets,
  use the pagination parameters to retrieve results as a set of sequential
  pages. If successful, a `FleetAttributes` object is returned for each
  requested fleet ID. When specifying a list of fleet IDs, attribute objects
  are returned only for fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_fleet_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetAttributes",
      method:           :post,
      input_shape:      "DescribeFleetAttributesInput",
      output_shape:     "DescribeFleetAttributesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a set of game sessions that match a set of search criteria and
  sorts them in a specified order. A game session search is limited to a
  single fleet. Search results include only game sessions that are in
  `ACTIVE` status. If you need to retrieve game sessions with a status other
  than active, use `DescribeGameSessions`. If you need to retrieve the
  protection policy for each game session, use `DescribeGameSessionDetails`.

  You can search or sort by the following game session attributes:

  <ul> <li> **gameSessionId** -- Unique identifier for the game session. You
  can use either a `GameSessionId` or `GameSessionArn` value.

  </li> <li> **gameSessionName** -- Name assigned to a game session. This
  value is set when requesting a new game session with `CreateGameSession` or
  updating with `UpdateGameSession`. Game session names do not need to be
  unique to a game session.

  </li> <li> **creationTimeMillis** -- Value indicating when a game session
  was created. It is expressed in Unix time as milliseconds.

  </li> <li> **playerSessionCount** -- Number of players currently connected
  to a game session. This value changes rapidly as players join the session
  or drop out.

  </li> <li> **maximumSessions** -- Maximum number of player sessions allowed
  for a game session. This value is set when requesting a new game session
  with `CreateGameSession` or updating with `UpdateGameSession`.

  </li> <li> **hasAvailablePlayerSessions** -- Boolean value indicating
  whether a game session has reached its maximum number of players. When
  searching with this attribute, the search value must be `true` or `false`.
  It is highly recommended that all search requests include this filter
  attribute to optimize search performance and return only sessions that
  players can join.

  </li> </ul> To search or sort, specify either a fleet ID or an alias ID,
  and provide a search filter expression, a sort expression, or both. Use the
  pagination parameters to retrieve results as a set of sequential pages. If
  successful, a collection of `GameSession` objects matching the request is
  returned.

  <note> Returned values for `playerSessionCount` and
  `hasAvailablePlayerSessions` change quickly as players join sessions and
  others drop out. Results should be considered a snapshot in time. Be sure
  to refresh search results often, and handle sessions that fill up before a
  player can join.

  </note> Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def search_game_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SearchGameSessions",
      method:           :post,
      input_shape:      "SearchGameSessionsInput",
      output_shape:     "SearchGameSessionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates capacity settings for a fleet. Use this action to specify the
  number of EC2 instances (hosts) that you want this fleet to contain. Before
  calling this action, you may want to call `DescribeEC2InstanceLimits` to
  get the maximum capacity based on the fleet's EC2 instance type.

  If you're using autoscaling (see `PutScalingPolicy`), you may want to
  specify a minimum and/or maximum capacity. If you don't provide these,
  autoscaling can set capacity anywhere between zero and the [service
  limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift).

  To update fleet capacity, specify the fleet ID and the number of instances
  you want the fleet to host. If successful, Amazon GameLift starts or
  terminates instances so that the fleet's active instance count matches the
  desired instance count. You can view a fleet's current capacity information
  by calling `DescribeFleetCapacity`. If the desired instance count is higher
  than the instance type's limit, the "Limit Exceeded" exception occurs.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def update_fleet_capacity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetCapacity",
      method:           :post,
      input_shape:      "UpdateFleetCapacityInput",
      output_shape:     "UpdateFleetCapacityOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Places a request for a new game session in a queue (see
  `CreateGameSessionQueue`). When processing a placement request, Amazon
  GameLift searches for available resources on the queue's destinations,
  scanning each until it finds resources or the placement request times out.

  A game session placement request can also request player sessions. When a
  new game session is successfully created, Amazon GameLift creates a player
  session for each player included in the request.

  When placing a game session, by default Amazon GameLift tries each fleet in
  the order they are listed in the queue configuration. Ideally, a queue's
  destinations are listed in preference order.

  Alternatively, when requesting a game session with players, you can also
  provide latency data for each player in relevant regions. Latency data
  indicates the performance lag a player experiences when connected to a
  fleet in the region. Amazon GameLift uses latency data to reorder the list
  of destinations to place the game session in a region with minimal lag. If
  latency data is provided for multiple players, Amazon GameLift calculates
  each region's average lag for all players and reorders to get the best game
  play across all players.

  To place a new game session request, specify the following:

  <ul> <li> The queue name and a set of game session properties and settings

  </li> <li> A unique ID (such as a UUID) for the placement. You use this ID
  to track the status of the placement request

  </li> <li> (Optional) A set of IDs and player data for each player you want
  to join to the new game session

  </li> <li> Latency data for all players (if you want to optimize game play
  for the players)

  </li> </ul> If successful, a new game session placement is created.

  To track the status of a placement request, call
  `DescribeGameSessionPlacement` and check the request's status. If the
  status is `FULFILLED`, a new game session has been created and a game
  session ARN and region are referenced. If the placement request times out,
  you can resubmit the request or retry it with a different queue.

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def start_game_session_placement(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartGameSessionPlacement",
      method:           :post,
      input_shape:      "StartGameSessionPlacementInput",
      output_shape:     "StartGameSessionPlacementOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates fleet properties, including name and description, for a fleet. To
  update metadata, specify the fleet ID and the property values that you want
  to change. If successful, the fleet ID for the updated fleet is returned.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def update_fleet_attributes(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetAttributes",
      method:           :post,
      input_shape:      "UpdateFleetAttributesInput",
      output_shape:     "UpdateFleetAttributesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an alias. This action removes all record of the alias. Game clients
  attempting to access a server process using the deleted alias receive an
  error. To delete an alias, specify the alias ID to be deleted.

  Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def delete_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteAlias",
      method:           :post,
      input_shape:      "DeleteAliasInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates settings for a FlexMatch matchmaking configuration. To update
  settings, specify the configuration name to be updated and provide the new
  settings.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def update_matchmaking_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateMatchmakingConfiguration",
      method:           :post,
      input_shape:      "UpdateMatchmakingConfigurationInput",
      output_shape:     "UpdateMatchmakingConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a build. This action permanently deletes the build record and any
  uploaded build files.

  To delete a build, specify its ID. Deleting a build does not affect the
  status of any active fleets using the build, but you can no longer create
  new fleets with the deleted build.

  Build-related operations include:

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def delete_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteBuild",
      method:           :post,
      input_shape:      "DeleteBuildInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes a fleet scaling policy. This action means that the policy is no
  longer in force and removes all record of it. To delete a scaling policy,
  specify both the scaling policy name and the fleet ID it is associated
  with.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def delete_scaling_policy(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteScalingPolicy",
      method:           :post,
      input_shape:      "DeleteScalingPolicyInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a set of one or more matchmaking tickets. Use this operation to
  retrieve ticket information, including status and--once a successful match
  is made--acquire connection information for the resulting new game session.

  You can use this operation to track the progress of matchmaking requests
  (through polling) as an alternative to using event notifications. See more
  details on tracking matchmaking requests through polling or notifications
  in `StartMatchmaking`.

  You can request data for a one or a list of ticket IDs. If the request is
  successful, a ticket object is returned for each requested ID. When
  specifying a list of ticket IDs, objects are returned only for tickets that
  currently exist.

  Matchmaking-related operations include:

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> </ul>
  """
  def describe_matchmaking(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmaking",
      method:           :post,
      input_shape:      "DescribeMatchmakingInput",
      output_shape:     "DescribeMatchmakingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates properties for an alias. To update properties, specify the alias ID
  to be updated and provide the information to be changed. To reassign an
  alias to another fleet, provide an updated routing strategy. If successful,
  the updated alias record is returned.

  Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def update_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateAlias",
      method:           :post,
      input_shape:      "UpdateAliasInput",
      output_shape:     "UpdateAliasOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information on VPC peering connections. Use this operation to get
  peering information for all fleets or for one specific fleet ID.

  To retrieve connection information, call this operation from the AWS
  account that is used to manage the Amazon GameLift fleets. Specify a fleet
  ID or leave the parameter empty to retrieve all connection records. If
  successful, the retrieved information includes both active and pending
  connections. Active connections identify the IpV4 CIDR block that the VPC
  uses to connect.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def describe_vpc_peering_connections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcPeeringConnections",
      method:           :post,
      input_shape:      "DescribeVpcPeeringConnectionsInput",
      output_shape:     "DescribeVpcPeeringConnectionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Uses FlexMatch to create a game match for a group of players based on
  custom matchmaking rules, and starts a new game for the matched players.
  Each matchmaking request specifies the type of match to build (team
  configuration, rules for an acceptable match, etc.). The request also
  specifies the players to find a match for and where to host the new game
  session for optimal performance. A matchmaking request might start with a
  single player or a group of players who want to play together. FlexMatch
  finds additional players as needed to fill the match. Match type, rules,
  and the queue used to place a new game session are defined in a
  `MatchmakingConfiguration`. For complete information on setting up and
  using FlexMatch, see the topic [ Adding FlexMatch to Your
  Game](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

  To start matchmaking, provide a unique ticket ID, specify a matchmaking
  configuration, and include the players to be matched. You must also include
  a set of player attributes relevant for the matchmaking configuration. If
  successful, a matchmaking ticket is returned with status set to `QUEUED`.
  Track the status of the ticket to respond as needed and acquire game
  session connection information for successfully completed matches.

  **Tracking ticket status** -- A couple of options are available for
  tracking the status of matchmaking requests:

  <ul> <li> Polling -- Call `DescribeMatchmaking`. This operation returns the
  full ticket object, including current status and (for completed tickets)
  game session connection info. We recommend polling no more than once every
  10 seconds.

  </li> <li> Notifications -- Get event notifications for changes in ticket
  status using Amazon Simple Notification Service (SNS). Notifications are
  easy to set up (see `CreateMatchmakingConfiguration`) and typically deliver
  match status changes faster and more efficiently than polling. We recommend
  that you use polling to back up to notifications (since delivery is not
  guaranteed) and call `DescribeMatchmaking` only when notifications are not
  received within 30 seconds.

  </li> </ul> **Processing a matchmaking request** -- FlexMatch handles a
  matchmaking request as follows:

  <ol> <li> Your client code submits a `StartMatchmaking` request for one or
  more players and tracks the status of the request ticket.

  </li> <li> FlexMatch uses this ticket and others in process to build an
  acceptable match. When a potential match is identified, all tickets in the
  proposed match are advanced to the next status.

  </li> <li> If the match requires player acceptance (set in the matchmaking
  configuration), the tickets move into status `REQUIRES_ACCEPTANCE`. This
  status triggers your client code to solicit acceptance from all players in
  every ticket involved in the match, and then call `AcceptMatch` for each
  player. If any player rejects or fails to accept the match before a
  specified timeout, the proposed match is dropped (see `AcceptMatch` for
  more details).

  </li> <li> Once a match is proposed and accepted, the matchmaking tickets
  move into status `PLACING`. FlexMatch locates resources for a new game
  session using the game session queue (set in the matchmaking configuration)
  and creates the game session based on the match data.

  </li> <li> When the match is successfully placed, the matchmaking tickets
  move into `COMPLETED` status. Connection information (including game
  session endpoint and player session) is added to the matchmaking tickets.
  Matched players can use the connection information to join the game.

  </li> </ol> Matchmaking-related operations include:

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> </ul>
  """
  def start_matchmaking(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "StartMatchmaking",
      method:           :post,
      input_shape:      "StartMatchmakingInput",
      output_shape:     "StartMatchmakingOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all scaling policies applied to a fleet.

  To get a fleet's scaling policies, specify the fleet ID. You can filter
  this request by policy status, such as to retrieve only active scaling
  policies. Use the pagination parameters to retrieve results as a set of
  sequential pages. If successful, set of `ScalingPolicy` objects is returned
  for the fleet.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_scaling_policies(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingPolicies",
      method:           :post,
      input_shape:      "DescribeScalingPoliciesInput",
      output_shape:     "DescribeScalingPoliciesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current status of fleet capacity for one or more fleets. This
  information includes the number of instances that have been requested for
  the fleet and the number currently active. You can request capacity for all
  fleets, or specify a list of one or more fleet IDs. When requesting
  multiple fleets, use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `FleetCapacity` object is returned
  for each requested fleet ID. When specifying a list of fleet IDs, attribute
  objects are returned only for fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_fleet_capacity(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetCapacity",
      method:           :post,
      input_shape:      "DescribeFleetCapacityInput",
      output_shape:     "DescribeFleetCapacityOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the fleet ID that a specified alias is currently pointing to.

  Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def resolve_alias(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResolveAlias",
      method:           :post,
      input_shape:      "ResolveAliasInput",
      output_shape:     "ResolveAliasOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Defines a new matchmaking configuration for use with FlexMatch. A
  matchmaking configuration sets out guidelines for matching players and
  getting the matches into games. You can set up multiple matchmaking
  configurations to handle the scenarios needed for your game. Each
  matchmaking request (`StartMatchmaking`) specifies a configuration for the
  match and provides player attributes to support the configuration being
  used.

  To create a matchmaking configuration, at a minimum you must specify the
  following: configuration name; a rule set that governs how to evaluate
  players and find acceptable matches; a game session queue to use when
  placing a new game session for the match; and the maximum time allowed for
  a matchmaking attempt.

  **Player acceptance** -- In each configuration, you have the option to
  require that all players accept participation in a proposed match. To
  enable this feature, set *AcceptanceRequired* to true and specify a time
  limit for player acceptance. Players have the option to accept or reject a
  proposed match, and a match does not move ahead to game session placement
  unless all matched players accept.

  **Matchmaking status notification** -- There are two ways to track the
  progress of matchmaking tickets: (1) polling ticket status with
  `DescribeMatchmaking`; or (2) receiving notifications with Amazon Simple
  Notification Service (SNS). To use notifications, you first need to set up
  an SNS topic to receive the notifications, and provide the topic ARN in the
  matchmaking configuration (see [ Setting up Notifications for
  Matchmaking](http://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)).
  Since notifications promise only "best effort" delivery, we recommend
  calling `DescribeMatchmaking` if no notifications are received within 30
  seconds.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def create_matchmaking_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateMatchmakingConfiguration",
      method:           :post,
      input_shape:      "CreateMatchmakingConfigurationInput",
      output_shape:     "CreateMatchmakingConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the details for FlexMatch matchmaking rule sets. You can request
  all existing rule sets for the region, or provide a list of one or more
  rule set names. When requesting multiple items, use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  a rule set is returned for each requested name.

  Operations related to match configurations and rule sets include:

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> </ul>
  """
  def describe_matchmaking_rule_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmakingRuleSets",
      method:           :post,
      input_shape:      "DescribeMatchmakingRuleSetsInput",
      output_shape:     "DescribeMatchmakingRuleSetsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Establishes a new queue for processing requests to place new game sessions.
  A queue identifies where new game sessions can be hosted -- by specifying a
  list of destinations (fleets or aliases) -- and how long requests can wait
  in the queue before timing out. You can set up a queue to try to place game
  sessions on fleets in multiple regions. To add placement requests to a
  queue, call `StartGameSessionPlacement` and reference the queue name.

  **Destination order.** When processing a request for a game session, Amazon
  GameLift tries each destination in order until it finds one with available
  resources to host the new game session. A queue's default order is
  determined by how destinations are listed. The default order is overridden
  when a game session placement request provides player latency information.
  Player latency information enables Amazon GameLift to prioritize
  destinations where players report the lowest average latency, as a result
  placing the new game session where the majority of players will have the
  best possible gameplay experience.

  **Player latency policies.** For placement requests containing player
  latency information, use player latency policies to protect individual
  players from very high latencies. With a latency cap, even when a
  destination can deliver a low latency for most players, the game is not
  placed where any individual player is reporting latency higher than a
  policy's maximum. A queue can have multiple latency policies, which are
  enforced consecutively starting with the policy with the lowest latency
  cap. Use multiple policies to gradually relax latency controls; for
  example, you might set a policy with a low latency cap for the first 60
  seconds, a second policy with a higher cap for the next 60 seconds, etc.

  To create a new queue, provide a name, timeout value, a list of
  destinations and, if desired, a set of latency policies. If successful, a
  new queue object is returned.

  Queue-related operations include:

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def create_game_session_queue(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateGameSessionQueue",
      method:           :post,
      input_shape:      "CreateGameSessionQueueInput",
      output_shape:     "CreateGameSessionQueueOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves all aliases for this AWS account. You can filter the result set
  by alias name and/or routing strategy type. Use the pagination parameters
  to retrieve results in sequential pages.

  <note> Returned aliases are not listed in any particular order.

  </note> Alias-related operations include:

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def list_aliases(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAliases",
      method:           :post,
      input_shape:      "ListAliasesInput",
      output_shape:     "ListAliasesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates the current run-time configuration for the specified fleet, which
  tells Amazon GameLift how to launch server processes on instances in the
  fleet. You can update a fleet's run-time configuration at any time after
  the fleet is created; it does not need to be in an `ACTIVE` status.

  To update run-time configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` object with the updated collection of server process
  configurations.

  Each instance in a Amazon GameLift fleet checks regularly for an updated
  run-time configuration and changes how it launches server processes to
  comply with the latest version. Existing server processes are not affected
  by the update; they continue to run until they end, while Amazon GameLift
  simply adds new server processes to fit the current run-time configuration.
  As a result, the run-time configuration changes are applied gradually as
  existing processes shut down and new processes are launched in Amazon
  GameLift's normal process recycling activity.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def update_runtime_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateRuntimeConfiguration",
      method:           :post,
      input_shape:      "UpdateRuntimeConfigurationInput",
      output_shape:     "UpdateRuntimeConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Cancels a pending VPC peering authorization for the specified VPC. If the
  authorization has already been used to create a peering connection, call
  `DeleteVpcPeeringConnection` to remove the connection.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def delete_vpc_peering_authorization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcPeeringAuthorization",
      method:           :post,
      input_shape:      "DeleteVpcPeeringAuthorizationInput",
      output_shape:     "DeleteVpcPeeringAuthorizationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates metadata in a build record, including the build name and version.
  To update the metadata, specify the build ID to update and provide the new
  values. If successful, a build object containing the updated metadata is
  returned.

  Build-related operations include:

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def update_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateBuild",
      method:           :post,
      input_shape:      "UpdateBuildInput",
      output_shape:     "UpdateBuildOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Registers a player's acceptance or rejection of a proposed FlexMatch match.
  A matchmaking configuration may require player acceptance; if so, then
  matches built with that configuration cannot be completed unless all
  players accept the proposed match within a specified time limit.

  When FlexMatch builds a match, all the matchmaking tickets involved in the
  proposed match are placed into status `REQUIRES_ACCEPTANCE`. This is a
  trigger for your game to get acceptance from all players in the ticket.
  Acceptances are only valid for tickets when they are in this status; all
  other acceptances result in an error.

  To register acceptance, specify the ticket ID, a response, and one or more
  players. Once all players have registered acceptance, the matchmaking
  tickets advance to status `PLACING`, where a new game session is created
  for the match.

  If any player rejects the match, or if acceptances are not received before
  a specified timeout, the proposed match is dropped. The matchmaking tickets
  are then handled in one of two ways: For tickets where all players accepted
  the match, the ticket status is returned to `SEARCHING` to find a new
  match. For tickets where one or more players failed to accept the match,
  the ticket status is set to `FAILED`, and processing is terminated. A new
  matchmaking request for these players can be submitted as needed.

  Matchmaking-related operations include:

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> </ul>
  """
  def accept_match(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AcceptMatch",
      method:           :post,
      input_shape:      "AcceptMatchInput",
      output_shape:     "AcceptMatchOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a set of one or more game sessions. Request a specific game
  session or request all game sessions on a fleet. Alternatively, use
  `SearchGameSessions` to request a set of active game sessions that are
  filtered by certain criteria. To retrieve protection policy settings for
  game sessions, use `DescribeGameSessionDetails`.

  To get game sessions, specify one of the following: game session ID, fleet
  ID, or alias ID. You can filter this request by game session status. Use
  the pagination parameters to retrieve results as a set of sequential pages.
  If successful, a `GameSession` object is returned for each game session
  matching the request.

  *Available in Amazon GameLift Local.*

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessions",
      method:           :post,
      input_shape:      "DescribeGameSessionsInput",
      output_shape:     "DescribeGameSessionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves properties for one or more player sessions. This action can be
  used in several ways: (1) provide a `PlayerSessionId` to request properties
  for a specific player session; (2) provide a `GameSessionId` to request
  properties for all player sessions in the specified game session; (3)
  provide a `PlayerId` to request properties for all player sessions of a
  specified player.

  To get game session record(s), specify only one of the following: a player
  session ID, a game session ID, or a player ID. You can filter this request
  by player session status. Use the pagination parameters to retrieve results
  as a set of sequential pages. If successful, a `PlayerSession` object is
  returned for each session matching the request.

  *Available in Amazon GameLift Local.*

  Player-session-related operations include:

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_player_sessions(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribePlayerSessions",
      method:           :post,
      input_shape:      "DescribePlayerSessionsInput",
      output_shape:     "DescribePlayerSessionsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new fleet to run your game servers. A fleet is a set of Amazon
  Elastic Compute Cloud (Amazon EC2) instances, each of which can run
  multiple server processes to host game sessions. You configure a fleet to
  create instances with certain hardware specifications (see [Amazon EC2
  Instance Types](http://aws.amazon.com/ec2/instance-types/) for more
  information), and deploy a specified game build to each instance. A newly
  created fleet passes through several statuses; once it reaches the `ACTIVE`
  status, it can begin hosting game sessions.

  To create a new fleet, you must specify the following: (1) fleet name, (2)
  build ID of an uploaded game build, (3) an EC2 instance type, and (4) a
  run-time configuration that describes which server processes to run on each
  instance in the fleet. (Although the run-time configuration is not a
  required parameter, the fleet cannot be successfully activated without it.)

  You can also configure the new fleet with the following settings:

  <ul> <li> Fleet description

  </li> <li> Access permissions for inbound traffic

  </li> <li> Fleet-wide game session protection

  </li> <li> Resource creation limit

  </li> </ul> If you use Amazon CloudWatch for metrics, you can add the new
  fleet to a metric group. This allows you to view aggregated metrics for a
  set of fleets. Once you specify a metric group, the new fleet's metrics are
  included in the metric group's data.

  You have the option of creating a VPC peering connection with the new
  fleet. For more information, see [VPC Peering with Amazon GameLift
  Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  If the CreateFleet call is successful, Amazon GameLift performs the
  following tasks:

  <ul> <li> Creates a fleet record and sets the status to `NEW` (followed by
  other statuses as the fleet is activated).

  </li> <li> Sets the fleet's target capacity to 1 (desired instances), which
  causes Amazon GameLift to start one new EC2 instance.

  </li> <li> Starts launching server processes on the instance. If the fleet
  is configured to run multiple server processes per instance, Amazon
  GameLift staggers each launch by a few seconds.

  </li> <li> Begins writing events to the fleet event log, which can be
  accessed in the Amazon GameLift console.

  </li> <li> Sets the fleet's status to `ACTIVE` as soon as one server
  process in the fleet is ready to host a game session.

  </li> </ul> Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def create_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateFleet",
      method:           :post,
      input_shape:      "CreateFleetInput",
      output_shape:     "CreateFleetOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the inbound connection permissions for a fleet. Connection
  permissions include a range of IP addresses and port settings that incoming
  traffic can use to access server processes in the fleet. To get a fleet's
  inbound connection permissions, specify a fleet ID. If successful, a
  collection of `IpPermission` objects is returned for the requested fleet
  ID. If the requested fleet has been deleted, the result set is empty.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_fleet_port_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetPortSettings",
      method:           :post,
      input_shape:      "DescribeFleetPortSettingsInput",
      output_shape:     "DescribeFleetPortSettingsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves properties and current status of a game session placement
  request. To get game session placement details, specify the placement ID.
  If successful, a `GameSessionPlacement` object is returned.

  Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_session_placement(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionPlacement",
      method:           :post,
      input_shape:      "DescribeGameSessionPlacementInput",
      output_shape:     "DescribeGameSessionPlacementOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves utilization statistics for one or more fleets. You can request
  utilization data for all fleets, or specify a list of one or more fleet
  IDs. When requesting multiple fleets, use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a
  `FleetUtilization` object is returned for each requested fleet ID. When
  specifying a list of fleet IDs, utilization objects are returned only for
  fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_fleet_utilization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetUtilization",
      method:           :post,
      input_shape:      "DescribeFleetUtilizationInput",
      output_shape:     "DescribeFleetUtilizationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the current run-time configuration for the specified fleet. The
  run-time configuration tells Amazon GameLift how to launch server processes
  on instances in the fleet.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_runtime_configuration(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeRuntimeConfiguration",
      method:           :post,
      input_shape:      "DescribeRuntimeConfigurationInput",
      output_shape:     "DescribeRuntimeConfigurationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes everything related to a fleet. Before deleting a fleet, you must
  set the fleet's desired capacity to zero. See `UpdateFleetCapacity`.

  This action removes the fleet's resources and the fleet record. Once a
  fleet is deleted, you can no longer use that fleet.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def delete_fleet(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteFleet",
      method:           :post,
      input_shape:      "DeleteFleetInput",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Updates port settings for a fleet. To update settings, specify the fleet ID
  to be updated and list the permissions you want to update. List the
  permissions you want to add in `InboundPermissionAuthorizations`, and
  permissions you want to remove in `InboundPermissionRevocations`.
  Permissions to be removed must match existing fleet permissions. If
  successful, the fleet ID for the updated fleet is returned.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def update_fleet_port_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetPortSettings",
      method:           :post,
      input_shape:      "UpdateFleetPortSettingsInput",
      output_shape:     "UpdateFleetPortSettingsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves build records for all builds associated with the AWS account in
  use. You can limit results to builds that are in a specific status by using
  the `Status` parameter. Use the pagination parameters to retrieve results
  in a set of sequential pages.

  <note> Build records are not listed in any particular order.

  </note> Build-related operations include:

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def list_builds(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListBuilds",
      method:           :post,
      input_shape:      "ListBuildsInput",
      output_shape:     "ListBuildsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves valid VPC peering authorizations that are pending for the AWS
  account. This operation returns all VPC peering authorizations and requests
  for peering. This includes those initiated and received by this account.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def describe_vpc_peering_authorizations(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcPeeringAuthorizations",
      method:           :post,
      input_shape:      "DescribeVpcPeeringAuthorizationsInput",
      output_shape:     "DescribeVpcPeeringAuthorizationsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Creates a new Amazon GameLift build from a set of game server binary files
  stored in an Amazon Simple Storage Service (Amazon S3) location. To use
  this API call, create a `.zip` file containing all of the files for the
  build and store it in an Amazon S3 bucket under your AWS account. For help
  on packaging your build files and creating a build, see [Uploading Your
  Game to Amazon
  GameLift](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html).

  <important> Use this API action ONLY if you are storing your game build
  files in an Amazon S3 bucket. To create a build using files stored locally,
  use the CLI command [ `upload-build`
  ](http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html),
  which uploads the build files from a file location you specify.

  </important> To create a new build using `CreateBuild`, identify the
  storage location and operating system of your game build. You also have the
  option of specifying a build name and version. If successful, this action
  creates a new build record with an unique build ID and in `INITIALIZED`
  status. Use the API call `DescribeBuild` to check the status of your build.
  A build must be in `READY` status before it can be used to create fleets to
  host your game.

  Build-related operations include:

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def create_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateBuild",
      method:           :post,
      input_shape:      "CreateBuildInput",
      output_shape:     "CreateBuildOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves information about a fleet's instances, including instance IDs.
  Use this action to get details on all instances in the fleet or get details
  on one specific instance.

  To get a specific instance, specify fleet ID and instance ID. To get all
  instances in a fleet, specify a fleet ID only. Use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  an `Instance` object is returned for each result.
  """
  def describe_instances(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeInstances",
      method:           :post,
      input_shape:      "DescribeInstancesInput",
      output_shape:     "DescribeInstancesOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves properties for a build. To get a build record, specify a build
  ID. If successful, an object containing the build properties is returned.

  Build-related operations include:

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def describe_build(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeBuild",
      method:           :post,
      input_shape:      "DescribeBuildInput",
      output_shape:     "DescribeBuildOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves the location of stored game session logs for a specified game
  session. When a game session is terminated, Amazon GameLift automatically
  stores the logs in Amazon S3 and retains them for 14 days. Use this URL to
  download the logs.

  <note> See the [AWS Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
  page for maximum log file sizes. Log files that exceed this limit are not
  saved.

  </note> Game-session-related operations include:

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def get_game_session_log_url(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetGameSessionLogUrl",
      method:           :post,
      input_shape:      "GetGameSessionLogUrlInput",
      output_shape:     "GetGameSessionLogUrlOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a collection of fleet records for this AWS account. You can
  filter the result set by build ID. Use the pagination parameters to
  retrieve results in sequential pages.

  <note> Fleet records are not listed in any particular order.

  </note> Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def list_fleets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListFleets",
      method:           :post,
      input_shape:      "ListFleetsInput",
      output_shape:     "ListFleetsOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests authorization to create or delete a peer connection between the
  VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in
  your AWS account. VPC peering enables the game servers on your fleet to
  communicate directly with other AWS resources. Once you've received
  authorization, call `CreateVpcPeeringConnection` to establish the peering
  connection. For more information, see [VPC Peering with Amazon GameLift
  Fleets](http://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  You can peer with VPCs that are owned by any AWS account you have access
  to, including the account that you use to manage your Amazon GameLift
  fleets. You cannot peer with VPCs that are in different regions.

  To request authorization to create a connection, call this operation from
  the AWS account with the VPC that you want to peer to your Amazon GameLift
  fleet. For example, to enable your game servers to retrieve data from a
  DynamoDB table, use the account that manages that DynamoDB resource.
  Identify the following values: (1) The ID of the VPC that you want to peer
  with, and (2) the ID of the AWS account that you use to manage Amazon
  GameLift. If successful, VPC peering is authorized for the specified VPC.

  To request authorization to delete a connection, call this operation from
  the AWS account with the VPC that is peered with your Amazon GameLift
  fleet. Identify the following values: (1) VPC ID that you want to delete
  the peering connection for, and (2) ID of the AWS account that you use to
  manage Amazon GameLift.

  The authorization remains valid for 24 hours unless it is canceled by a
  call to `DeleteVpcPeeringAuthorization`. You must create or delete the
  peering connection while the authorization is valid.

  VPC peering connection operations include:

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def create_vpc_peering_authorization(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateVpcPeeringAuthorization",
      method:           :post,
      input_shape:      "CreateVpcPeeringAuthorizationInput",
      output_shape:     "CreateVpcPeeringAuthorizationOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Adds a player to a game session and creates a player session record. Before
  a player can be added, a game session must have an `ACTIVE` status, have a
  creation policy of `ALLOW_ALL`, and have an open player slot. To add a
  group of players to a game session, use `CreatePlayerSessions`.

  To create a player session, specify a game session ID, player ID, and
  optionally a string of player data. If successful, the player is added to
  the game session and a new `PlayerSession` object is returned. Player
  sessions cannot be updated.

  *Available in Amazon GameLift Local.*

  Player-session-related operations include:

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_player_session(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreatePlayerSession",
      method:           :post,
      input_shape:      "CreatePlayerSessionInput",
      output_shape:     "CreatePlayerSessionOutput",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves entries from the specified fleet's event log. You can specify a
  time range to limit the result set. Use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a collection
  of event log entries matching the request are returned.

  Fleet-related operations include:

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet capacity:

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `PutScalingPolicy` (automatic scaling)

  </li> <li> `DescribeScalingPolicies` (automatic scaling)

  </li> <li> `DeleteScalingPolicy` (automatic scaling)

  </li> <li> `DescribeEC2InstanceLimits`

  </li> </ul> </li> <li> `DeleteFleet`

  </li> </ul>
  """
  def describe_fleet_events(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetEvents",
      method:           :post,
      input_shape:      "DescribeFleetEventsInput",
      output_shape:     "DescribeFleetEventsOutput",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "gamelift",
      target_prefix:    "GameLift",
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"GamePropertyValue" => %{"max" => 96, "type" => "string"}, "DescribeMatchmakingRuleSetsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NonZeroAndMaxString"}, "RuleSets" => %{"shape" => "MatchmakingRuleSetList"}}, "required" => ["RuleSets"], "type" => "structure"}, "UpdateGameSessionOutput" => %{"members" => %{"GameSession" => %{"shape" => "GameSession"}}, "type" => "structure"}, "PlayerSessionStatus" => %{"enum" => ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"], "type" => "string"}, "MatchmakingRuleSet" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "RuleSetBody" => %{"shape" => "RuleSetBody"}, "RuleSetName" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["RuleSetBody"], "type" => "structure"}, "FleetCapacity" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "InstanceCounts" => %{"shape" => "EC2InstanceCounts"}, "InstanceType" => %{"shape" => "EC2InstanceType"}}, "type" => "structure"}, "PlayerIdStringModel" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9-\\.]+", "type" => "string"}, "StopGameSessionPlacementOutput" => %{"members" => %{"GameSessionPlacement" => %{"shape" => "GameSessionPlacement"}}, "type" => "structure"}, "RoutingStrategyType" => %{"enum" => ["SIMPLE", "TERMINAL"], "type" => "string"}, "CreateAliasInput" => %{"members" => %{"Description" => %{"shape" => "NonZeroAndMaxString"}, "Name" => %{"shape" => "NonBlankAndLengthConstraintString"}, "RoutingStrategy" => %{"shape" => "RoutingStrategy"}}, "required" => ["Name", "RoutingStrategy"], "type" => "structure"}, "EC2InstanceType" => %{"enum" => ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge"], "type" => "string"}, "GameSessionData" => %{"max" => 4096, "min" => 1, "type" => "string"}, "MatchmakingConfigurationList" => %{"member" => %{"shape" => "MatchmakingConfiguration"}, "type" => "list"}, "DescribeMatchmakingInput" => %{"members" => %{"TicketIds" => %{"shape" => "MatchmakingIdList"}}, "required" => ["TicketIds"], "type" => "structure"}, "NonBlankString" => %{"pattern" => "[^\\s]+", "type" => "string"}, "GameSessionQueueName" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9-]+", "type" => "string"}, "StopGameSessionPlacementInput" => %{"members" => %{"PlacementId" => %{"shape" => "IdStringModel"}}, "required" => ["PlacementId"], "type" => "structure"}, "VpcPeeringConnection" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "GameLiftVpcId" => %{"shape" => "NonZeroAndMaxString"}, "IpV4CidrBlock" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}, "Status" => %{"shape" => "VpcPeeringConnectionStatus"}, "VpcPeeringConnectionId" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "GameSessionFullException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "ValidateMatchmakingRuleSetInput" => %{"members" => %{"RuleSetBody" => %{"shape" => "RuleSetBody"}}, "required" => ["RuleSetBody"], "type" => "structure"}, "DeleteVpcPeeringConnectionInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "VpcPeeringConnectionId" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["FleetId", "VpcPeeringConnectionId"], "type" => "structure"}, "ScalingStatusType" => %{"enum" => ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"], "type" => "string"}, "UpdateFleetAttributesOutput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "type" => "structure"}, "SearchGameSessionsInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}, "FilterExpression" => %{"shape" => "NonZeroAndMaxString"}, "FleetId" => %{"shape" => "FleetId"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "SortExpression" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "RuntimeConfiguration" => %{"members" => %{"GameSessionActivationTimeoutSeconds" => %{"shape" => "GameSessionActivationTimeoutSeconds"}, "MaxConcurrentGameSessionActivations" => %{"shape" => "MaxConcurrentGameSessionActivations"}, "ServerProcesses" => %{"shape" => "ServerProcessList"}}, "type" => "structure"}, "DescribeScalingPoliciesInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "StatusFilter" => %{"shape" => "ScalingStatusType"}}, "required" => ["FleetId"], "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "MatchmakingIdList" => %{"member" => %{"shape" => "MatchmakingIdStringModel"}, "type" => "list"}, "UpdateBuildInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "Version" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["BuildId"], "type" => "structure"}, "FreeText" => %{"type" => "string"}, "DescribeAliasOutput" => %{"members" => %{"Alias" => %{"shape" => "Alias"}}, "type" => "structure"}, "InstanceStatus" => %{"enum" => ["PENDING", "ACTIVE", "TERMINATING"], "type" => "string"}, "Player" => %{"members" => %{"LatencyInMs" => %{"shape" => "LatencyMap"}, "PlayerAttributes" => %{"shape" => "PlayerAttributeMap"}, "PlayerId" => %{"shape" => "PlayerIdStringModel"}, "Team" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "S3Location" => %{"members" => %{"Bucket" => %{"shape" => "NonEmptyString"}, "Key" => %{"shape" => "NonEmptyString"}, "RoleArn" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "OperatingSystem" => %{"enum" => ["WINDOWS_2012", "AMAZON_LINUX"], "type" => "string"}, "GameSessionQueueNameList" => %{"member" => %{"shape" => "GameSessionQueueName"}, "type" => "list"}, "CreateFleetInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "EC2InboundPermissions" => %{"shape" => "IpPermissionsList"}, "EC2InstanceType" => %{"shape" => "EC2InstanceType"}, "LogPaths" => %{"shape" => "StringList"}, "MetricGroups" => %{"shape" => "MetricGroupList"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "NewGameSessionProtectionPolicy" => %{"shape" => "ProtectionPolicy"}, "PeerVpcAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}, "ResourceCreationLimitPolicy" => %{"shape" => "ResourceCreationLimitPolicy"}, "RuntimeConfiguration" => %{"shape" => "RuntimeConfiguration"}, "ServerLaunchParameters" => %{"shape" => "NonZeroAndMaxString"}, "ServerLaunchPath" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["Name", "BuildId", "EC2InstanceType"], "type" => "structure"}, "DescribeMatchmakingConfigurationsOutput" => %{"members" => %{"Configurations" => %{"shape" => "MatchmakingConfigurationList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "BuildId" => %{"pattern" => "^build-\\S+", "type" => "string"}, "EventList" => %{"member" => %{"shape" => "Event"}, "type" => "list"}, "GameSessionQueue" => %{"members" => %{"Destinations" => %{"shape" => "GameSessionQueueDestinationList"}, "GameSessionQueueArn" => %{"shape" => "ArnStringModel"}, "Name" => %{"shape" => "GameSessionQueueName"}, "PlayerLatencyPolicies" => %{"shape" => "PlayerLatencyPolicyList"}, "TimeoutInSeconds" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "PlayerSessionId" => %{"pattern" => "^psess-\\S+", "type" => "string"}, "PlayerLatencyList" => %{"member" => %{"shape" => "PlayerLatency"}, "type" => "list"}, "DescribeVpcPeeringAuthorizationsOutput" => %{"members" => %{"VpcPeeringAuthorizations" => %{"shape" => "VpcPeeringAuthorizationList"}}, "type" => "structure"}, "StopMatchmakingInput" => %{"members" => %{"TicketId" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["TicketId"], "type" => "structure"}, "DeleteMatchmakingConfigurationOutput" => %{"members" => %{}, "type" => "structure"}, "ConflictException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "UnauthorizedException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "UpdateAliasInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "Name" => %{"shape" => "NonBlankAndLengthConstraintString"}, "RoutingStrategy" => %{"shape" => "RoutingStrategy"}}, "required" => ["AliasId"], "type" => "structure"}, "InstanceList" => %{"member" => %{"shape" => "Instance"}, "type" => "list"}, "GamePropertyList" => %{"max" => 16, "member" => %{"shape" => "GameProperty"}, "type" => "list"}, "CreateGameSessionQueueInput" => %{"members" => %{"Destinations" => %{"shape" => "GameSessionQueueDestinationList"}, "Name" => %{"shape" => "GameSessionQueueName"}, "PlayerLatencyPolicies" => %{"shape" => "PlayerLatencyPolicyList"}, "TimeoutInSeconds" => %{"shape" => "WholeNumber"}}, "required" => ["Name"], "type" => "structure"}, "DescribeMatchmakingOutput" => %{"members" => %{"TicketList" => %{"shape" => "MatchmakingTicketList"}}, "type" => "structure"}, "FleetIdList" => %{"member" => %{"shape" => "FleetId"}, "min" => 1, "type" => "list"}, "MatchmakingTicket" => %{"members" => %{"ConfigurationName" => %{"shape" => "MatchmakingIdStringModel"}, "EndTime" => %{"shape" => "Timestamp"}, "EstimatedWaitTime" => %{"shape" => "WholeNumber"}, "GameSessionConnectionInfo" => %{"shape" => "GameSessionConnectionInfo"}, "Players" => %{"shape" => "PlayerList"}, "StartTime" => %{"shape" => "Timestamp"}, "Status" => %{"shape" => "MatchmakingConfigurationStatus"}, "StatusMessage" => %{"shape" => "StringModel"}, "StatusReason" => %{"shape" => "StringModel"}, "TicketId" => %{"shape" => "MatchmakingIdStringModel"}}, "type" => "structure"}, "CreateVpcPeeringAuthorizationInput" => %{"members" => %{"GameLiftAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["GameLiftAwsAccountId", "PeerVpcId"], "type" => "structure"}, "ResolveAliasInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}}, "required" => ["AliasId"], "type" => "structure"}, "FleetUtilization" => %{"members" => %{"ActiveGameSessionCount" => %{"shape" => "WholeNumber"}, "ActiveServerProcessCount" => %{"shape" => "WholeNumber"}, "CurrentPlayerSessionCount" => %{"shape" => "WholeNumber"}, "FleetId" => %{"shape" => "FleetId"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "ServerProcess" => %{"members" => %{"ConcurrentExecutions" => %{"shape" => "PositiveInteger"}, "LaunchPath" => %{"shape" => "NonZeroAndMaxString"}, "Parameters" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["LaunchPath", "ConcurrentExecutions"], "type" => "structure"}, "PositiveLong" => %{"min" => 1, "type" => "long"}, "CreateMatchmakingConfigurationInput" => %{"members" => %{"AcceptanceRequired" => %{"shape" => "Boolean"}, "AcceptanceTimeoutSeconds" => %{"shape" => "MatchmakingAcceptanceTimeoutInteger"}, "AdditionalPlayerCount" => %{"shape" => "WholeNumber"}, "CustomEventData" => %{"shape" => "CustomEventData"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionQueueArns" => %{"shape" => "QueueArnsList"}, "Name" => %{"shape" => "MatchmakingIdStringModel"}, "NotificationTarget" => %{"shape" => "SnsArnStringModel"}, "RequestTimeoutSeconds" => %{"shape" => "MatchmakingRequestTimeoutInteger"}, "RuleSetName" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["Name", "GameSessionQueueArns", "RequestTimeoutSeconds", "AcceptanceRequired", "RuleSetName"], "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "NonZeroAndMaxString"}, "type" => "list"}, "DescribeFleetPortSettingsOutput" => %{"members" => %{"InboundPermissions" => %{"shape" => "IpPermissionsList"}}, "type" => "structure"}, "CreatePlayerSessionsOutput" => %{"members" => %{"PlayerSessions" => %{"shape" => "PlayerSessionList"}}, "type" => "structure"}, "AcceptMatchInput" => %{"members" => %{"AcceptanceType" => %{"shape" => "AcceptanceType"}, "PlayerIds" => %{"shape" => "MatchmakingPlayerIdList"}, "TicketId" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["TicketId", "PlayerIds", "AcceptanceType"], "type" => "structure"}, "CreateVpcPeeringConnectionInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "PeerVpcAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["FleetId", "PeerVpcAwsAccountId", "PeerVpcId"], "type" => "structure"}, "InstanceId" => %{"pattern" => "[a-zA-Z0-9\\.-]+", "type" => "string"}, "DeleteVpcPeeringConnectionOutput" => %{"members" => %{}, "type" => "structure"}, "DescribeFleetEventsInput" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "FleetId" => %{"shape" => "FleetId"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "StartTime" => %{"shape" => "Timestamp"}}, "required" => ["FleetId"], "type" => "structure"}, "DescribeFleetUtilizationInput" => %{"members" => %{"FleetIds" => %{"shape" => "FleetIdList"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "ListFleetsInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "ScalingPolicyList" => %{"member" => %{"shape" => "ScalingPolicy"}, "type" => "list"}, "DescribeEC2InstanceLimitsInput" => %{"members" => %{"EC2InstanceType" => %{"shape" => "EC2InstanceType"}}, "type" => "structure"}, "CreateGameSessionInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}, "CreatorId" => %{"shape" => "NonZeroAndMaxString"}, "FleetId" => %{"shape" => "FleetId"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionId" => %{"shape" => "IdStringModel"}, "IdempotencyToken" => %{"shape" => "IdStringModel"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}, "Name" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["MaximumPlayerSessionCount"], "type" => "structure"}, "PositiveInteger" => %{"min" => 1, "type" => "integer"}, "PlayerLatencyPolicyList" => %{"member" => %{"shape" => "PlayerLatencyPolicy"}, "type" => "list"}, "GameSessionQueueDestination" => %{"members" => %{"DestinationArn" => %{"shape" => "ArnStringModel"}}, "type" => "structure"}, "FleetAttributes" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}, "CreationTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "FleetArn" => %{"shape" => "ArnStringModel"}, "FleetId" => %{"shape" => "FleetId"}, "LogPaths" => %{"shape" => "StringList"}, "MetricGroups" => %{"shape" => "MetricGroupList"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "NewGameSessionProtectionPolicy" => %{"shape" => "ProtectionPolicy"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "ResourceCreationLimitPolicy" => %{"shape" => "ResourceCreationLimitPolicy"}, "ServerLaunchParameters" => %{"shape" => "NonZeroAndMaxString"}, "ServerLaunchPath" => %{"shape" => "NonZeroAndMaxString"}, "Status" => %{"shape" => "FleetStatus"}, "TerminationTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "DescribeRuntimeConfigurationInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "required" => ["FleetId"], "type" => "structure"}, "EventCode" => %{"enum" => ["GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED"], "type" => "string"}, "PlayerData" => %{"max" => 2048, "min" => 1, "type" => "string"}, "CreateMatchmakingRuleSetOutput" => %{"members" => %{"RuleSet" => %{"shape" => "MatchmakingRuleSet"}}, "required" => ["RuleSet"], "type" => "structure"}, "SnsArnStringModel" => %{"max" => 300, "min" => 0, "pattern" => "[a-zA-Z0-9:_/-]*", "type" => "string"}, "GameSessionDetail" => %{"members" => %{"GameSession" => %{"shape" => "GameSession"}, "ProtectionPolicy" => %{"shape" => "ProtectionPolicy"}}, "type" => "structure"}, "UpdateFleetPortSettingsInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "InboundPermissionAuthorizations" => %{"shape" => "IpPermissionsList"}, "InboundPermissionRevocations" => %{"shape" => "IpPermissionsList"}}, "required" => ["FleetId"], "type" => "structure"}, "DescribePlayerSessionsOutput" => %{"members" => %{"NextToken" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessions" => %{"shape" => "PlayerSessionList"}}, "type" => "structure"}, "UpdateMatchmakingConfigurationInput" => %{"members" => %{"AcceptanceRequired" => %{"shape" => "Boolean"}, "AcceptanceTimeoutSeconds" => %{"shape" => "MatchmakingAcceptanceTimeoutInteger"}, "AdditionalPlayerCount" => %{"shape" => "WholeNumber"}, "CustomEventData" => %{"shape" => "CustomEventData"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionQueueArns" => %{"shape" => "QueueArnsList"}, "Name" => %{"shape" => "MatchmakingIdStringModel"}, "NotificationTarget" => %{"shape" => "SnsArnStringModel"}, "RequestTimeoutSeconds" => %{"shape" => "MatchmakingRequestTimeoutInteger"}, "RuleSetName" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["Name"], "type" => "structure"}, "IpProtocol" => %{"enum" => ["TCP", "UDP"], "type" => "string"}, "StringDoubleMap" => %{"key" => %{"shape" => "NonZeroAndMaxString"}, "type" => "map", "value" => %{"shape" => "DoubleObject"}}, "VpcPeeringConnectionStatus" => %{"members" => %{"Code" => %{"shape" => "NonZeroAndMaxString"}, "Message" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "MatchmakingPlayerIdList" => %{"member" => %{"shape" => "PlayerIdStringModel"}, "type" => "list"}, "RoutingStrategy" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "Message" => %{"shape" => "FreeText"}, "Type" => %{"shape" => "RoutingStrategyType"}}, "type" => "structure"}, "PlayerSession" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "FleetId" => %{"shape" => "FleetId"}, "GameSessionId" => %{"shape" => "NonZeroAndMaxString"}, "IpAddress" => %{"shape" => "IpAddress"}, "PlayerData" => %{"shape" => "PlayerData"}, "PlayerId" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionId" => %{"shape" => "PlayerSessionId"}, "Port" => %{"shape" => "PortNumber"}, "Status" => %{"shape" => "PlayerSessionStatus"}, "TerminationTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "InvalidFleetStatusException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "StartGameSessionPlacementInput" => %{"members" => %{"DesiredPlayerSessions" => %{"shape" => "DesiredPlayerSessionList"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionName" => %{"shape" => "NonZeroAndMaxString"}, "GameSessionQueueName" => %{"shape" => "GameSessionQueueName"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}, "PlacementId" => %{"shape" => "IdStringModel"}, "PlayerLatencies" => %{"shape" => "PlayerLatencyList"}}, "required" => ["PlacementId", "GameSessionQueueName", "MaximumPlayerSessionCount"], "type" => "structure"}, "Float" => %{"type" => "float"}, "ListBuildsInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonEmptyString"}, "Status" => %{"shape" => "BuildStatus"}}, "type" => "structure"}, "NonEmptyString" => %{"min" => 1, "type" => "string"}, "IpPermission" => %{"members" => %{"FromPort" => %{"shape" => "PortNumber"}, "IpRange" => %{"shape" => "NonBlankString"}, "Protocol" => %{"shape" => "IpProtocol"}, "ToPort" => %{"shape" => "PortNumber"}}, "required" => ["FromPort", "ToPort", "IpRange", "Protocol"], "type" => "structure"}, "DoubleObject" => %{"type" => "double"}, "WholeNumber" => %{"min" => 0, "type" => "integer"}, "GetInstanceAccessOutput" => %{"members" => %{"InstanceAccess" => %{"shape" => "InstanceAccess"}}, "type" => "structure"}, "QueueArnsList" => %{"member" => %{"shape" => "ArnStringModel"}, "type" => "list"}, "MatchmakingConfiguration" => %{"members" => %{"AcceptanceRequired" => %{"shape" => "Boolean"}, "AcceptanceTimeoutSeconds" => %{"shape" => "MatchmakingAcceptanceTimeoutInteger"}, "AdditionalPlayerCount" => %{"shape" => "WholeNumber"}, "CreationTime" => %{"shape" => "Timestamp"}, "CustomEventData" => %{"shape" => "CustomEventData"}, "Description" => %{"shape" => "NonZeroAndMaxString"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionQueueArns" => %{"shape" => "QueueArnsList"}, "Name" => %{"shape" => "MatchmakingIdStringModel"}, "NotificationTarget" => %{"shape" => "SnsArnStringModel"}, "RequestTimeoutSeconds" => %{"shape" => "MatchmakingRequestTimeoutInteger"}, "RuleSetName" => %{"shape" => "MatchmakingIdStringModel"}}, "type" => "structure"}, "DescribeEC2InstanceLimitsOutput" => %{"members" => %{"EC2InstanceLimits" => %{"shape" => "EC2InstanceLimitList"}}, "type" => "structure"}, "DescribeFleetCapacityInput" => %{"members" => %{"FleetIds" => %{"shape" => "FleetIdList"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DescribeVpcPeeringConnectionsOutput" => %{"members" => %{"VpcPeeringConnections" => %{"shape" => "VpcPeeringConnectionList"}}, "type" => "structure"}, "FleetAttributesList" => %{"member" => %{"shape" => "FleetAttributes"}, "type" => "list"}, "InstanceCredentials" => %{"members" => %{"Secret" => %{"shape" => "NonEmptyString"}, "UserName" => %{"shape" => "NonEmptyString"}}, "sensitive" => true, "type" => "structure"}, "DescribeRuntimeConfigurationOutput" => %{"members" => %{"RuntimeConfiguration" => %{"shape" => "RuntimeConfiguration"}}, "type" => "structure"}, "LatencyMap" => %{"key" => %{"shape" => "NonEmptyString"}, "type" => "map", "value" => %{"shape" => "PositiveInteger"}}, "Timestamp" => %{"type" => "timestamp"}, "MatchmakingRuleSetList" => %{"member" => %{"shape" => "MatchmakingRuleSet"}, "type" => "list"}, "ScalingAdjustmentType" => %{"enum" => ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"], "type" => "string"}, "CreatePlayerSessionOutput" => %{"members" => %{"PlayerSession" => %{"shape" => "PlayerSession"}}, "type" => "structure"}, "RequestUploadCredentialsOutput" => %{"members" => %{"StorageLocation" => %{"shape" => "S3Location"}, "UploadCredentials" => %{"shape" => "AwsCredentials"}}, "type" => "structure"}, "DeleteMatchmakingConfigurationInput" => %{"members" => %{"Name" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["Name"], "type" => "structure"}, "DescribeFleetUtilizationOutput" => %{"members" => %{"FleetUtilization" => %{"shape" => "FleetUtilizationList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "NotFoundException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "CreateMatchmakingConfigurationOutput" => %{"members" => %{"Configuration" => %{"shape" => "MatchmakingConfiguration"}}, "type" => "structure"}, "NonZeroAndMaxString" => %{"max" => 1024, "min" => 1, "type" => "string"}, "DeleteGameSessionQueueInput" => %{"members" => %{"Name" => %{"shape" => "GameSessionQueueName"}}, "required" => ["Name"], "type" => "structure"}, "FleetCapacityExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "AcceptMatchOutput" => %{"members" => %{}, "type" => "structure"}, "IdempotentParameterMismatchException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "GameSessionQueueList" => %{"member" => %{"shape" => "GameSessionQueue"}, "type" => "list"}, "MetricName" => %{"enum" => ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"], "type" => "string"}, "CreatePlayerSessionsInput" => %{"members" => %{"GameSessionId" => %{"shape" => "ArnStringModel"}, "PlayerDataMap" => %{"shape" => "PlayerDataMap"}, "PlayerIds" => %{"shape" => "PlayerIdList"}}, "required" => ["GameSessionId", "PlayerIds"], "type" => "structure"}, "StopMatchmakingOutput" => %{"members" => %{}, "type" => "structure"}, "PlayerLatencyPolicy" => %{"members" => %{"MaximumIndividualPlayerLatencyMilliseconds" => %{"shape" => "WholeNumber"}, "PolicyDurationSeconds" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "Alias" => %{"members" => %{"AliasArn" => %{"shape" => "ArnStringModel"}, "AliasId" => %{"shape" => "AliasId"}, "CreationTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "FreeText"}, "LastUpdatedTime" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "NonBlankAndLengthConstraintString"}, "RoutingStrategy" => %{"shape" => "RoutingStrategy"}}, "type" => "structure"}, "DescribeGameSessionPlacementInput" => %{"members" => %{"PlacementId" => %{"shape" => "IdStringModel"}}, "required" => ["PlacementId"], "type" => "structure"}, "GameSessionDetailList" => %{"member" => %{"shape" => "GameSessionDetail"}, "type" => "list"}, "PlayerLatency" => %{"members" => %{"LatencyInMilliseconds" => %{"shape" => "Float"}, "PlayerId" => %{"shape" => "NonZeroAndMaxString"}, "RegionIdentifier" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "CreateBuildInput" => %{"members" => %{"Name" => %{"shape" => "NonZeroAndMaxString"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "StorageLocation" => %{"shape" => "S3Location"}, "Version" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DeleteVpcPeeringAuthorizationInput" => %{"members" => %{"GameLiftAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["GameLiftAwsAccountId", "PeerVpcId"], "type" => "structure"}, "AwsCredentials" => %{"members" => %{"AccessKeyId" => %{"shape" => "NonEmptyString"}, "SecretAccessKey" => %{"shape" => "NonEmptyString"}, "SessionToken" => %{"shape" => "NonEmptyString"}}, "sensitive" => true, "type" => "structure"}, "MatchmakingRuleSetNameList" => %{"max" => 10, "member" => %{"shape" => "MatchmakingIdStringModel"}, "min" => 1, "type" => "list"}, "UnsupportedRegionException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "ArnStringModel" => %{"max" => 256, "min" => 1, "pattern" => "[a-zA-Z0-9:/-]+", "type" => "string"}, "GameSession" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "CreatorId" => %{"shape" => "NonZeroAndMaxString"}, "CurrentPlayerSessionCount" => %{"shape" => "WholeNumber"}, "FleetId" => %{"shape" => "FleetId"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionId" => %{"shape" => "NonZeroAndMaxString"}, "IpAddress" => %{"shape" => "IpAddress"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionCreationPolicy" => %{"shape" => "PlayerSessionCreationPolicy"}, "Port" => %{"shape" => "PortNumber"}, "Status" => %{"shape" => "GameSessionStatus"}, "TerminationTime" => %{"shape" => "Timestamp"}}, "type" => "structure"}, "DescribeGameSessionQueuesInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveInteger"}, "Names" => %{"shape" => "GameSessionQueueNameList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "FleetStatus" => %{"enum" => ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"], "type" => "string"}, "DescribeGameSessionsInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}, "FleetId" => %{"shape" => "FleetId"}, "GameSessionId" => %{"shape" => "ArnStringModel"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "StatusFilter" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "CreateGameSessionOutput" => %{"members" => %{"GameSession" => %{"shape" => "GameSession"}}, "type" => "structure"}, "DesiredPlayerSessionList" => %{"member" => %{"shape" => "DesiredPlayerSession"}, "type" => "list"}, "Double" => %{"type" => "double"}, "ScalingPolicy" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperatorType"}, "EvaluationPeriods" => %{"shape" => "PositiveInteger"}, "FleetId" => %{"shape" => "FleetId"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "ScalingAdjustment" => %{"shape" => "Integer"}, "ScalingAdjustmentType" => %{"shape" => "ScalingAdjustmentType"}, "Status" => %{"shape" => "ScalingStatusType"}, "Threshold" => %{"shape" => "Double"}}, "type" => "structure"}, "DescribeAliasInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}}, "required" => ["AliasId"], "type" => "structure"}, "Build" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}, "CreationTime" => %{"shape" => "Timestamp"}, "Name" => %{"shape" => "FreeText"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "SizeOnDisk" => %{"shape" => "PositiveLong"}, "Status" => %{"shape" => "BuildStatus"}, "Version" => %{"shape" => "FreeText"}}, "type" => "structure"}, "StartMatchmakingOutput" => %{"members" => %{"MatchmakingTicket" => %{"shape" => "MatchmakingTicket"}}, "type" => "structure"}, "UpdateGameSessionQueueOutput" => %{"members" => %{"GameSessionQueue" => %{"shape" => "GameSessionQueue"}}, "type" => "structure"}, "PlacedPlayerSessionList" => %{"member" => %{"shape" => "PlacedPlayerSession"}, "type" => "list"}, "GetGameSessionLogUrlInput" => %{"members" => %{"GameSessionId" => %{"shape" => "ArnStringModel"}}, "required" => ["GameSessionId"], "type" => "structure"}, "ResolveAliasOutput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "type" => "structure"}, "CreateVpcPeeringConnectionOutput" => %{"members" => %{}, "type" => "structure"}, "CustomEventData" => %{"max" => 256, "min" => 0, "type" => "string"}, "ProtectionPolicy" => %{"enum" => ["NoProtection", "FullProtection"], "type" => "string"}, "CreateVpcPeeringAuthorizationOutput" => %{"members" => %{"VpcPeeringAuthorization" => %{"shape" => "VpcPeeringAuthorization"}}, "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "UpdateGameSessionQueueInput" => %{"members" => %{"Destinations" => %{"shape" => "GameSessionQueueDestinationList"}, "Name" => %{"shape" => "GameSessionQueueName"}, "PlayerLatencyPolicies" => %{"shape" => "PlayerLatencyPolicyList"}, "TimeoutInSeconds" => %{"shape" => "WholeNumber"}}, "required" => ["Name"], "type" => "structure"}, "DescribeFleetAttributesOutput" => %{"members" => %{"FleetAttributes" => %{"shape" => "FleetAttributesList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "EC2InstanceLimitList" => %{"member" => %{"shape" => "EC2InstanceLimit"}, "type" => "list"}, "StringModel" => %{"type" => "string"}, "AcceptanceType" => %{"enum" => ["ACCEPT", "REJECT"], "type" => "string"}, "BuildStatus" => %{"enum" => ["INITIALIZED", "READY", "FAILED"], "type" => "string"}, "DesiredPlayerSession" => %{"members" => %{"PlayerData" => %{"shape" => "PlayerData"}, "PlayerId" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "PlayerSessionList" => %{"member" => %{"shape" => "PlayerSession"}, "type" => "list"}, "DescribeFleetAttributesInput" => %{"members" => %{"FleetIds" => %{"shape" => "FleetIdList"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DescribeFleetPortSettingsInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "required" => ["FleetId"], "type" => "structure"}, "InvalidRequestException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "VpcPeeringConnectionList" => %{"member" => %{"shape" => "VpcPeeringConnection"}, "type" => "list"}, "DeleteFleetInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "required" => ["FleetId"], "type" => "structure"}, "EC2InstanceCounts" => %{"members" => %{"ACTIVE" => %{"shape" => "WholeNumber"}, "DESIRED" => %{"shape" => "WholeNumber"}, "IDLE" => %{"shape" => "WholeNumber"}, "MAXIMUM" => %{"shape" => "WholeNumber"}, "MINIMUM" => %{"shape" => "WholeNumber"}, "PENDING" => %{"shape" => "WholeNumber"}, "TERMINATING" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "UpdateBuildOutput" => %{"members" => %{"Build" => %{"shape" => "Build"}}, "type" => "structure"}, "DeleteScalingPolicyInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "Name" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["Name", "FleetId"], "type" => "structure"}, "ListAliasesInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveInteger"}, "Name" => %{"shape" => "NonEmptyString"}, "NextToken" => %{"shape" => "NonEmptyString"}, "RoutingStrategyType" => %{"shape" => "RoutingStrategyType"}}, "type" => "structure"}, "InternalServiceException" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "MatchmakingIdStringModel" => %{"max" => 128, "min" => 1, "pattern" => "[a-zA-Z0-9-\\.]+", "type" => "string"}, "DescribeFleetCapacityOutput" => %{"members" => %{"FleetCapacity" => %{"shape" => "FleetCapacityList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DeleteVpcPeeringAuthorizationOutput" => %{"members" => %{}, "type" => "structure"}, "IpAddress" => %{"type" => "string"}, "RuleSetLimit" => %{"max" => 10, "min" => 1, "type" => "integer"}, "CreateAliasOutput" => %{"members" => %{"Alias" => %{"shape" => "Alias"}}, "type" => "structure"}, "ComparisonOperatorType" => %{"enum" => ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"], "type" => "string"}, "MatchmakingConfigurationStatus" => %{"enum" => ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"], "type" => "string"}, "UpdateFleetAttributesInput" => %{"members" => %{"Description" => %{"shape" => "NonZeroAndMaxString"}, "FleetId" => %{"shape" => "FleetId"}, "MetricGroups" => %{"shape" => "MetricGroupList"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "NewGameSessionProtectionPolicy" => %{"shape" => "ProtectionPolicy"}, "ResourceCreationLimitPolicy" => %{"shape" => "ResourceCreationLimitPolicy"}}, "required" => ["FleetId"], "type" => "structure"}, "UpdateRuntimeConfigurationInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "RuntimeConfiguration" => %{"shape" => "RuntimeConfiguration"}}, "required" => ["FleetId", "RuntimeConfiguration"], "type" => "structure"}, "FleetId" => %{"pattern" => "^fleet-\\S+", "type" => "string"}, "ListFleetsOutput" => %{"members" => %{"FleetIds" => %{"shape" => "FleetIdList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "UpdateGameSessionInput" => %{"members" => %{"GameSessionId" => %{"shape" => "ArnStringModel"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionCreationPolicy" => %{"shape" => "PlayerSessionCreationPolicy"}, "ProtectionPolicy" => %{"shape" => "ProtectionPolicy"}}, "required" => ["GameSessionId"], "type" => "structure"}, "GameSessionStatus" => %{"enum" => ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"], "type" => "string"}, "GameSessionList" => %{"member" => %{"shape" => "GameSession"}, "type" => "list"}, "ListAliasesOutput" => %{"members" => %{"Aliases" => %{"shape" => "AliasList"}, "NextToken" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "StartMatchmakingInput" => %{"members" => %{"ConfigurationName" => %{"shape" => "MatchmakingIdStringModel"}, "Players" => %{"shape" => "PlayerList"}, "TicketId" => %{"shape" => "MatchmakingIdStringModel"}}, "required" => ["ConfigurationName", "Players"], "type" => "structure"}, "PutScalingPolicyOutput" => %{"members" => %{"Name" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "UpdateFleetPortSettingsOutput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "type" => "structure"}, "DescribeMatchmakingConfigurationsInput" => %{"members" => %{"Limit" => %{"shape" => "PositiveInteger"}, "Names" => %{"shape" => "MatchmakingIdList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "RuleSetName" => %{"shape" => "MatchmakingIdStringModel"}}, "type" => "structure"}, "DescribeBuildOutput" => %{"members" => %{"Build" => %{"shape" => "Build"}}, "type" => "structure"}, "DescribeGameSessionsOutput" => %{"members" => %{"GameSessions" => %{"shape" => "GameSessionList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "IpPermissionsList" => %{"max" => 50, "member" => %{"shape" => "IpPermission"}, "type" => "list"}, "PlayerList" => %{"member" => %{"shape" => "Player"}, "type" => "list"}, "MaxConcurrentGameSessionActivations" => %{"max" => 2147483647, "min" => 1, "type" => "integer"}, "EC2InstanceLimit" => %{"members" => %{"CurrentInstances" => %{"shape" => "WholeNumber"}, "EC2InstanceType" => %{"shape" => "EC2InstanceType"}, "InstanceLimit" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "InstanceAccess" => %{"members" => %{"Credentials" => %{"shape" => "InstanceCredentials"}, "FleetId" => %{"shape" => "FleetId"}, "InstanceId" => %{"shape" => "InstanceId"}, "IpAddress" => %{"shape" => "IpAddress"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}}, "type" => "structure"}, "MetricGroupList" => %{"max" => 1, "member" => %{"shape" => "MetricGroup"}, "type" => "list"}, "DeleteAliasInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}}, "required" => ["AliasId"], "type" => "structure"}, "ResourceCreationLimitPolicy" => %{"members" => %{"NewGameSessionsPerCreator" => %{"shape" => "WholeNumber"}, "PolicyPeriodInMinutes" => %{"shape" => "WholeNumber"}}, "type" => "structure"}, "UpdateRuntimeConfigurationOutput" => %{"members" => %{"RuntimeConfiguration" => %{"shape" => "RuntimeConfiguration"}}, "type" => "structure"}, "PlacedPlayerSession" => %{"members" => %{"PlayerId" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionId" => %{"shape" => "PlayerSessionId"}}, "type" => "structure"}, "PlayerAttributeMap" => %{"key" => %{"shape" => "NonZeroAndMaxString"}, "type" => "map", "value" => %{"shape" => "AttributeValue"}}, "DescribeFleetEventsOutput" => %{"members" => %{"Events" => %{"shape" => "EventList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "IdStringModel" => %{"max" => 48, "min" => 1, "pattern" => "[a-zA-Z0-9-]+", "type" => "string"}, "VpcPeeringAuthorization" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "ExpirationTime" => %{"shape" => "Timestamp"}, "GameLiftAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcAwsAccountId" => %{"shape" => "NonZeroAndMaxString"}, "PeerVpcId" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DescribeGameSessionPlacementOutput" => %{"members" => %{"GameSessionPlacement" => %{"shape" => "GameSessionPlacement"}}, "type" => "structure"}, "DescribeMatchmakingRuleSetsInput" => %{"members" => %{"Limit" => %{"shape" => "RuleSetLimit"}, "Names" => %{"shape" => "MatchmakingRuleSetNameList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "AliasList" => %{"member" => %{"shape" => "Alias"}, "type" => "list"}, "GameSessionPlacement" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "GameProperties" => %{"shape" => "GamePropertyList"}, "GameSessionArn" => %{"shape" => "NonZeroAndMaxString"}, "GameSessionData" => %{"shape" => "GameSessionData"}, "GameSessionId" => %{"shape" => "NonZeroAndMaxString"}, "GameSessionName" => %{"shape" => "NonZeroAndMaxString"}, "GameSessionQueueName" => %{"shape" => "GameSessionQueueName"}, "GameSessionRegion" => %{"shape" => "NonZeroAndMaxString"}, "IpAddress" => %{"shape" => "IpAddress"}, "MaximumPlayerSessionCount" => %{"shape" => "WholeNumber"}, "PlacedPlayerSessions" => %{"shape" => "PlacedPlayerSessionList"}, "PlacementId" => %{"shape" => "IdStringModel"}, "PlayerLatencies" => %{"shape" => "PlayerLatencyList"}, "Port" => %{"shape" => "PortNumber"}, "StartTime" => %{"shape" => "Timestamp"}, "Status" => %{"shape" => "GameSessionPlacementState"}}, "type" => "structure"}, "UpdateFleetCapacityInput" => %{"members" => %{"DesiredInstances" => %{"shape" => "WholeNumber"}, "FleetId" => %{"shape" => "FleetId"}, "MaxSize" => %{"shape" => "WholeNumber"}, "MinSize" => %{"shape" => "WholeNumber"}}, "required" => ["FleetId"], "type" => "structure"}, "NonBlankAndLengthConstraintString" => %{"max" => 1024, "min" => 1, "pattern" => ".*\\S.*", "type" => "string"}, "CreatePlayerSessionInput" => %{"members" => %{"GameSessionId" => %{"shape" => "ArnStringModel"}, "PlayerData" => %{"shape" => "PlayerData"}, "PlayerId" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["GameSessionId", "PlayerId"], "type" => "structure"}, "GamePropertyKey" => %{"max" => 32, "type" => "string"}, "GameProperty" => %{"members" => %{"Key" => %{"shape" => "GamePropertyKey"}, "Value" => %{"shape" => "GamePropertyValue"}}, "required" => ["Key", "Value"], "type" => "structure"}, "DescribeGameSessionDetailsInput" => %{"members" => %{"AliasId" => %{"shape" => "AliasId"}, "FleetId" => %{"shape" => "FleetId"}, "GameSessionId" => %{"shape" => "ArnStringModel"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "StatusFilter" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "RuleSetBody" => %{"max" => 65535, "min" => 1, "type" => "string"}, "AttributeValue" => %{"members" => %{"N" => %{"shape" => "DoubleObject"}, "S" => %{"shape" => "NonZeroAndMaxString"}, "SDM" => %{"shape" => "StringDoubleMap"}, "SL" => %{"shape" => "StringList"}}, "type" => "structure"}, "PutScalingPolicyInput" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperatorType"}, "EvaluationPeriods" => %{"shape" => "PositiveInteger"}, "FleetId" => %{"shape" => "FleetId"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "NonZeroAndMaxString"}, "ScalingAdjustment" => %{"shape" => "Integer"}, "ScalingAdjustmentType" => %{"shape" => "ScalingAdjustmentType"}, "Threshold" => %{"shape" => "Double"}}, "required" => ["Name", "FleetId", "ScalingAdjustment", "ScalingAdjustmentType", "Threshold", "ComparisonOperator", "EvaluationPeriods", "MetricName"], "type" => "structure"}, "GameSessionPlacementState" => %{"enum" => ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT"], "type" => "string"}, "DescribePlayerSessionsInput" => %{"members" => %{"GameSessionId" => %{"shape" => "ArnStringModel"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}, "PlayerId" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionId" => %{"shape" => "PlayerSessionId"}, "PlayerSessionStatusFilter" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DescribeScalingPoliciesOutput" => %{"members" => %{"NextToken" => %{"shape" => "NonZeroAndMaxString"}, "ScalingPolicies" => %{"shape" => "ScalingPolicyList"}}, "type" => "structure"}, "MatchedPlayerSession" => %{"members" => %{"PlayerId" => %{"shape" => "NonZeroAndMaxString"}, "PlayerSessionId" => %{"shape" => "PlayerSessionId"}}, "type" => "structure"}, "DeleteGameSessionQueueOutput" => %{"members" => %{}, "type" => "structure"}, "CreateGameSessionQueueOutput" => %{"members" => %{"GameSessionQueue" => %{"shape" => "GameSessionQueue"}}, "type" => "structure"}, "ServerProcessList" => %{"max" => 50, "member" => %{"shape" => "ServerProcess"}, "min" => 1, "type" => "list"}, "DescribeVpcPeeringConnectionsInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "type" => "structure"}, "DescribeGameSessionDetailsOutput" => %{"members" => %{"GameSessionDetails" => %{"shape" => "GameSessionDetailList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "GetInstanceAccessInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "InstanceId" => %{"shape" => "InstanceId"}}, "required" => ["FleetId", "InstanceId"], "type" => "structure"}, "SearchGameSessionsOutput" => %{"members" => %{"GameSessions" => %{"shape" => "GameSessionList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "DescribeBuildInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}}, "required" => ["BuildId"], "type" => "structure"}, "MatchmakingAcceptanceTimeoutInteger" => %{"max" => 600, "min" => 1, "type" => "integer"}, "Event" => %{"members" => %{"EventCode" => %{"shape" => "EventCode"}, "EventId" => %{"shape" => "NonZeroAndMaxString"}, "EventTime" => %{"shape" => "Timestamp"}, "Message" => %{"shape" => "NonEmptyString"}, "PreSignedLogUrl" => %{"shape" => "NonZeroAndMaxString"}, "ResourceId" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "CreateMatchmakingRuleSetInput" => %{"members" => %{"Name" => %{"shape" => "MatchmakingIdStringModel"}, "RuleSetBody" => %{"shape" => "RuleSetBody"}}, "required" => ["Name", "RuleSetBody"], "type" => "structure"}, "UpdateAliasOutput" => %{"members" => %{"Alias" => %{"shape" => "Alias"}}, "type" => "structure"}, "UpdateFleetCapacityOutput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}}, "type" => "structure"}, "MatchmakingRequestTimeoutInteger" => %{"max" => 43200, "min" => 1, "type" => "integer"}, "VpcPeeringAuthorizationList" => %{"member" => %{"shape" => "VpcPeeringAuthorization"}, "type" => "list"}, "InvalidGameSessionStatusException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "PlayerSessionCreationPolicy" => %{"enum" => ["ACCEPT_ALL", "DENY_ALL"], "type" => "string"}, "TerminalRoutingStrategyException" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "RequestUploadCredentialsInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}}, "required" => ["BuildId"], "type" => "structure"}, "MatchedPlayerSessionList" => %{"member" => %{"shape" => "MatchedPlayerSession"}, "type" => "list"}, "GameSessionActivationTimeoutSeconds" => %{"max" => 600, "min" => 1, "type" => "integer"}, "FleetCapacityList" => %{"member" => %{"shape" => "FleetCapacity"}, "type" => "list"}, "ListBuildsOutput" => %{"members" => %{"Builds" => %{"shape" => "BuildList"}, "NextToken" => %{"shape" => "NonEmptyString"}}, "type" => "structure"}, "GetGameSessionLogUrlOutput" => %{"members" => %{"PreSignedUrl" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "DescribeInstancesInput" => %{"members" => %{"FleetId" => %{"shape" => "FleetId"}, "InstanceId" => %{"shape" => "InstanceId"}, "Limit" => %{"shape" => "PositiveInteger"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "required" => ["FleetId"], "type" => "structure"}, "GameSessionConnectionInfo" => %{"members" => %{"GameSessionArn" => %{"shape" => "ArnStringModel"}, "IpAddress" => %{"shape" => "StringModel"}, "MatchedPlayerSessions" => %{"shape" => "MatchedPlayerSessionList"}, "Port" => %{"shape" => "PositiveInteger"}}, "type" => "structure"}, "DescribeGameSessionQueuesOutput" => %{"members" => %{"GameSessionQueues" => %{"shape" => "GameSessionQueueList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "PlayerIdList" => %{"max" => 25, "member" => %{"shape" => "NonZeroAndMaxString"}, "min" => 1, "type" => "list"}, "AliasId" => %{"pattern" => "^alias-\\S+", "type" => "string"}, "GameSessionQueueDestinationList" => %{"member" => %{"shape" => "GameSessionQueueDestination"}, "type" => "list"}, "ValidateMatchmakingRuleSetOutput" => %{"members" => %{"Valid" => %{"shape" => "Boolean"}}, "type" => "structure"}, "BuildList" => %{"member" => %{"shape" => "Build"}, "type" => "list"}, "StartGameSessionPlacementOutput" => %{"members" => %{"GameSessionPlacement" => %{"shape" => "GameSessionPlacement"}}, "type" => "structure"}, "UpdateMatchmakingConfigurationOutput" => %{"members" => %{"Configuration" => %{"shape" => "MatchmakingConfiguration"}}, "type" => "structure"}, "PortNumber" => %{"max" => 60000, "min" => 1, "type" => "integer"}, "CreateBuildOutput" => %{"members" => %{"Build" => %{"shape" => "Build"}, "StorageLocation" => %{"shape" => "S3Location"}, "UploadCredentials" => %{"shape" => "AwsCredentials"}}, "type" => "structure"}, "DescribeVpcPeeringAuthorizationsInput" => %{"members" => %{}, "type" => "structure"}, "MatchmakingTicketList" => %{"member" => %{"shape" => "MatchmakingTicket"}, "type" => "list"}, "FleetUtilizationList" => %{"member" => %{"shape" => "FleetUtilization"}, "type" => "list"}, "DescribeInstancesOutput" => %{"members" => %{"Instances" => %{"shape" => "InstanceList"}, "NextToken" => %{"shape" => "NonZeroAndMaxString"}}, "type" => "structure"}, "CreateFleetOutput" => %{"members" => %{"FleetAttributes" => %{"shape" => "FleetAttributes"}}, "type" => "structure"}, "MetricGroup" => %{"max" => 255, "min" => 1, "type" => "string"}, "Instance" => %{"members" => %{"CreationTime" => %{"shape" => "Timestamp"}, "FleetId" => %{"shape" => "FleetId"}, "InstanceId" => %{"shape" => "InstanceId"}, "IpAddress" => %{"shape" => "IpAddress"}, "OperatingSystem" => %{"shape" => "OperatingSystem"}, "Status" => %{"shape" => "InstanceStatus"}, "Type" => %{"shape" => "EC2InstanceType"}}, "type" => "structure"}, "DeleteBuildInput" => %{"members" => %{"BuildId" => %{"shape" => "BuildId"}}, "required" => ["BuildId"], "type" => "structure"}, "PlayerDataMap" => %{"key" => %{"shape" => "NonZeroAndMaxString"}, "type" => "map", "value" => %{"shape" => "PlayerData"}}}
  end
end