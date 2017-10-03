defmodule Baiji.WAFRegional do
  @moduledoc """
  This is the *AWS WAF Regional API Reference* for using AWS WAF with Elastic
  Load Balancing (ELB) Application Load Balancers. The AWS WAF actions and
  data types listed in the reference are available for protecting Application
  Load Balancers. You can use these actions and data types by means of the
  endpoints listed in [AWS Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).
  This guide is for developers who need detailed information about the AWS
  WAF API actions, data types, and errors. For detailed information about AWS
  WAF features and an overview of how to use the AWS WAF API, see the [AWS
  WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  
  @doc """
  Returns an array of `SqlInjectionMatchSet` objects.
  """
  def list_sql_injection_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSqlInjectionMatchSets",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListSqlInjectionMatchSetsRequest",
      output_shape:     "ListSqlInjectionMatchSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes an `IPSet`. You can't delete an `IPSet` if it's still
  used in any `Rules` or if it still includes any IP addresses.

  If you just want to remove an `IPSet` from a `Rule`, use `UpdateRule`.

  To permanently delete an `IPSet` from AWS WAF, perform the following steps:

  <ol> <li> Update the `IPSet` to remove IP address ranges, if any. For more
  information, see `UpdateIPSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteIPSet` request.

  </li> <li> Submit a `DeleteIPSet` request.

  </li> </ol>
  """
  def delete_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteIPSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteIPSetRequest",
      output_shape:     "DeleteIPSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Associates a web ACL with a resource.
  """
  def associate_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AssociateWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "AssociateWebACLRequest",
      output_shape:     "AssociateWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `RateBasedRule` that is specified by the `RuleId` that you
  included in the `GetRateBasedRule` request.
  """
  def get_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRateBasedRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetRateBasedRuleRequest",
      output_shape:     "GetRateBasedRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `RuleSummary` objects.
  """
  def list_rate_based_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRateBasedRules",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListRateBasedRulesRequest",
      output_shape:     "ListRateBasedRulesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes an `XssMatchSet`. You can't delete an `XssMatchSet` if
  it's still used in any `Rules` or if it still contains any `XssMatchTuple`
  objects.

  If you just want to remove an `XssMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete an `XssMatchSet` from AWS WAF, perform the following
  steps:

  <ol> <li> Update the `XssMatchSet` to remove filters, if any. For more
  information, see `UpdateXssMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteXssMatchSet` request.

  </li> <li> Submit a `DeleteXssMatchSet` request.

  </li> </ol>
  """
  def delete_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteXssMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteXssMatchSetRequest",
      output_shape:     "DeleteXssMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of IP addresses currently being blocked by the
  `RateBasedRule` that is specified by the `RuleId`. The maximum number of
  managed keys that will be blocked is 10,000. If more than 10,000 addresses
  exceed the rate limit, the 10,000 addresses with the highest rates will be
  blocked.
  """
  def get_rate_based_rule_managed_keys(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRateBasedRuleManagedKeys",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetRateBasedRuleManagedKeysRequest",
      output_shape:     "GetRateBasedRuleManagedKeysResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `Rule` that is specified by the `RuleId` that you included in
  the `GetRule` request.
  """
  def get_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetRuleRequest",
      output_shape:     "GetRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `SizeConstraintSet`. You can't delete a
  `SizeConstraintSet` if it's still used in any `Rules` or if it still
  includes any `SizeConstraint` objects (any filters).

  If you just want to remove a `SizeConstraintSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Update the `SizeConstraintSet` to remove filters, if any. For
  more information, see `UpdateSizeConstraintSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteSizeConstraintSet` request.

  </li> <li> Submit a `DeleteSizeConstraintSet` request.

  </li> </ol>
  """
  def delete_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSizeConstraintSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteSizeConstraintSetRequest",
      output_shape:     "DeleteSizeConstraintSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `Rule`. You can't delete a `Rule` if it's still used
  in any `WebACL` objects or if it still includes any predicates, such as
  `ByteMatchSet` objects.

  If you just want to remove a `Rule` from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `Rule` from AWS WAF, perform the following steps:

  <ol> <li> Update the `Rule` to remove predicates, if any. For more
  information, see `UpdateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteRule` request.

  </li> <li> Submit a `DeleteRule` request.

  </li> </ol>
  """
  def delete_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteRuleRequest",
      output_shape:     "DeleteRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `Predicate` objects in a `Rule`. Each `Predicate` object
  identifies a predicate, such as a `ByteMatchSet` or an `IPSet`, that
  specifies the web requests that you want to allow, block, or count. If you
  add more than one predicate to a `Rule`, a request must match all of the
  specifications to be allowed, blocked, or counted. For example, suppose you
  add the following to a `Rule`:

  <ul> <li> A `ByteMatchSet` that matches the value `BadBot` in the
  `User-Agent` header

  </li> <li> An `IPSet` that matches the IP address `192.0.2.44`

  </li> </ul> You then add the `Rule` to a `WebACL` and specify that you want
  to block requests that satisfy the `Rule`. For a request to be blocked, the
  `User-Agent` header in the request must contain the value `BadBot` *and*
  the request must originate from the IP address 192.0.2.44.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  `Rule`.

  </li> <li> Create the `Rule`. See `CreateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRule` request to add predicates to the `Rule`.

  </li> <li> Create and update a `WebACL` that contains the `Rule`. See
  `CreateWebACL`.

  </li> </ol> If you want to replace one `ByteMatchSet` or `IPSet` with
  another, you delete the existing one and add the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateRuleRequest",
      output_shape:     "UpdateRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `SqlInjectionMatchSet` that is specified by
  `SqlInjectionMatchSetId`.
  """
  def get_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSqlInjectionMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetSqlInjectionMatchSetRequest",
      output_shape:     "GetSqlInjectionMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `SizeConstraintSet`. You then use `UpdateSizeConstraintSet` to
  identify the part of a web request that you want AWS WAF to check for
  length, such as the length of the `User-Agent` header or the length of the
  query string. For example, you can create a `SizeConstraintSet` that
  matches any requests that have a query string that is longer than 100
  bytes. You can then configure AWS WAF to reject those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSizeConstraintSet` request.

  </li> <li> Submit a `CreateSizeConstraintSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

  </li> <li> Submit an `UpdateSizeConstraintSet` request to specify the part
  of the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSizeConstraintSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateSizeConstraintSetRequest",
      output_shape:     "CreateSizeConstraintSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `RateBasedRule`. The `RateBasedRule` contains a `RateLimit`,
  which specifies the maximum number of requests that AWS WAF allows from a
  specified IP address in a five-minute period. The `RateBasedRule` also
  contains the `IPSet` objects, `ByteMatchSet` objects, and other predicates
  that identify the requests that you want to count or block if these
  requests exceed the `RateLimit`.

  If you add more than one predicate to a `RateBasedRule`, a request not only
  must exceed the `RateLimit`, but it also must match all the specifications
  to be counted or blocked. For example, suppose you add the following to a
  `RateBasedRule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that you want to
  block requests that meet the conditions in the rule. For a request to be
  blocked, it must come from the IP address 192.0.2.44 *and* the `User-Agent`
  header in the request must contain the value `BadBot`. Further, requests
  that match these two conditions must be received at a rate of more than
  15,000 requests every five minutes. If both conditions are met and the rate
  is exceeded, AWS WAF blocks the requests. If the rate drops below 15,000
  for a five-minute period, AWS WAF no longer blocks the requests.

  As a second example, suppose you want to limit requests to a particular
  page on your site. To do this, you could add the following to a
  `RateBasedRule`:

  <ul> <li> A `ByteMatchSet` with `FieldToMatch` of `URI`

  </li> <li> A `PositionalConstraint` of `STARTS_WITH`

  </li> <li> A `TargetString` of `login`

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to
  your login page without affecting the rest of your site.

  To create and configure a `RateBasedRule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  rule. For more information, see `CreateByteMatchSet`, `CreateIPSet`, and
  `CreateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateRule` request.

  </li> <li> Submit a `CreateRateBasedRule` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRateBasedRule` request to specify the
  predicates that you want to include in the rule.

  </li> <li> Create and update a `WebACL` that contains the `RateBasedRule`.
  For more information, see `CreateWebACL`.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRateBasedRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateRateBasedRuleRequest",
      output_shape:     "CreateRateBasedRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `WebACLSummary` objects in the response.
  """
  def list_web_a_c_ls(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListWebACLs",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListWebACLsRequest",
      output_shape:     "ListWebACLsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `SizeConstraintSetSummary` objects.
  """
  def list_size_constraint_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListSizeConstraintSets",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListSizeConstraintSetsRequest",
      output_shape:     "ListSizeConstraintSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `RuleSummary` objects.
  """
  def list_rules(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListRules",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListRulesRequest",
      output_shape:     "ListRulesResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the status of a `ChangeToken` that you got by calling
  `GetChangeToken`. `ChangeTokenStatus` is one of the following values:

  <ul> <li> `PROVISIONED`: You requested the change token by calling
  `GetChangeToken`, but you haven't used it yet in a call to create, update,
  or delete an AWS WAF object.

  </li> <li> `PENDING`: AWS WAF is propagating the create, update, or delete
  request to all AWS WAF servers.

  </li> <li> `IN_SYNC`: Propagation is complete.

  </li> </ul>
  """
  def get_change_token_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetChangeTokenStatus",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetChangeTokenStatusRequest",
      output_shape:     "GetChangeTokenStatusResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `ActivatedRule` objects in a `WebACL`. Each `Rule`
  identifies web requests that you want to allow, block, or count. When you
  update a `WebACL`, you specify the following values:

  <ul> <li> A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS
  WAF performs the default action if a request doesn't match the criteria in
  any of the `Rules` in a `WebACL`.

  </li> <li> The `Rules` that you want to add and/or delete. If you want to
  replace one `Rule` with another, you delete the existing `Rule` and add the
  new one.

  </li> <li> For each `Rule`, whether you want AWS WAF to allow requests,
  block requests, or count requests that match the conditions in the `Rule`.

  </li> <li> The order in which you want AWS WAF to evaluate the `Rules` in a
  `WebACL`. If you add more than one `Rule` to a `WebACL`, AWS WAF evaluates
  each request against the `Rules` in order based on the value of `Priority`.
  (The `Rule` that has the lowest value for `Priority` is evaluated first.)
  When a web request matches all of the predicates (such as `ByteMatchSets`
  and `IPSets`) in a `Rule`, AWS WAF immediately takes the corresponding
  action, allow or block, and doesn't evaluate the request against the
  remaining `Rules` in the `WebACL`, if any.

  </li> </ul> To create and configure a `WebACL`, perform the following
  steps:

  <ol> <li> Create and update the predicates that you want to include in
  `Rules`. For more information, see `CreateByteMatchSet`,
  `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

  </li> <li> Create and update the `Rules` that you want to include in the
  `WebACL`. For more information, see `CreateRule` and `UpdateRule`.

  </li> <li> Create a `WebACL`. See `CreateWebACL`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateWebACL` request.

  </li> <li> Submit an `UpdateWebACL` request to specify the `Rules` that you
  want to include in the `WebACL`, to specify the default action, and to
  associate the `WebACL` with a CloudFront distribution.

  </li> </ol> Be aware that if you try to add a RATE_BASED rule to a web ACL
  without setting the rule type when first creating the rule, the
  `UpdateWebACL` request will fail because the request tries to add a REGULAR
  rule (the default rule type) with the specified ID, which does not exist.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateWebACLRequest",
      output_shape:     "UpdateWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `IPSetSummary` objects in the response.
  """
  def list_i_p_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListIPSets",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListIPSetsRequest",
      output_shape:     "ListIPSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `WebACL`. You can't delete a `WebACL` if it still
  contains any `Rules`.

  To delete a `WebACL`, perform the following steps:

  <ol> <li> Update the `WebACL` to remove `Rules`, if any. For more
  information, see `UpdateWebACL`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteWebACL` request.

  </li> <li> Submit a `DeleteWebACL` request.

  </li> </ol>
  """
  def delete_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteWebACLRequest",
      output_shape:     "DeleteWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `SizeConstraintSet` specified by `SizeConstraintSetId`.
  """
  def get_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSizeConstraintSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetSizeConstraintSetRequest",
      output_shape:     "GetSizeConstraintSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet`
  objects, and other predicates that identify the requests that you want to
  block. If you add more than one predicate to a `Rule`, a request must match
  all of the specifications to be allowed or blocked. For example, suppose
  you add the following to a `Rule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> You then add the `Rule` to a `WebACL` and specify that you want
  to blocks requests that satisfy the `Rule`. For a request to be blocked, it
  must come from the IP address 192.0.2.44 *and* the `User-Agent` header in
  the request must contain the value `BadBot`.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li> Create and update the predicates that you want to include in the
  `Rule`. For more information, see `CreateByteMatchSet`, `CreateIPSet`, and
  `CreateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateRule` request.

  </li> <li> Submit a `CreateRule` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateRule` request.

  </li> <li> Submit an `UpdateRule` request to specify the predicates that
  you want to include in the `Rule`.

  </li> <li> Create and update a `WebACL` that contains the `Rule`. For more
  information, see `CreateWebACL`.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateRuleRequest",
      output_shape:     "CreateRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `Predicate` objects in a rule and updates the
  `RateLimit` in the rule.

  Each `Predicate` object identifies a predicate, such as a `ByteMatchSet` or
  an `IPSet`, that specifies the web requests that you want to block or
  count. The `RateLimit` specifies the number of requests every five minutes
  that triggers the rule.

  If you add more than one predicate to a `RateBasedRule`, a request must
  match all the predicates and exceed the `RateLimit` to be counted or
  blocked. For example, suppose you add the following to a `RateBasedRule`:

  <ul> <li> An `IPSet` that matches the IP address `192.0.2.44/32`

  </li> <li> A `ByteMatchSet` that matches `BadBot` in the `User-Agent`
  header

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that you want to
  block requests that satisfy the rule. For a request to be blocked, it must
  come from the IP address 192.0.2.44 *and* the `User-Agent` header in the
  request must contain the value `BadBot`. Further, requests that match these
  two conditions much be received at a rate of more than 15,000 every five
  minutes. If the rate drops below this limit, AWS WAF no longer blocks the
  requests.

  As a second example, suppose you want to limit requests to a particular
  page on your site. To do this, you could add the following to a
  `RateBasedRule`:

  <ul> <li> A `ByteMatchSet` with `FieldToMatch` of `URI`

  </li> <li> A `PositionalConstraint` of `STARTS_WITH`

  </li> <li> A `TargetString` of `login`

  </li> </ul> Further, you specify a `RateLimit` of 15,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to
  your login page without affecting the rest of your site.
  """
  def update_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateRateBasedRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateRateBasedRuleRequest",
      output_shape:     "UpdateRateBasedRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `XssMatchTuple` objects (filters) in an `XssMatchSet`.
  For each `XssMatchTuple` object, you specify the following values:

  <ul> <li> `Action`: Whether to insert the object into or delete the object
  from the array. To change a `XssMatchTuple`, you delete the existing object
  and add a new one.

  </li> <li> `FieldToMatch`: The part of web requests that you want AWS WAF
  to inspect and, if you want AWS WAF to inspect a header, the name of the
  header.

  </li> <li> `TextTransformation`: Which text transformation, if any, to
  perform on the web request before inspecting the request for cross-site
  scripting attacks.

  </li> </ul> You use `XssMatchSet` objects to specify which CloudFront
  requests you want to allow, block, or count. For example, if you're
  receiving requests that contain cross-site scripting attacks in the request
  body and you want to block the requests, you can create an `XssMatchSet`
  with the applicable settings, and then configure AWS WAF to block the
  requests.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li> Submit a `CreateXssMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateXssMatchSet` request to specify the parts of
  web requests that you want AWS WAF to inspect for cross-site scripting
  attacks.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateXssMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateXssMatchSetRequest",
      output_shape:     "UpdateXssMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `SqlInjectionMatchSet`, which you use to allow, block, or count
  requests that contain snippets of SQL code in a specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.

  </li> <li> Submit a `CreateSqlInjectionMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSqlInjectionMatchSet` request.

  </li> <li> Submit an `UpdateSqlInjectionMatchSet` request to specify the
  parts of web requests in which you want to allow, block, or count malicious
  SQL code.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateSqlInjectionMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateSqlInjectionMatchSetRequest",
      output_shape:     "CreateSqlInjectionMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `ByteMatchSet`. You then use `UpdateByteMatchSet` to identify the
  part of a web request that you want AWS WAF to inspect, such as the values
  of the `User-Agent` header or the query string. For example, you can create
  a `ByteMatchSet` that matches any requests with `User-Agent` headers that
  contain the string `BadBot`. You can then configure AWS WAF to reject those
  requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateByteMatchSet` request.

  </li> <li> Submit a `CreateByteMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

  </li> <li> Submit an `UpdateByteMatchSet` request to specify the part of
  the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateByteMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateByteMatchSetRequest",
      output_shape:     "CreateByteMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `SqlInjectionMatchTuple` objects (filters) in a
  `SqlInjectionMatchSet`. For each `SqlInjectionMatchTuple` object, you
  specify the following values:

  <ul> <li> `Action`: Whether to insert the object into or delete the object
  from the array. To change a `SqlInjectionMatchTuple`, you delete the
  existing object and add a new one.

  </li> <li> `FieldToMatch`: The part of web requests that you want AWS WAF
  to inspect and, if you want AWS WAF to inspect a header, the name of the
  header.

  </li> <li> `TextTransformation`: Which text transformation, if any, to
  perform on the web request before inspecting the request for snippets of
  malicious SQL code.

  </li> </ul> You use `SqlInjectionMatchSet` objects to specify which
  CloudFront requests you want to allow, block, or count. For example, if
  you're receiving requests that contain snippets of SQL code in the query
  string and you want to block the requests, you can create a
  `SqlInjectionMatchSet` with the applicable settings, and then configure AWS
  WAF to block the requests.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li> Submit a `CreateSqlInjectionMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateSqlInjectionMatchSet` request to specify the
  parts of web requests that you want AWS WAF to inspect for snippets of SQL
  code.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSqlInjectionMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateSqlInjectionMatchSetRequest",
      output_shape:     "UpdateSqlInjectionMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an `XssMatchSet`, which you use to allow, block, or count requests
  that contain cross-site scripting attacks in the specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateXssMatchSet` request.

  </li> <li> Submit a `CreateXssMatchSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateXssMatchSet` request.

  </li> <li> Submit an `UpdateXssMatchSet` request to specify the parts of
  web requests in which you want to allow, block, or count cross-site
  scripting attacks.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateXssMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateXssMatchSetRequest",
      output_shape:     "CreateXssMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the web ACL for the specified resource.
  """
  def get_web_a_c_l_for_resource(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetWebACLForResource",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetWebACLForResourceRequest",
      output_shape:     "GetWebACLForResourceResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `ByteMatchTuple` objects (filters) in a `ByteMatchSet`.
  For each `ByteMatchTuple` object, you specify the following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change a `ByteMatchSetUpdate` object, you delete the existing
  object and add a new one.

  </li> <li> The part of a web request that you want AWS WAF to inspect, such
  as a query string or the value of the `User-Agent` header.

  </li> <li> The bytes (typically a string that corresponds with ASCII
  characters) that you want AWS WAF to look for. For more information,
  including how you specify the values for the AWS WAF API and the AWS CLI or
  SDKs, see `TargetString` in the `ByteMatchTuple` data type.

  </li> <li> Where to look, such as at the beginning or the end of a query
  string.

  </li> <li> Whether to perform any conversions on the request, such as
  converting it to lowercase, before inspecting it for the specified string.

  </li> </ul> For example, you can add a `ByteMatchSetUpdate` object that
  matches web requests in which `User-Agent` headers contain the string
  `BadBot`. You can then configure AWS WAF to block those requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li> Create a `ByteMatchSet.` For more information, see
  `CreateByteMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateByteMatchSet` request.

  </li> <li> Submit an `UpdateByteMatchSet` request to specify the part of
  the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateByteMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateByteMatchSetRequest",
      output_shape:     "UpdateByteMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `XssMatchSet` objects.
  """
  def list_xss_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListXssMatchSets",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListXssMatchSetsRequest",
      output_shape:     "ListXssMatchSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates a `WebACL`, which contains the `Rules` that identify the CloudFront
  web requests that you want to allow, block, or count. AWS WAF evaluates
  `Rules` in order based on the value of `Priority` for each `Rule`.

  You also specify a default action, either `ALLOW` or `BLOCK`. If a web
  request doesn't match any of the `Rules` in a `WebACL`, AWS WAF responds to
  the request with the default action.

  To create and configure a `WebACL`, perform the following steps:

  <ol> <li> Create and update the `ByteMatchSet` objects and other predicates
  that you want to include in `Rules`. For more information, see
  `CreateByteMatchSet`, `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

  </li> <li> Create and update the `Rules` that you want to include in the
  `WebACL`. For more information, see `CreateRule` and `UpdateRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateWebACL` request.

  </li> <li> Submit a `CreateWebACL` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateWebACL` request.

  </li> <li> Submit an `UpdateWebACL` request to specify the `Rules` that you
  want to include in the `WebACL`, to specify the default action, and to
  associate the `WebACL` with a CloudFront distribution.

  </li> </ol> For more information about how to use the AWS WAF API, see the
  [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateWebACLRequest",
      output_shape:     "CreateWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `SizeConstraint` objects (filters) in a
  `SizeConstraintSet`. For each `SizeConstraint` object, you specify the
  following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change a `SizeConstraintSetUpdate` object, you delete the existing
  object and add a new one.

  </li> <li> The part of a web request that you want AWS WAF to evaluate,
  such as the length of a query string or the length of the `User-Agent`
  header.

  </li> <li> Whether to perform any transformations on the request, such as
  converting it to lowercase, before checking its length. Note that
  transformations of the request body are not supported because the AWS
  resource forwards only the first `8192` bytes of your request to AWS WAF.

  </li> <li> A `ComparisonOperator` used for evaluating the selected part of
  the request against the specified `Size`, such as equals, greater than,
  less than, and so on.

  </li> <li> The length, in bytes, that you want AWS WAF to watch for in
  selected part of the request. The length is computed after applying the
  transformation.

  </li> </ul> For example, you can add a `SizeConstraintSetUpdate` object
  that matches web requests in which the length of the `User-Agent` header is
  greater than 100 bytes. You can then configure AWS WAF to block those
  requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li> Create a `SizeConstraintSet.` For more information, see
  `CreateSizeConstraintSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.

  </li> <li> Submit an `UpdateSizeConstraintSet` request to specify the part
  of the request that you want AWS WAF to inspect (for example, the header or
  the URI) and the value that you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_size_constraint_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateSizeConstraintSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateSizeConstraintSetRequest",
      output_shape:     "UpdateSizeConstraintSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Removes a web ACL from the specified resource.
  """
  def disassociate_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DisassociateWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DisassociateWebACLRequest",
      output_shape:     "DisassociateWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `ByteMatchSet`. You can't delete a `ByteMatchSet` if
  it's still used in any `Rules` or if it still includes any `ByteMatchTuple`
  objects (any filters).

  If you just want to remove a `ByteMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `ByteMatchSet`, perform the following steps:

  <ol> <li> Update the `ByteMatchSet` to remove filters, if any. For more
  information, see `UpdateByteMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteByteMatchSet` request.

  </li> <li> Submit a `DeleteByteMatchSet` request.

  </li> </ol>
  """
  def delete_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteByteMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteByteMatchSetRequest",
      output_shape:     "DeleteByteMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of `ByteMatchSetSummary` objects.
  """
  def list_byte_match_sets(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListByteMatchSets",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListByteMatchSetsRequest",
      output_shape:     "ListByteMatchSetsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Inserts or deletes `IPSetDescriptor` objects in an `IPSet`. For each
  `IPSetDescriptor` object, you specify the following values:

  <ul> <li> Whether to insert or delete the object from the array. If you
  want to change an `IPSetDescriptor` object, you delete the existing object
  and add a new one.

  </li> <li> The IP address version, `IPv4` or `IPv6`.

  </li> <li> The IP address in CIDR notation, for example, `192.0.2.0/24`
  (for the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or
  `192.0.2.44/32` (for the individual IP address `192.0.2.44`).

  </li> </ul> AWS WAF supports /8, /16, /24, and /32 IP address ranges for
  IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6. For more information
  about CIDR notation, see the Wikipedia entry [Classless Inter-Domain
  Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  IPv6 addresses can be represented using any of the following formats:

  <ul> <li> 1111:0000:0000:0000:0000:0000:0000:0111/128

  </li> <li> 1111:0:0:0:0:0:0:0111/128

  </li> <li> 1111::0111/128

  </li> <li> 1111::111/128

  </li> </ul> You use an `IPSet` to specify which web requests you want to
  allow or block based on the IP addresses that the requests originated from.
  For example, if you're receiving a lot of requests from one or a small
  number of IP addresses and you want to block the requests, you can create
  an `IPSet` that specifies those IP addresses, and then configure AWS WAF to
  block the requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li> Submit a `CreateIPSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateIPSet` request to specify the IP addresses that
  you want AWS WAF to watch for.

  </li> </ol> When you update an `IPSet`, you specify the IP addresses that
  you want to add and/or the IP addresses that you want to delete. If you
  want to change an IP address, you delete the existing IP address and add
  the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "UpdateIPSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "UpdateIPSetRequest",
      output_shape:     "UpdateIPSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns an array of resources associated with the specified web ACL.
  """
  def list_resources_for_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListResourcesForWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "ListResourcesForWebACLRequest",
      output_shape:     "ListResourcesForWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `XssMatchSet` that is specified by `XssMatchSetId`.
  """
  def get_xss_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetXssMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetXssMatchSetRequest",
      output_shape:     "GetXssMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `IPSet` that is specified by `IPSetId`.
  """
  def get_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetIPSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetIPSetRequest",
      output_shape:     "GetIPSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `SqlInjectionMatchSet`. You can't delete a
  `SqlInjectionMatchSet` if it's still used in any `Rules` or if it still
  contains any `SqlInjectionMatchTuple` objects.

  If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the
  following steps:

  <ol> <li> Update the `SqlInjectionMatchSet` to remove filters, if any. For
  more information, see `UpdateSqlInjectionMatchSet`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.

  </li> <li> Submit a `DeleteSqlInjectionMatchSet` request.

  </li> </ol>
  """
  def delete_sql_injection_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteSqlInjectionMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteSqlInjectionMatchSetRequest",
      output_shape:     "DeleteSqlInjectionMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `ByteMatchSet` specified by `ByteMatchSetId`.
  """
  def get_byte_match_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetByteMatchSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetByteMatchSetRequest",
      output_shape:     "GetByteMatchSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Gets detailed information about a specified number of requests--a
  sample--that AWS WAF randomly selects from among the first 5,000 requests
  that your AWS resource received during a time range that you choose. You
  can specify a sample size of up to 500 requests, and you can specify any
  time range in the previous three hours.

  `GetSampledRequests` returns a time range, which is usually the time range
  that you specified. However, if your resource (such as a CloudFront
  distribution) received 5,000 requests before the specified time range
  elapsed, `GetSampledRequests` returns an updated time range. This new time
  range indicates the actual period during which AWS WAF selected the
  requests in the sample.
  """
  def get_sampled_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetSampledRequests",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetSampledRequestsRequest",
      output_shape:     "GetSampledRequestsResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Returns the `WebACL` that is specified by `WebACLId`.
  """
  def get_web_a_c_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetWebACL",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetWebACLRequest",
      output_shape:     "GetWebACLResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  When you want to create, update, or delete AWS WAF objects, get a change
  token and include the change token in the create, update, or delete
  request. Change tokens ensure that your application doesn't submit
  conflicting requests to AWS WAF.

  Each create, update, or delete request must use a unique change token. If
  your application submits a `GetChangeToken` request and then submits a
  second `GetChangeToken` request before submitting a create, update, or
  delete request, the second `GetChangeToken` request returns the same value
  as the first `GetChangeToken` request.

  When you use a change token in a create, update, or delete request, the
  status of the change token changes to `PENDING`, which indicates that AWS
  WAF is propagating the change to all AWS WAF servers. Use
  `GetChangeTokenStatus` to determine the status of your change token.
  """
  def get_change_token(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetChangeToken",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "GetChangeTokenRequest",
      output_shape:     "GetChangeTokenResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Creates an `IPSet`, which you use to specify which web requests you want to
  allow or block based on the IP addresses that the requests originate from.
  For example, if you're receiving a lot of requests from one or more
  individual IP addresses or one or more ranges of IP addresses and you want
  to block the requests, you can create an `IPSet` that contains those IP
  addresses and then configure AWS WAF to block the requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateIPSet` request.

  </li> <li> Submit a `CreateIPSet` request.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of an `UpdateIPSet` request.

  </li> <li> Submit an `UpdateIPSet` request to specify the IP addresses that
  you want AWS WAF to watch for.

  </li> </ol> For more information about how to use the AWS WAF API to allow
  or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_i_p_set(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "CreateIPSet",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "CreateIPSetRequest",
      output_shape:     "CreateIPSetResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  
  @doc """
  Permanently deletes a `RateBasedRule`. You can't delete a rule if it's
  still used in any `WebACL` objects or if it still includes any predicates,
  such as `ByteMatchSet` objects.

  If you just want to remove a rule from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `RateBasedRule` from AWS WAF, perform the following
  steps:

  <ol> <li> Update the `RateBasedRule` to remove predicates, if any. For more
  information, see `UpdateRateBasedRule`.

  </li> <li> Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `DeleteRateBasedRule` request.

  </li> <li> Submit a `DeleteRateBasedRule` request.

  </li> </ol>
  """
  def delete_rate_based_rule(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "waf-regional",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteRateBasedRule",
      
      target_prefix:    "AWSWAF_Regional_20161128",
      
      endpoint_prefix:  "waf-regional",
      type:             :json,
      version:          "2016-11-28",
      method:           :post,
      input_shape:      "DeleteRateBasedRuleRequest",
      output_shape:     "DeleteRateBasedRuleResponse",
      shapes:           &__MODULE__.__shapes__/0
    }
  end

  

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
    %{"SizeConstraintSetUpdates" => %{"member" => %{"shape" => "SizeConstraintSetUpdate"}, "type" => "list"}, "DeleteSizeConstraintSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "IPSetSummary" => %{"members" => %{"IPSetId" => %{"shape" => "ResourceId"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["IPSetId", "Name"], "type" => "structure"}, "WAFNonexistentContainerException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "GetChangeTokenResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "XssMatchSetUpdates" => %{"member" => %{"shape" => "XssMatchSetUpdate"}, "type" => "list"}, "RuleSummary" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId", "Name"], "type" => "structure"}, "DeleteSizeConstraintSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SizeConstraintSetId" => %{"shape" => "ResourceId"}}, "required" => ["SizeConstraintSetId", "ChangeToken"], "type" => "structure"}, "AssociateWebACLRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}, "WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId", "ResourceArn"], "type" => "structure"}, "DeleteRateBasedRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "WebACLSummary" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId", "Name"], "type" => "structure"}, "ByteMatchSetSummaries" => %{"member" => %{"shape" => "ByteMatchSetSummary"}, "type" => "list"}, "ChangeAction" => %{"enum" => ["INSERT", "DELETE"], "type" => "string"}, "Size" => %{"max" => 21474836480, "min" => 0, "type" => "long"}, "HTTPRequest" => %{"members" => %{"ClientIP" => %{"shape" => "IPString"}, "Country" => %{"shape" => "Country"}, "HTTPVersion" => %{"shape" => "HTTPVersion"}, "Headers" => %{"shape" => "HTTPHeaders"}, "Method" => %{"shape" => "HTTPMethod"}, "URI" => %{"shape" => "URIString"}}, "type" => "structure"}, "IPSetSummaries" => %{"member" => %{"shape" => "IPSetSummary"}, "type" => "list"}, "SizeConstraints" => %{"member" => %{"shape" => "SizeConstraint"}, "type" => "list"}, "XssMatchTuples" => %{"member" => %{"shape" => "XssMatchTuple"}, "type" => "list"}, "ParameterExceptionParameter" => %{"min" => 1, "type" => "string"}, "CreateSqlInjectionMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SqlInjectionMatchSet" => %{"shape" => "SqlInjectionMatchSet"}}, "type" => "structure"}, "ListXssMatchSetsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "GetSampledRequestsRequest" => %{"members" => %{"MaxItems" => %{"shape" => "GetSampledRequestsMaxItems"}, "RuleId" => %{"shape" => "ResourceId"}, "TimeWindow" => %{"shape" => "TimeWindow"}, "WebAclId" => %{"shape" => "ResourceId"}}, "required" => ["WebAclId", "RuleId", "TimeWindow", "MaxItems"], "type" => "structure"}, "ByteMatchSet" => %{"members" => %{"ByteMatchSetId" => %{"shape" => "ResourceId"}, "ByteMatchTuples" => %{"shape" => "ByteMatchTuples"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["ByteMatchSetId", "ByteMatchTuples"], "type" => "structure"}, "NextMarker" => %{"min" => 1, "type" => "string"}, "ListSizeConstraintSetsResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "SizeConstraintSets" => %{"shape" => "SizeConstraintSetSummaries"}}, "type" => "structure"}, "SampledHTTPRequests" => %{"member" => %{"shape" => "SampledHTTPRequest"}, "type" => "list"}, "DeleteSqlInjectionMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SqlInjectionMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["SqlInjectionMatchSetId", "ChangeToken"], "type" => "structure"}, "URIString" => %{"type" => "string"}, "GetRuleRequest" => %{"members" => %{"RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId"], "type" => "structure"}, "CreateSqlInjectionMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "ChangeToken"], "type" => "structure"}, "DeleteByteMatchSetRequest" => %{"members" => %{"ByteMatchSetId" => %{"shape" => "ResourceId"}, "ChangeToken" => %{"shape" => "ChangeToken"}}, "required" => ["ByteMatchSetId", "ChangeToken"], "type" => "structure"}, "GetXssMatchSetResponse" => %{"members" => %{"XssMatchSet" => %{"shape" => "XssMatchSet"}}, "type" => "structure"}, "DeleteXssMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "XssMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["XssMatchSetId", "ChangeToken"], "type" => "structure"}, "DeleteWebACLResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "WAFNonexistentItemException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "CreateIPSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "IPSet" => %{"shape" => "IPSet"}}, "type" => "structure"}, "GetByteMatchSetResponse" => %{"members" => %{"ByteMatchSet" => %{"shape" => "ByteMatchSet"}}, "type" => "structure"}, "SizeConstraintSetUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "SizeConstraint" => %{"shape" => "SizeConstraint"}}, "required" => ["Action", "SizeConstraint"], "type" => "structure"}, "ChangeToken" => %{"min" => 1, "type" => "string"}, "IPSetDescriptor" => %{"members" => %{"Type" => %{"shape" => "IPSetDescriptorType"}, "Value" => %{"shape" => "IPSetDescriptorValue"}}, "required" => ["Type", "Value"], "type" => "structure"}, "ListIPSetsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "ManagedKey" => %{"type" => "string"}, "SqlInjectionMatchTuples" => %{"member" => %{"shape" => "SqlInjectionMatchTuple"}, "type" => "list"}, "CreateXssMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "ChangeToken"], "type" => "structure"}, "UpdateXssMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "MatchFieldData" => %{"type" => "string"}, "GetSizeConstraintSetResponse" => %{"members" => %{"SizeConstraintSet" => %{"shape" => "SizeConstraintSet"}}, "type" => "structure"}, "ListSqlInjectionMatchSetsResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "SqlInjectionMatchSets" => %{"shape" => "SqlInjectionMatchSetSummaries"}}, "type" => "structure"}, "ListSqlInjectionMatchSetsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "ParameterExceptionField" => %{"enum" => ["CHANGE_ACTION", "WAF_ACTION", "PREDICATE_TYPE", "IPSET_TYPE", "BYTE_MATCH_FIELD_TYPE", "SQL_INJECTION_MATCH_FIELD_TYPE", "BYTE_MATCH_TEXT_TRANSFORMATION", "BYTE_MATCH_POSITIONAL_CONSTRAINT", "SIZE_CONSTRAINT_COMPARISON_OPERATOR", "RATE_KEY", "RULE_TYPE", "NEXT_MARKER"], "type" => "string"}, "HTTPVersion" => %{"type" => "string"}, "UpdateSqlInjectionMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SqlInjectionMatchSetId" => %{"shape" => "ResourceId"}, "Updates" => %{"shape" => "SqlInjectionMatchSetUpdates"}}, "required" => ["SqlInjectionMatchSetId", "ChangeToken", "Updates"], "type" => "structure"}, "SqlInjectionMatchSet" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "SqlInjectionMatchSetId" => %{"shape" => "ResourceId"}, "SqlInjectionMatchTuples" => %{"shape" => "SqlInjectionMatchTuples"}}, "required" => ["SqlInjectionMatchSetId", "SqlInjectionMatchTuples"], "type" => "structure"}, "DeleteIPSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "IPSetId" => %{"shape" => "ResourceId"}}, "required" => ["IPSetId", "ChangeToken"], "type" => "structure"}, "SizeConstraintSetSummary" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "SizeConstraintSetId" => %{"shape" => "ResourceId"}}, "required" => ["SizeConstraintSetId", "Name"], "type" => "structure"}, "DeleteIPSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "GetSizeConstraintSetRequest" => %{"members" => %{"SizeConstraintSetId" => %{"shape" => "ResourceId"}}, "required" => ["SizeConstraintSetId"], "type" => "structure"}, "GetSampledRequestsResponse" => %{"members" => %{"PopulationSize" => %{"shape" => "PopulationSize"}, "SampledRequests" => %{"shape" => "SampledHTTPRequests"}, "TimeWindow" => %{"shape" => "TimeWindow"}}, "type" => "structure"}, "ListRulesRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "DeleteByteMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "UpdateRateBasedRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "UpdateWebACLRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "DefaultAction" => %{"shape" => "WafAction"}, "Updates" => %{"shape" => "WebACLUpdates"}, "WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId", "ChangeToken"], "type" => "structure"}, "TimeWindow" => %{"members" => %{"EndTime" => %{"shape" => "Timestamp"}, "StartTime" => %{"shape" => "Timestamp"}}, "required" => ["StartTime", "EndTime"], "type" => "structure"}, "ListRulesResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "Rules" => %{"shape" => "RuleSummaries"}}, "type" => "structure"}, "DeleteSqlInjectionMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "IPSetUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "IPSetDescriptor" => %{"shape" => "IPSetDescriptor"}}, "required" => ["Action", "IPSetDescriptor"], "type" => "structure"}, "RuleSummaries" => %{"member" => %{"shape" => "RuleSummary"}, "type" => "list"}, "WAFInternalErrorException" => %{"exception" => true, "fault" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ByteMatchTargetString" => %{"type" => "blob"}, "GetWebACLForResourceResponse" => %{"members" => %{"WebACLSummary" => %{"shape" => "WebACLSummary"}}, "type" => "structure"}, "HeaderValue" => %{"type" => "string"}, "GetRateBasedRuleManagedKeysRequest" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId"], "type" => "structure"}, "GetRateBasedRuleManagedKeysResponse" => %{"members" => %{"ManagedKeys" => %{"shape" => "ManagedKeys"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "CreateRateBasedRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}, "RateKey" => %{"shape" => "RateKey"}, "RateLimit" => %{"shape" => "RateLimit"}}, "required" => ["Name", "MetricName", "RateKey", "RateLimit", "ChangeToken"], "type" => "structure"}, "Action" => %{"type" => "string"}, "WebACLUpdates" => %{"member" => %{"shape" => "WebACLUpdate"}, "type" => "list"}, "errorMessage" => %{"type" => "string"}, "WAFInvalidParameterException" => %{"exception" => true, "members" => %{"field" => %{"shape" => "ParameterExceptionField"}, "parameter" => %{"shape" => "ParameterExceptionParameter"}, "reason" => %{"shape" => "ParameterExceptionReason"}}, "type" => "structure"}, "CreateRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "MetricName", "ChangeToken"], "type" => "structure"}, "WebACL" => %{"members" => %{"DefaultAction" => %{"shape" => "WafAction"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}, "Rules" => %{"shape" => "ActivatedRules"}, "WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId", "DefaultAction", "Rules"], "type" => "structure"}, "GetChangeTokenStatusRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "required" => ["ChangeToken"], "type" => "structure"}, "ResourceArns" => %{"member" => %{"shape" => "ResourceArn"}, "type" => "list"}, "ByteMatchSetUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "ByteMatchTuple" => %{"shape" => "ByteMatchTuple"}}, "required" => ["Action", "ByteMatchTuple"], "type" => "structure"}, "ChangeTokenStatus" => %{"enum" => ["PROVISIONED", "PENDING", "INSYNC"], "type" => "string"}, "UpdateXssMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Updates" => %{"shape" => "XssMatchSetUpdates"}, "XssMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["XssMatchSetId", "ChangeToken", "Updates"], "type" => "structure"}, "CreateRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Rule" => %{"shape" => "Rule"}}, "type" => "structure"}, "CreateByteMatchSetResponse" => %{"members" => %{"ByteMatchSet" => %{"shape" => "ByteMatchSet"}, "ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "PredicateType" => %{"enum" => ["IPMatch", "ByteMatch", "SqlInjectionMatch", "SizeConstraint", "XssMatch"], "type" => "string"}, "ByteMatchSetSummary" => %{"members" => %{"ByteMatchSetId" => %{"shape" => "ResourceId"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["ByteMatchSetId", "Name"], "type" => "structure"}, "WAFDisallowedNameException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteWebACLRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId", "ChangeToken"], "type" => "structure"}, "GetRateBasedRuleRequest" => %{"members" => %{"RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "GetIPSetRequest" => %{"members" => %{"IPSetId" => %{"shape" => "ResourceId"}}, "required" => ["IPSetId"], "type" => "structure"}, "CreateSizeConstraintSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "ChangeToken"], "type" => "structure"}, "Country" => %{"type" => "string"}, "ActivatedRules" => %{"member" => %{"shape" => "ActivatedRule"}, "type" => "list"}, "ActivatedRule" => %{"members" => %{"Action" => %{"shape" => "WafAction"}, "Priority" => %{"shape" => "RulePriority"}, "RuleId" => %{"shape" => "ResourceId"}, "Type" => %{"shape" => "WafRuleType"}}, "required" => ["Priority", "RuleId", "Action"], "type" => "structure"}, "ManagedKeys" => %{"member" => %{"shape" => "ManagedKey"}, "type" => "list"}, "Negated" => %{"type" => "boolean"}, "HTTPMethod" => %{"type" => "string"}, "WAFNonEmptyEntityException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "XssMatchSetSummary" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "XssMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["XssMatchSetId", "Name"], "type" => "structure"}, "AssociateWebACLResponse" => %{"members" => %{}, "type" => "structure"}, "HeaderName" => %{"type" => "string"}, "CreateIPSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "ChangeToken"], "type" => "structure"}, "ListWebACLsResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "WebACLs" => %{"shape" => "WebACLSummaries"}}, "type" => "structure"}, "CreateXssMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "XssMatchSet" => %{"shape" => "XssMatchSet"}}, "type" => "structure"}, "CreateSizeConstraintSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SizeConstraintSet" => %{"shape" => "SizeConstraintSet"}}, "type" => "structure"}, "MetricName" => %{"type" => "string"}, "RuleUpdates" => %{"member" => %{"shape" => "RuleUpdate"}, "type" => "list"}, "IPSetDescriptorType" => %{"enum" => ["IPV4", "IPV6"], "type" => "string"}, "IPSet" => %{"members" => %{"IPSetDescriptors" => %{"shape" => "IPSetDescriptors"}, "IPSetId" => %{"shape" => "ResourceId"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["IPSetId", "IPSetDescriptors"], "type" => "structure"}, "UpdateIPSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "HTTPHeaders" => %{"member" => %{"shape" => "HTTPHeader"}, "type" => "list"}, "UpdateByteMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "WebACLUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "ActivatedRule" => %{"shape" => "ActivatedRule"}}, "required" => ["Action", "ActivatedRule"], "type" => "structure"}, "PositionalConstraint" => %{"enum" => ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], "type" => "string"}, "SampledHTTPRequest" => %{"members" => %{"Action" => %{"shape" => "Action"}, "Request" => %{"shape" => "HTTPRequest"}, "Timestamp" => %{"shape" => "Timestamp"}, "Weight" => %{"shape" => "SampleWeight"}}, "required" => ["Request", "Weight"], "type" => "structure"}, "UpdateSizeConstraintSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "SizeConstraintSetId" => %{"shape" => "ResourceId"}, "Updates" => %{"shape" => "SizeConstraintSetUpdates"}}, "required" => ["SizeConstraintSetId", "ChangeToken", "Updates"], "type" => "structure"}, "XssMatchSetUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "XssMatchTuple" => %{"shape" => "XssMatchTuple"}}, "required" => ["Action", "XssMatchTuple"], "type" => "structure"}, "GetIPSetResponse" => %{"members" => %{"IPSet" => %{"shape" => "IPSet"}}, "type" => "structure"}, "DisassociateWebACLRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}}, "required" => ["ResourceArn"], "type" => "structure"}, "MatchFieldType" => %{"enum" => ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY"], "type" => "string"}, "RuleUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "Predicate" => %{"shape" => "Predicate"}}, "required" => ["Action", "Predicate"], "type" => "structure"}, "GetChangeTokenStatusResponse" => %{"members" => %{"ChangeTokenStatus" => %{"shape" => "ChangeTokenStatus"}}, "type" => "structure"}, "ListResourcesForWebACLResponse" => %{"members" => %{"ResourceArns" => %{"shape" => "ResourceArns"}}, "type" => "structure"}, "PaginationLimit" => %{"max" => 100, "min" => 0, "type" => "integer"}, "UpdateByteMatchSetRequest" => %{"members" => %{"ByteMatchSetId" => %{"shape" => "ResourceId"}, "ChangeToken" => %{"shape" => "ChangeToken"}, "Updates" => %{"shape" => "ByteMatchSetUpdates"}}, "required" => ["ByteMatchSetId", "ChangeToken", "Updates"], "type" => "structure"}, "CreateWebACLResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "WebACL" => %{"shape" => "WebACL"}}, "type" => "structure"}, "FieldToMatch" => %{"members" => %{"Data" => %{"shape" => "MatchFieldData"}, "Type" => %{"shape" => "MatchFieldType"}}, "required" => ["Type"], "type" => "structure"}, "RateBasedRule" => %{"members" => %{"MatchPredicates" => %{"shape" => "Predicates"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}, "RateKey" => %{"shape" => "RateKey"}, "RateLimit" => %{"shape" => "RateLimit"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId", "MatchPredicates", "RateKey", "RateLimit"], "type" => "structure"}, "DeleteRateBasedRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId", "ChangeToken"], "type" => "structure"}, "ResourceId" => %{"max" => 128, "min" => 1, "type" => "string"}, "ResourceArn" => %{"max" => 1224, "min" => 1, "type" => "string"}, "ComparisonOperator" => %{"enum" => ["EQ", "NE", "LE", "LT", "GE", "GT"], "type" => "string"}, "SqlInjectionMatchSetSummary" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "SqlInjectionMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["SqlInjectionMatchSetId", "Name"], "type" => "structure"}, "WAFUnavailableEntityException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "ParameterExceptionReason" => %{"enum" => ["INVALID_OPTION", "ILLEGAL_COMBINATION"], "type" => "string"}, "Predicate" => %{"members" => %{"DataId" => %{"shape" => "ResourceId"}, "Negated" => %{"shape" => "Negated"}, "Type" => %{"shape" => "PredicateType"}}, "required" => ["Negated", "Type", "DataId"], "type" => "structure"}, "TextTransformation" => %{"enum" => ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], "type" => "string"}, "SqlInjectionMatchTuple" => %{"members" => %{"FieldToMatch" => %{"shape" => "FieldToMatch"}, "TextTransformation" => %{"shape" => "TextTransformation"}}, "required" => ["FieldToMatch", "TextTransformation"], "type" => "structure"}, "GetChangeTokenRequest" => %{"members" => %{}, "type" => "structure"}, "CreateWebACLRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "DefaultAction" => %{"shape" => "WafAction"}, "MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "MetricName", "DefaultAction", "ChangeToken"], "type" => "structure"}, "DisassociateWebACLResponse" => %{"members" => %{}, "type" => "structure"}, "UpdateRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "RuleId" => %{"shape" => "ResourceId"}, "Updates" => %{"shape" => "RuleUpdates"}}, "required" => ["RuleId", "ChangeToken", "Updates"], "type" => "structure"}, "GetSqlInjectionMatchSetRequest" => %{"members" => %{"SqlInjectionMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["SqlInjectionMatchSetId"], "type" => "structure"}, "GetRateBasedRuleResponse" => %{"members" => %{"Rule" => %{"shape" => "RateBasedRule"}}, "type" => "structure"}, "DeleteRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "IPString" => %{"type" => "string"}, "IPSetDescriptorValue" => %{"type" => "string"}, "GetWebACLForResourceRequest" => %{"members" => %{"ResourceArn" => %{"shape" => "ResourceArn"}}, "required" => ["ResourceArn"], "type" => "structure"}, "RateKey" => %{"enum" => ["IP"], "type" => "string"}, "WAFInvalidAccountException" => %{"exception" => true, "members" => %{}, "type" => "structure"}, "SqlInjectionMatchSetUpdate" => %{"members" => %{"Action" => %{"shape" => "ChangeAction"}, "SqlInjectionMatchTuple" => %{"shape" => "SqlInjectionMatchTuple"}}, "required" => ["Action", "SqlInjectionMatchTuple"], "type" => "structure"}, "ListWebACLsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "ListSizeConstraintSetsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "PopulationSize" => %{"type" => "long"}, "WafActionType" => %{"enum" => ["BLOCK", "ALLOW", "COUNT"], "type" => "string"}, "ByteMatchSetUpdates" => %{"member" => %{"shape" => "ByteMatchSetUpdate"}, "type" => "list"}, "UpdateSizeConstraintSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "GetByteMatchSetRequest" => %{"members" => %{"ByteMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["ByteMatchSetId"], "type" => "structure"}, "SizeConstraintSetSummaries" => %{"member" => %{"shape" => "SizeConstraintSetSummary"}, "type" => "list"}, "ListRateBasedRulesResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "Rules" => %{"shape" => "RuleSummaries"}}, "type" => "structure"}, "DeleteRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId", "ChangeToken"], "type" => "structure"}, "XssMatchSetSummaries" => %{"member" => %{"shape" => "XssMatchSetSummary"}, "type" => "list"}, "UpdateRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "HTTPHeader" => %{"members" => %{"Name" => %{"shape" => "HeaderName"}, "Value" => %{"shape" => "HeaderValue"}}, "type" => "structure"}, "Rule" => %{"members" => %{"MetricName" => %{"shape" => "MetricName"}, "Name" => %{"shape" => "ResourceName"}, "Predicates" => %{"shape" => "Predicates"}, "RuleId" => %{"shape" => "ResourceId"}}, "required" => ["RuleId", "Predicates"], "type" => "structure"}, "ListIPSetsResponse" => %{"members" => %{"IPSets" => %{"shape" => "IPSetSummaries"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "WAFReferencedItemException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "SqlInjectionMatchSetUpdates" => %{"member" => %{"shape" => "SqlInjectionMatchSetUpdate"}, "type" => "list"}, "WAFInvalidOperationException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "DeleteXssMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "SampleWeight" => %{"min" => 0, "type" => "long"}, "WAFLimitsExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "WafRuleType" => %{"enum" => ["REGULAR", "RATE_BASED"], "type" => "string"}, "GetXssMatchSetRequest" => %{"members" => %{"XssMatchSetId" => %{"shape" => "ResourceId"}}, "required" => ["XssMatchSetId"], "type" => "structure"}, "IPSetUpdates" => %{"member" => %{"shape" => "IPSetUpdate"}, "type" => "list"}, "GetWebACLResponse" => %{"members" => %{"WebACL" => %{"shape" => "WebACL"}}, "type" => "structure"}, "GetRuleResponse" => %{"members" => %{"Rule" => %{"shape" => "Rule"}}, "type" => "structure"}, "SqlInjectionMatchSetSummaries" => %{"member" => %{"shape" => "SqlInjectionMatchSetSummary"}, "type" => "list"}, "WAFStaleDataException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "errorMessage"}}, "type" => "structure"}, "GetSqlInjectionMatchSetResponse" => %{"members" => %{"SqlInjectionMatchSet" => %{"shape" => "SqlInjectionMatchSet"}}, "type" => "structure"}, "XssMatchTuple" => %{"members" => %{"FieldToMatch" => %{"shape" => "FieldToMatch"}, "TextTransformation" => %{"shape" => "TextTransformation"}}, "required" => ["FieldToMatch", "TextTransformation"], "type" => "structure"}, "CreateByteMatchSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Name" => %{"shape" => "ResourceName"}}, "required" => ["Name", "ChangeToken"], "type" => "structure"}, "ListXssMatchSetsResponse" => %{"members" => %{"NextMarker" => %{"shape" => "NextMarker"}, "XssMatchSets" => %{"shape" => "XssMatchSetSummaries"}}, "type" => "structure"}, "UpdateIPSetRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "IPSetId" => %{"shape" => "ResourceId"}, "Updates" => %{"shape" => "IPSetUpdates"}}, "required" => ["IPSetId", "ChangeToken", "Updates"], "type" => "structure"}, "UpdateWebACLResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "ResourceName" => %{"max" => 128, "min" => 1, "type" => "string"}, "SizeConstraint" => %{"members" => %{"ComparisonOperator" => %{"shape" => "ComparisonOperator"}, "FieldToMatch" => %{"shape" => "FieldToMatch"}, "Size" => %{"shape" => "Size"}, "TextTransformation" => %{"shape" => "TextTransformation"}}, "required" => ["FieldToMatch", "TextTransformation", "ComparisonOperator", "Size"], "type" => "structure"}, "RateLimit" => %{"min" => 2000, "type" => "long"}, "IPSetDescriptors" => %{"member" => %{"shape" => "IPSetDescriptor"}, "type" => "list"}, "WebACLSummaries" => %{"member" => %{"shape" => "WebACLSummary"}, "type" => "list"}, "WafAction" => %{"members" => %{"Type" => %{"shape" => "WafActionType"}}, "required" => ["Type"], "type" => "structure"}, "ByteMatchTuples" => %{"member" => %{"shape" => "ByteMatchTuple"}, "type" => "list"}, "UpdateRateBasedRuleRequest" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "RateLimit" => %{"shape" => "RateLimit"}, "RuleId" => %{"shape" => "ResourceId"}, "Updates" => %{"shape" => "RuleUpdates"}}, "required" => ["RuleId", "ChangeToken", "Updates", "RateLimit"], "type" => "structure"}, "ByteMatchTuple" => %{"members" => %{"FieldToMatch" => %{"shape" => "FieldToMatch"}, "PositionalConstraint" => %{"shape" => "PositionalConstraint"}, "TargetString" => %{"shape" => "ByteMatchTargetString"}, "TextTransformation" => %{"shape" => "TextTransformation"}}, "required" => ["FieldToMatch", "TargetString", "TextTransformation", "PositionalConstraint"], "type" => "structure"}, "ListByteMatchSetsRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "SizeConstraintSet" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "SizeConstraintSetId" => %{"shape" => "ResourceId"}, "SizeConstraints" => %{"shape" => "SizeConstraints"}}, "required" => ["SizeConstraintSetId", "SizeConstraints"], "type" => "structure"}, "CreateRateBasedRuleResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}, "Rule" => %{"shape" => "RateBasedRule"}}, "type" => "structure"}, "XssMatchSet" => %{"members" => %{"Name" => %{"shape" => "ResourceName"}, "XssMatchSetId" => %{"shape" => "ResourceId"}, "XssMatchTuples" => %{"shape" => "XssMatchTuples"}}, "required" => ["XssMatchSetId", "XssMatchTuples"], "type" => "structure"}, "ListRateBasedRulesRequest" => %{"members" => %{"Limit" => %{"shape" => "PaginationLimit"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "GetSampledRequestsMaxItems" => %{"max" => 500, "min" => 1, "type" => "long"}, "ListResourcesForWebACLRequest" => %{"members" => %{"WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId"], "type" => "structure"}, "RulePriority" => %{"type" => "integer"}, "GetWebACLRequest" => %{"members" => %{"WebACLId" => %{"shape" => "ResourceId"}}, "required" => ["WebACLId"], "type" => "structure"}, "ListByteMatchSetsResponse" => %{"members" => %{"ByteMatchSets" => %{"shape" => "ByteMatchSetSummaries"}, "NextMarker" => %{"shape" => "NextMarker"}}, "type" => "structure"}, "UpdateSqlInjectionMatchSetResponse" => %{"members" => %{"ChangeToken" => %{"shape" => "ChangeToken"}}, "type" => "structure"}, "Predicates" => %{"member" => %{"shape" => "Predicate"}, "type" => "list"}}
  end
end