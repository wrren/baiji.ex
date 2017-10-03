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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionQueues",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopGameSessionPlacement",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteMatchmakingConfiguration",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RequestUploadCredentials",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionDetails",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "PutScalingPolicy",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeAlias",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateGameSessionQueue",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeEC2InstanceLimits",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetInstanceAccess",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ValidateMatchmakingRuleSet",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmakingConfigurations",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcPeeringConnection",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StopMatchmaking",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpcPeeringConnection",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateGameSession",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateMatchmakingRuleSet",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateGameSession",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateAlias",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePlayerSessions",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteGameSessionQueue",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetAttributes",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "SearchGameSessions",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetCapacity",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartGameSessionPlacement",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetAttributes",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteAlias",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateMatchmakingConfiguration",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteBuild",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteScalingPolicy",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmaking",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateAlias",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcPeeringConnections",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "StartMatchmaking",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeScalingPolicies",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetCapacity",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResolveAlias",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateMatchmakingConfiguration",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeMatchmakingRuleSets",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateGameSessionQueue",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListAliases",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateRuntimeConfiguration",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteVpcPeeringAuthorization",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateBuild",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AcceptMatch",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessions",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribePlayerSessions",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateFleet",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetPortSettings",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeGameSessionPlacement",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetUtilization",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeRuntimeConfiguration",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteFleet",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateFleetPortSettings",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListBuilds",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeVpcPeeringAuthorizations",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateBuild",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeInstances",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeBuild",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetGameSessionLogUrl",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListFleets",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateVpcPeeringAuthorization",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreatePlayerSession",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
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
      service:          "gamelift",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeFleetEvents",
      
      target_prefix:    "GameLift",
      
      endpoint_prefix:  "gamelift",
      type:             :json,
      version:          "2015-10-01",
      method:           :post
    }
  end
  
end