defmodule Baiji.MTurk do
  @moduledoc """
  Amazon Mechanical Turk API Reference
  """

  @doc """
  The `ApproveAssignment` operation approves the results of a completed
  assignment.

  Approving an assignment initiates two payments from the Requester's
  Amazon.com account

  <ul> <li> The Worker who submitted the results is paid the reward specified
  in the HIT.

  </li> <li> Amazon Mechanical Turk fees are debited.

  </li> </ul> If the Requester's account does not have adequate funds for
  these payments, the call to ApproveAssignment returns an exception, and the
  approval is not processed. You can include an optional feedback message
  with the approval, which the Worker can see in the Status section of the
  web site.

  You can also call this operation for assignments that were previous
  rejected and approve them by explicitly overriding the previous rejection.
  This only works on rejected assignments that were submitted within the
  previous 30 days and only if the assignment's related HIT has not been
  deleted.
  """
  def approve_assignment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ApproveAssignment",
      method:           :post,
      input_shape:      "ApproveAssignmentRequest",
      output_shape:     "ApproveAssignmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DisassociateQualificationFromWorker` revokes a previously granted
  Qualification from a user.

  You can provide a text message explaining why the Qualification was
  revoked. The user who had the Qualification can see this message.
  """
  def disassociate_qualification_from_worker(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DisassociateQualificationFromWorker",
      method:           :post,
      input_shape:      "DisassociateQualificationFromWorkerRequest",
      output_shape:     "DisassociateQualificationFromWorkerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateHIT` operation creates a new Human Intelligence Task (HIT). The
  new HIT is made available for Workers to find and accept on the Amazon
  Mechanical Turk website.

  This operation allows you to specify a new HIT by passing in values for the
  properties of the HIT, such as its title, reward amount and number of
  assignments. When you pass these values to `CreateHIT`, a new HIT is
  created for you, with a new `HITTypeID`. The HITTypeID can be used to
  create additional HITs in the future without needing to specify common
  parameters such as the title, description and reward amount each time.

  An alternative way to create HITs is to first generate a HITTypeID using
  the `CreateHITType` operation and then call the `CreateHITWithHITType`
  operation. This is the recommended best practice for Requesters who are
  creating large numbers of HITs.

  CreateHIT also supports several ways to provide question data: by providing
  a value for the `Question` parameter that fully specifies the contents of
  the HIT, or by providing a `HitLayoutId` and associated
  `HitLayoutParameters`.

  <note> If a HIT is created with 10 or more maximum assignments, there is an
  additional fee. For more information, see [Amazon Mechanical Turk
  Pricing](https://requester.mturk.com/pricing).

  </note>
  """
  def create_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateHIT",
      method:           :post,
      input_shape:      "CreateHITRequest",
      output_shape:     "CreateHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `NotifyWorkers` operation sends an email to one or more Workers that
  you specify with the Worker ID. You can specify up to 100 Worker IDs to
  send the same message with a single call to the NotifyWorkers operation.
  The NotifyWorkers operation will send a notification email to a Worker only
  if you have previously approved or rejected work from the Worker.
  """
  def notify_workers(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "NotifyWorkers",
      method:           :post,
      input_shape:      "NotifyWorkersRequest",
      output_shape:     "NotifyWorkersResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListQualificationRequests` operation retrieves requests for
  Qualifications of a particular Qualification type. The owner of the
  Qualification type calls this operation to poll for pending requests, and
  accepts them using the AcceptQualification operation.
  """
  def list_qualification_requests(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListQualificationRequests",
      method:           :post,
      input_shape:      "ListQualificationRequestsRequest",
      output_shape:     "ListQualificationRequestsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListQualificationRequests` operation retrieves requests for
  Qualifications of a particular Qualification type. The owner of the
  Qualification type calls this operation to poll for pending requests, and
  accepts them using the AcceptQualification operation.
  """
  def list_qualification_types(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListQualificationTypes",
      method:           :post,
      input_shape:      "ListQualificationTypesRequest",
      output_shape:     "ListQualificationTypesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateHITWithHITType` operation creates a new Human Intelligence Task
  (HIT) using an existing HITTypeID generated by the `CreateHITType`
  operation.

  This is an alternative way to create HITs from the `CreateHIT` operation.
  This is the recommended best practice for Requesters who are creating large
  numbers of HITs.

  CreateHITWithHITType also supports several ways to provide question data:
  by providing a value for the `Question` parameter that fully specifies the
  contents of the HIT, or by providing a `HitLayoutId` and associated
  `HitLayoutParameters`.

  <note> If a HIT is created with 10 or more maximum assignments, there is an
  additional fee. For more information, see [Amazon Mechanical Turk
  Pricing](https://requester.mturk.com/pricing).

  </note>
  """
  def create_h_i_t_with_h_i_t_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateHITWithHITType",
      method:           :post,
      input_shape:      "CreateHITWithHITTypeRequest",
      output_shape:     "CreateHITWithHITTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `AssociateQualificationWithWorker` operation gives a Worker a
  Qualification. `AssociateQualificationWithWorker` does not require that the
  Worker submit a Qualification request. It gives the Qualification directly
  to the Worker.

  You can only assign a Qualification of a Qualification type that you
  created (using the `CreateQualificationType` operation).

  <note> Note: `AssociateQualificationWithWorker` does not affect any pending
  Qualification requests for the Qualification by the Worker. If you assign a
  Qualification to a Worker, then later grant a Qualification request made by
  the Worker, the granting of the request may modify the Qualification score.
  To resolve a pending Qualification request without affecting the
  Qualification the Worker already has, reject the request with the
  `RejectQualificationRequest` operation.

  </note>
  """
  def associate_qualification_with_worker(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AssociateQualificationWithWorker",
      method:           :post,
      input_shape:      "AssociateQualificationWithWorkerRequest",
      output_shape:     "AssociateQualificationWithWorkerResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetAccountBalance` operation retrieves the amount of money in your
  Amazon Mechanical Turk account.
  """
  def get_account_balance(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAccountBalance",
      method:           :post,
      input_shape:      "GetAccountBalanceRequest",
      output_shape:     "GetAccountBalanceResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListWorkersBlocks` operation retrieves a list of Workers who are
  blocked from working on your HITs.
  """
  def list_worker_blocks(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListWorkerBlocks",
      method:           :post,
      input_shape:      "ListWorkerBlocksRequest",
      output_shape:     "ListWorkerBlocksResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListWorkersWithQualificationType` operation returns all of the Workers
  that have been associated with a given Qualification type.
  """
  def list_workers_with_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListWorkersWithQualificationType",
      method:           :post,
      input_shape:      "ListWorkersWithQualificationTypeRequest",
      output_shape:     "ListWorkersWithQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListReviewPolicyResultsForHIT` operation retrieves the computed
  results and the actions taken in the course of executing your Review
  Policies for a given HIT. For information about how to specify Review
  Policies when you call CreateHIT, see Review Policies. The
  ListReviewPolicyResultsForHIT operation can return results for both
  Assignment-level and HIT-level review results.
  """
  def list_review_policy_results_for_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListReviewPolicyResultsForHIT",
      method:           :post,
      input_shape:      "ListReviewPolicyResultsForHITRequest",
      output_shape:     "ListReviewPolicyResultsForHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetHIT` operation retrieves the details of the specified HIT.
  """
  def get_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetHIT",
      method:           :post,
      input_shape:      "GetHITRequest",
      output_shape:     "GetHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `RejectAssignment` operation rejects the results of a completed
  assignment.

  You can include an optional feedback message with the rejection, which the
  Worker can see in the Status section of the web site. When you include a
  feedback message with the rejection, it helps the Worker understand why the
  assignment was rejected, and can improve the quality of the results the
  Worker submits in the future.

  Only the Requester who created the HIT can reject an assignment for the
  HIT.
  """
  def reject_assignment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RejectAssignment",
      method:           :post,
      input_shape:      "RejectAssignmentRequest",
      output_shape:     "RejectAssignmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListBonusPayments` operation retrieves the amounts of bonuses you have
  paid to Workers for a given HIT or assignment.
  """
  def list_bonus_payments(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListBonusPayments",
      method:           :post,
      input_shape:      "ListBonusPaymentsRequest",
      output_shape:     "ListBonusPaymentsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateWorkerBlock` operation allows you to prevent a Worker from
  working on your HITs. For example, you can block a Worker who is producing
  poor quality work. You can block up to 100,000 Workers.
  """
  def create_worker_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateWorkerBlock",
      method:           :post,
      input_shape:      "CreateWorkerBlockRequest",
      output_shape:     "CreateWorkerBlockResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DeleteHIT` operation is used to delete HIT that is no longer needed.
  Only the Requester who created the HIT can delete it.

  You can only dispose of HITs that are in the `Reviewable` state, with all
  of their submitted assignments already either approved or rejected. If you
  call the DeleteHIT operation on a HIT that is not in the `Reviewable` state
  (for example, that has not expired, or still has active assignments), or on
  a HIT that is Reviewable but without all of its submitted assignments
  already approved or rejected, the service will return an error.

  <note> <ul> <li> HITs are automatically disposed of after 120 days.

  </li> <li> After you dispose of a HIT, you can no longer approve the HIT's
  rejected assignments.

  </li> <li> Disposed HITs are not returned in results for the ListHITs
  operation.

  </li> <li> Disposing HITs can improve the performance of operations such as
  ListReviewableHITs and ListHITs.

  </li> </ul> </note>
  """
  def delete_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteHIT",
      method:           :post,
      input_shape:      "DeleteHITRequest",
      output_shape:     "DeleteHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `UpdateHITReviewStatus` operation updates the status of a HIT. If the
  status is Reviewable, this operation can update the status to Reviewing, or
  it can revert a Reviewing HIT back to the Reviewable status.
  """
  def update_h_i_t_review_status(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateHITReviewStatus",
      method:           :post,
      input_shape:      "UpdateHITReviewStatusRequest",
      output_shape:     "UpdateHITReviewStatusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetQualificationType`operation retrieves information about a
  Qualification type using its ID.
  """
  def get_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQualificationType",
      method:           :post,
      input_shape:      "GetQualificationTypeRequest",
      output_shape:     "GetQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetAssignment` operation retrieves the details of the specified
  Assignment.
  """
  def get_assignment(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetAssignment",
      method:           :post,
      input_shape:      "GetAssignmentRequest",
      output_shape:     "GetAssignmentResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `SendBonus` operation issues a payment of money from your account to a
  Worker. This payment happens separately from the reward you pay to the
  Worker when you approve the Worker's assignment. The SendBonus operation
  requires the Worker's ID and the assignment ID as parameters to initiate
  payment of the bonus. You must include a message that explains the reason
  for the bonus payment, as the Worker may not be expecting the payment.
  Amazon Mechanical Turk collects a fee for bonus payments, similar to the
  HIT listing fee. This operation fails if your account does not have enough
  funds to pay for both the bonus and the fees.
  """
  def send_bonus(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendBonus",
      method:           :post,
      input_shape:      "SendBonusRequest",
      output_shape:     "SendBonusResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateHITType` operation creates a new HIT type. This operation allows
  you to define a standard set of HIT properties to use when creating HITs.
  If you register a HIT type with values that match an existing HIT type, the
  HIT type ID of the existing type will be returned.
  """
  def create_h_i_t_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateHITType",
      method:           :post,
      input_shape:      "CreateHITTypeRequest",
      output_shape:     "CreateHITTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `UpdateQualificationType` operation modifies the attributes of an
  existing Qualification type, which is represented by a QualificationType
  data structure. Only the owner of a Qualification type can modify its
  attributes.

  Most attributes of a Qualification type can be changed after the type has
  been created. However, the Name and Keywords fields cannot be modified. The
  RetryDelayInSeconds parameter can be modified or added to change the delay
  or to enable retries, but RetryDelayInSeconds cannot be used to disable
  retries.

  You can use this operation to update the test for a Qualification type. The
  test is updated based on the values specified for the Test,
  TestDurationInSeconds and AnswerKey parameters. All three parameters
  specify the updated test. If you are updating the test for a type, you must
  specify the Test and TestDurationInSeconds parameters. The AnswerKey
  parameter is optional; omitting it specifies that the updated test does not
  have an answer key.

  If you omit the Test parameter, the test for the Qualification type is
  unchanged. There is no way to remove a test from a Qualification type that
  has one. If the type already has a test, you cannot update it to be
  AutoGranted. If the Qualification type does not have a test and one is
  provided by an update, the type will henceforth have a test.

  If you want to update the test duration or answer key for an existing test
  without changing the questions, you must specify a Test parameter with the
  original questions, along with the updated values.

  If you provide an updated Test but no AnswerKey, the new test will not have
  an answer key. Requests for such Qualifications must be granted manually.

  You can also update the AutoGranted and AutoGrantedValue attributes of the
  Qualification type.
  """
  def update_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateQualificationType",
      method:           :post,
      input_shape:      "UpdateQualificationTypeRequest",
      output_shape:     "UpdateQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `RejectQualificationRequest` operation rejects a user's request for a
  Qualification.

  You can provide a text message explaining why the request was rejected. The
  Worker who made the request can see this message.
  """
  def reject_qualification_request(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RejectQualificationRequest",
      method:           :post,
      input_shape:      "RejectQualificationRequestRequest",
      output_shape:     "RejectQualificationRequestResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetQualificationScore` operation returns the value of a Worker's
  Qualification for a given Qualification type.

  To get a Worker's Qualification, you must know the Worker's ID. The
  Worker's ID is included in the assignment data returned by the
  `ListAssignmentsForHIT` operation.

  Only the owner of a Qualification type can query the value of a Worker's
  Qualification of that type.
  """
  def get_qualification_score(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetQualificationScore",
      method:           :post,
      input_shape:      "GetQualificationScoreRequest",
      output_shape:     "GetQualificationScoreResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListHITsForQualificationType` operation returns the HITs that use the
  given Qualification type for a Qualification requirement. The operation
  returns HITs of any status, except for HITs that have been deleted with the
  `DeleteHIT` operation or that have been auto-deleted.
  """
  def list_h_i_ts_for_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListHITsForQualificationType",
      method:           :post,
      input_shape:      "ListHITsForQualificationTypeRequest",
      output_shape:     "ListHITsForQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateAdditionalAssignmentsForHIT` operation increases the maximum
  number of assignments of an existing HIT.

  To extend the maximum number of assignments, specify the number of
  additional assignments.

  <note> <ul> <li> HITs created with fewer than 10 assignments cannot be
  extended to have 10 or more assignments. Attempting to add assignments in a
  way that brings the total number of assignments for a HIT from fewer than
  10 assignments to 10 or more assignments will result in an
  `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease` exception.

  </li> <li> HITs that were created before July 22, 2015 cannot be extended.
  Attempting to extend HITs that were created before July 22, 2015 will
  result in an `AWS.MechanicalTurk.HITTooOldForExtension` exception.

  </li> </ul> </note>
  """
  def create_additional_assignments_for_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateAdditionalAssignmentsForHIT",
      method:           :post,
      input_shape:      "CreateAdditionalAssignmentsForHITRequest",
      output_shape:     "CreateAdditionalAssignmentsForHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DeleteQualificationType` deletes a Qualification type and deletes any
  HIT types that are associated with the Qualification type.

  This operation does not revoke Qualifications already assigned to Workers
  because the Qualifications might be needed for active HITs. If there are
  any pending requests for the Qualification type, Amazon Mechanical Turk
  rejects those requests. After you delete a Qualification type, you can no
  longer use it to create HITs or HIT types.

  <note> DeleteQualificationType must wait for all the HITs that use the
  deleted Qualification type to be deleted before completing. It may take up
  to 48 hours before DeleteQualificationType completes and the unique name of
  the Qualification type is available for reuse with CreateQualificationType.

  </note>
  """
  def delete_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteQualificationType",
      method:           :post,
      input_shape:      "DeleteQualificationTypeRequest",
      output_shape:     "DeleteQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `DeleteWorkerBlock` operation allows you to reinstate a blocked Worker
  to work on your HITs. This operation reverses the effects of the
  CreateWorkerBlock operation. You need the Worker ID to use this operation.
  If the Worker ID is missing or invalid, this operation fails and returns
  the message “WorkerId is invalid.” If the specified Worker is not blocked,
  this operation returns successfully.
  """
  def delete_worker_block(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteWorkerBlock",
      method:           :post,
      input_shape:      "DeleteWorkerBlockRequest",
      output_shape:     "DeleteWorkerBlockResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListHITs` operation returns all of a Requester's HITs. The operation
  returns HITs of any status, except for HITs that have been deleted of with
  the DeleteHIT operation or that have been auto-deleted.
  """
  def list_h_i_ts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListHITs",
      method:           :post,
      input_shape:      "ListHITsRequest",
      output_shape:     "ListHITsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListAssignmentsForHIT` operation retrieves completed assignments for a
  HIT. You can use this operation to retrieve the results for a HIT.

  You can get assignments for a HIT at any time, even if the HIT is not yet
  Reviewable. If a HIT requested multiple assignments, and has received some
  results but has not yet become Reviewable, you can still retrieve the
  partial results with this operation.

  Use the AssignmentStatus parameter to control which set of assignments for
  a HIT are returned. The ListAssignmentsForHIT operation can return
  submitted assignments awaiting approval, or it can return assignments that
  have already been approved or rejected. You can set
  AssignmentStatus=Approved,Rejected to get assignments that have already
  been approved and rejected together in one result set.

  Only the Requester who created the HIT can retrieve the assignments for
  that HIT.

  Results are sorted and divided into numbered pages and the operation
  returns a single page of results. You can use the parameters of the
  operation to control sorting and pagination.
  """
  def list_assignments_for_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListAssignmentsForHIT",
      method:           :post,
      input_shape:      "ListAssignmentsForHITRequest",
      output_shape:     "ListAssignmentsForHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `AcceptQualificationRequest` operation approves a Worker's request for
  a Qualification.

  Only the owner of the Qualification type can grant a Qualification request
  for that type.

  A successful request for the `AcceptQualificationRequest` operation returns
  with no errors and an empty body.
  """
  def accept_qualification_request(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AcceptQualificationRequest",
      method:           :post,
      input_shape:      "AcceptQualificationRequestRequest",
      output_shape:     "AcceptQualificationRequestResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `UpdateExpirationForHIT` operation allows you update the expiration
  time of a HIT. If you update it to a time in the past, the HIT will be
  immediately expired.
  """
  def update_expiration_for_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateExpirationForHIT",
      method:           :post,
      input_shape:      "UpdateExpirationForHITRequest",
      output_shape:     "UpdateExpirationForHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `ListReviewableHITs` operation retrieves the HITs with Status equal to
  Reviewable or Status equal to Reviewing that belong to the Requester
  calling the operation.
  """
  def list_reviewable_h_i_ts(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListReviewableHITs",
      method:           :post,
      input_shape:      "ListReviewableHITsRequest",
      output_shape:     "ListReviewableHITsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `GetFileUploadURL` operation generates and returns a temporary URL. You
  use the temporary URL to retrieve a file uploaded by a Worker as an answer
  to a FileUploadAnswer question for a HIT. The temporary URL is generated
  the instant the GetFileUploadURL operation is called, and is valid for 60
  seconds. You can get a temporary file upload URL any time until the HIT is
  disposed. After the HIT is disposed, any uploaded files are deleted, and
  cannot be retrieved.
  """
  def get_file_upload_u_r_l(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetFileUploadURL",
      method:           :post,
      input_shape:      "GetFileUploadURLRequest",
      output_shape:     "GetFileUploadURLResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `UpdateNotificationSettings` operation creates, updates, disables or
  re-enables notifications for a HIT type. If you call the
  UpdateNotificationSettings operation for a HIT type that already has a
  notification specification, the operation replaces the old specification
  with a new one. You can call the UpdateNotificationSettings operation to
  enable or disable notifications for the HIT type, without having to modify
  the notification specification itself by providing updates to the Active
  status without specifying a new notification specification. To change the
  Active status of a HIT type's notifications, the HIT type must already have
  a notification specification, or one must be provided in the same call to
  `UpdateNotificationSettings`.
  """
  def update_notification_settings(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateNotificationSettings",
      method:           :post,
      input_shape:      "UpdateNotificationSettingsRequest",
      output_shape:     "UpdateNotificationSettingsResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `CreateQualificationType` operation creates a new Qualification type,
  which is represented by a `QualificationType` data structure.
  """
  def create_qualification_type(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "CreateQualificationType",
      method:           :post,
      input_shape:      "CreateQualificationTypeRequest",
      output_shape:     "CreateQualificationTypeResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `UpdateHITTypeOfHIT` operation allows you to change the HITType
  properties of a HIT. This operation disassociates the HIT from its old
  HITType properties and associates it with the new HITType properties. The
  HIT takes on the properties of the new HITType in place of the old ones.
  """
  def update_h_i_t_type_of_h_i_t(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "UpdateHITTypeOfHIT",
      method:           :post,
      input_shape:      "UpdateHITTypeOfHITRequest",
      output_shape:     "UpdateHITTypeOfHITResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  The `SendTestEventNotification` operation causes Amazon Mechanical Turk to
  send a notification message as if a HIT event occurred, according to the
  provided notification specification. This allows you to test notifications
  without setting up notifications for a real HIT type and trying to trigger
  them using the website. When you call this operation, the service attempts
  to send the test notification immediately.
  """
  def send_test_event_notification(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "SendTestEventNotification",
      method:           :post,
      input_shape:      "SendTestEventNotificationRequest",
      output_shape:     "SendTestEventNotificationResponse",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "mturk-requester",
      target_prefix:    "MTurkRequesterServiceV20170117",
      endpoint_prefix:  "mturk-requester",
      type:             :json,
      version:          "2017-01-17",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"RejectQualificationRequestResponse" => %{"members" => %{}, "type" => "structure"}, "CustomerId" => %{"max" => 64, "min" => 1, "pattern" => "^A[A-Z0-9]+$", "type" => "string"}, "NotificationSpecification" => %{"members" => %{"Destination" => %{"shape" => "String"}, "EventTypes" => %{"shape" => "EventTypeList"}, "Transport" => %{"shape" => "NotificationTransport"}, "Version" => %{"shape" => "String"}}, "required" => ["Destination", "Transport"], "type" => "structure"}, "ListReviewPolicyResultsForHITRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}, "MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}, "PolicyLevels" => %{"shape" => "ReviewPolicyLevelList"}, "RetrieveActions" => %{"shape" => "Boolean"}, "RetrieveResults" => %{"shape" => "Boolean"}}, "required" => ["HITId"], "type" => "structure"}, "ResultSize" => %{"max" => 100, "min" => 1, "type" => "integer"}, "DeleteWorkerBlockResponse" => %{"members" => %{}, "type" => "structure"}, "AssignmentStatusList" => %{"member" => %{"shape" => "AssignmentStatus"}, "type" => "list"}, "SendBonusResponse" => %{"members" => %{}, "type" => "structure"}, "EntityId" => %{"max" => 64, "min" => 1, "pattern" => "^[A-Z0-9]+$", "type" => "string"}, "ListBonusPaymentsRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "HITId" => %{"shape" => "EntityId"}, "MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "DeleteHITRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}}, "required" => ["HITId"], "type" => "structure"}, "RejectQualificationRequestRequest" => %{"members" => %{"QualificationRequestId" => %{"shape" => "String"}, "Reason" => %{"shape" => "String"}}, "required" => ["QualificationRequestId"], "type" => "structure"}, "QualificationStatus" => %{"enum" => ["Granted", "Revoked"], "type" => "string"}, "QualificationType" => %{"members" => %{"AnswerKey" => %{"shape" => "String"}, "AutoGranted" => %{"shape" => "Boolean"}, "AutoGrantedValue" => %{"shape" => "Integer"}, "CreationTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "IsRequestable" => %{"shape" => "Boolean"}, "Keywords" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "QualificationTypeStatus" => %{"shape" => "QualificationTypeStatus"}, "RetryDelayInSeconds" => %{"shape" => "Long"}, "Test" => %{"shape" => "String"}, "TestDurationInSeconds" => %{"shape" => "Long"}}, "type" => "structure"}, "SendTestEventNotificationResponse" => %{"members" => %{}, "type" => "structure"}, "String" => %{"type" => "string"}, "QualificationRequirement" => %{"members" => %{"Comparator" => %{"shape" => "Comparator"}, "IntegerValues" => %{"shape" => "IntegerList"}, "LocaleValues" => %{"shape" => "LocaleList"}, "QualificationTypeId" => %{"shape" => "String"}, "RequiredToPreview" => %{"shape" => "Boolean"}}, "required" => ["QualificationTypeId", "Comparator"], "type" => "structure"}, "Boolean" => %{"type" => "boolean"}, "GetAccountBalanceRequest" => %{"members" => %{}, "type" => "structure"}, "ListHITsResponse" => %{"members" => %{"HITs" => %{"shape" => "HITList"}, "NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}}, "type" => "structure"}, "UpdateNotificationSettingsResponse" => %{"members" => %{}, "type" => "structure"}, "PolicyParameterList" => %{"member" => %{"shape" => "PolicyParameter"}, "type" => "list"}, "ReviewActionDetail" => %{"members" => %{"ActionId" => %{"shape" => "EntityId"}, "ActionName" => %{"shape" => "String"}, "CompleteTime" => %{"shape" => "Timestamp"}, "ErrorCode" => %{"shape" => "String"}, "Result" => %{"shape" => "String"}, "Status" => %{"shape" => "ReviewActionStatus"}, "TargetId" => %{"shape" => "EntityId"}, "TargetType" => %{"shape" => "String"}}, "type" => "structure"}, "ReviewableHITStatus" => %{"enum" => ["Reviewable", "Reviewing"], "type" => "string"}, "AcceptQualificationRequestRequest" => %{"members" => %{"IntegerValue" => %{"shape" => "Integer"}, "QualificationRequestId" => %{"shape" => "String"}}, "required" => ["QualificationRequestId"], "type" => "structure"}, "HITList" => %{"member" => %{"shape" => "HIT"}, "type" => "list"}, "ServiceFault" => %{"exception" => true, "fault" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "TurkErrorCode" => %{"shape" => "TurkErrorCode"}}, "type" => "structure"}, "ParameterMapEntry" => %{"members" => %{"Key" => %{"shape" => "String"}, "Values" => %{"shape" => "StringList"}}, "type" => "structure"}, "Assignment" => %{"members" => %{"AcceptTime" => %{"shape" => "Timestamp"}, "Answer" => %{"shape" => "String"}, "ApprovalTime" => %{"shape" => "Timestamp"}, "AssignmentId" => %{"shape" => "EntityId"}, "AssignmentStatus" => %{"shape" => "AssignmentStatus"}, "AutoApprovalTime" => %{"shape" => "Timestamp"}, "Deadline" => %{"shape" => "Timestamp"}, "HITId" => %{"shape" => "EntityId"}, "RejectionTime" => %{"shape" => "Timestamp"}, "RequesterFeedback" => %{"shape" => "String"}, "SubmitTime" => %{"shape" => "Timestamp"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "LocaleList" => %{"member" => %{"shape" => "Locale"}, "type" => "list"}, "NumericValue" => %{"pattern" => "^[0-9]+(\\.)?[0-9]*$", "type" => "string"}, "GetHITResponse" => %{"members" => %{"HIT" => %{"shape" => "HIT"}}, "type" => "structure"}, "DeleteQualificationTypeResponse" => %{"members" => %{}, "type" => "structure"}, "CreateHITResponse" => %{"members" => %{"HIT" => %{"shape" => "HIT"}}, "type" => "structure"}, "NotifyWorkersFailureStatus" => %{"members" => %{"NotifyWorkersFailureCode" => %{"shape" => "NotifyWorkersFailureCode"}, "NotifyWorkersFailureMessage" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "CreateAdditionalAssignmentsForHITResponse" => %{"members" => %{}, "type" => "structure"}, "ReviewResultDetail" => %{"members" => %{"ActionId" => %{"shape" => "EntityId"}, "Key" => %{"shape" => "String"}, "QuestionId" => %{"shape" => "EntityId"}, "SubjectId" => %{"shape" => "EntityId"}, "SubjectType" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "QualificationTypeList" => %{"member" => %{"shape" => "QualificationType"}, "type" => "list"}, "GetQualificationTypeResponse" => %{"members" => %{"QualificationType" => %{"shape" => "QualificationType"}}, "type" => "structure"}, "UpdateHITTypeOfHITResponse" => %{"members" => %{}, "type" => "structure"}, "StringList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "GetHITRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}}, "required" => ["HITId"], "type" => "structure"}, "AssociateQualificationWithWorkerRequest" => %{"members" => %{"IntegerValue" => %{"shape" => "Integer"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "SendNotification" => %{"shape" => "Boolean"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["QualificationTypeId", "WorkerId"], "type" => "structure"}, "ApproveAssignmentResponse" => %{"members" => %{}, "type" => "structure"}, "NotifyWorkersFailureCode" => %{"enum" => ["SoftFailure", "HardFailure"], "type" => "string"}, "QualificationTypeStatus" => %{"enum" => ["Active", "Inactive"], "type" => "string"}, "ListQualificationTypesResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}, "QualificationTypes" => %{"shape" => "QualificationTypeList"}}, "type" => "structure"}, "DisassociateQualificationFromWorkerRequest" => %{"members" => %{"QualificationTypeId" => %{"shape" => "EntityId"}, "Reason" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["WorkerId", "QualificationTypeId"], "type" => "structure"}, "GetQualificationScoreRequest" => %{"members" => %{"QualificationTypeId" => %{"shape" => "EntityId"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["QualificationTypeId", "WorkerId"], "type" => "structure"}, "ReviewPolicyLevelList" => %{"member" => %{"shape" => "ReviewPolicyLevel"}, "type" => "list"}, "EventTypeList" => %{"member" => %{"shape" => "EventType"}, "type" => "list"}, "ListHITsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "QualificationRequest" => %{"members" => %{"Answer" => %{"shape" => "String"}, "QualificationRequestId" => %{"shape" => "String"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "SubmitTime" => %{"shape" => "Timestamp"}, "Test" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "AssociateQualificationWithWorkerResponse" => %{"members" => %{}, "type" => "structure"}, "CreateWorkerBlockResponse" => %{"members" => %{}, "type" => "structure"}, "GetAssignmentRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}}, "required" => ["AssignmentId"], "type" => "structure"}, "QualificationRequestList" => %{"member" => %{"shape" => "QualificationRequest"}, "type" => "list"}, "ListQualificationRequestsResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}, "QualificationRequests" => %{"shape" => "QualificationRequestList"}}, "type" => "structure"}, "ReviewPolicyLevel" => %{"enum" => ["Assignment", "HIT"], "type" => "string"}, "AcceptQualificationRequestResponse" => %{"members" => %{}, "type" => "structure"}, "UpdateNotificationSettingsRequest" => %{"members" => %{"Active" => %{"shape" => "Boolean"}, "HITTypeId" => %{"shape" => "EntityId"}, "Notification" => %{"shape" => "NotificationSpecification"}}, "required" => ["HITTypeId"], "type" => "structure"}, "PolicyParameter" => %{"members" => %{"Key" => %{"shape" => "String"}, "MapEntries" => %{"shape" => "ParameterMapEntryList"}, "Values" => %{"shape" => "StringList"}}, "type" => "structure"}, "CreateHITWithHITTypeResponse" => %{"members" => %{"HIT" => %{"shape" => "HIT"}}, "type" => "structure"}, "UpdateHITTypeOfHITRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}, "HITTypeId" => %{"shape" => "EntityId"}}, "required" => ["HITId", "HITTypeId"], "type" => "structure"}, "CreateAdditionalAssignmentsForHITRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}, "NumberOfAdditionalAssignments" => %{"shape" => "Integer"}, "UniqueRequestToken" => %{"shape" => "IdempotencyToken"}}, "required" => ["HITId"], "type" => "structure"}, "AssignmentList" => %{"member" => %{"shape" => "Assignment"}, "type" => "list"}, "QualificationList" => %{"member" => %{"shape" => "Qualification"}, "type" => "list"}, "ListWorkerBlocksRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "HITLayoutParameterList" => %{"member" => %{"shape" => "HITLayoutParameter"}, "type" => "list"}, "HITLayoutParameter" => %{"members" => %{"Name" => %{"shape" => "String"}, "Value" => %{"shape" => "String"}}, "type" => "structure"}, "ListHITsForQualificationTypeRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}, "QualificationTypeId" => %{"shape" => "EntityId"}}, "required" => ["QualificationTypeId"], "type" => "structure"}, "Timestamp" => %{"type" => "timestamp"}, "UpdateQualificationTypeRequest" => %{"members" => %{"AnswerKey" => %{"shape" => "String"}, "AutoGranted" => %{"shape" => "Boolean"}, "AutoGrantedValue" => %{"shape" => "Integer"}, "Description" => %{"shape" => "String"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "QualificationTypeStatus" => %{"shape" => "QualificationTypeStatus"}, "RetryDelayInSeconds" => %{"shape" => "Long"}, "Test" => %{"shape" => "String"}, "TestDurationInSeconds" => %{"shape" => "Long"}}, "required" => ["QualificationTypeId"], "type" => "structure"}, "AssignmentStatus" => %{"enum" => ["Submitted", "Approved", "Rejected"], "type" => "string"}, "GetFileUploadURLRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "QuestionIdentifier" => %{"shape" => "String"}}, "required" => ["AssignmentId", "QuestionIdentifier"], "type" => "structure"}, "GetFileUploadURLResponse" => %{"members" => %{"FileUploadURL" => %{"shape" => "String"}}, "type" => "structure"}, "UpdateExpirationForHITRequest" => %{"members" => %{"ExpireAt" => %{"shape" => "Timestamp"}, "HITId" => %{"shape" => "EntityId"}}, "required" => ["HITId"], "type" => "structure"}, "RequestError" => %{"exception" => true, "members" => %{"Message" => %{"shape" => "ExceptionMessage"}, "TurkErrorCode" => %{"shape" => "TurkErrorCode"}}, "type" => "structure"}, "Comparator" => %{"enum" => ["LessThan", "LessThanOrEqualTo", "GreaterThan", "GreaterThanOrEqualTo", "EqualTo", "NotEqualTo", "Exists", "DoesNotExist", "In", "NotIn"], "type" => "string"}, "NotifyWorkersRequest" => %{"members" => %{"MessageText" => %{"shape" => "String"}, "Subject" => %{"shape" => "String"}, "WorkerIds" => %{"shape" => "CustomerIdList"}}, "required" => ["Subject", "MessageText", "WorkerIds"], "type" => "structure"}, "SendTestEventNotificationRequest" => %{"members" => %{"Notification" => %{"shape" => "NotificationSpecification"}, "TestEventType" => %{"shape" => "EventType"}}, "required" => ["Notification", "TestEventType"], "type" => "structure"}, "GetQualificationScoreResponse" => %{"members" => %{"Qualification" => %{"shape" => "Qualification"}}, "type" => "structure"}, "ListBonusPaymentsResponse" => %{"members" => %{"BonusPayments" => %{"shape" => "BonusPaymentList"}, "NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}}, "type" => "structure"}, "CreateHITTypeRequest" => %{"members" => %{"AssignmentDurationInSeconds" => %{"shape" => "Long"}, "AutoApprovalDelayInSeconds" => %{"shape" => "Long"}, "Description" => %{"shape" => "String"}, "Keywords" => %{"shape" => "String"}, "QualificationRequirements" => %{"shape" => "QualificationRequirementList"}, "Reward" => %{"shape" => "NumericValue"}, "Title" => %{"shape" => "String"}}, "required" => ["AssignmentDurationInSeconds", "Reward", "Title", "Description"], "type" => "structure"}, "ListAssignmentsForHITResponse" => %{"members" => %{"Assignments" => %{"shape" => "AssignmentList"}, "NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}}, "type" => "structure"}, "ListWorkerBlocksResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}, "WorkerBlocks" => %{"shape" => "WorkerBlockList"}}, "type" => "structure"}, "ListReviewableHITsRequest" => %{"members" => %{"HITTypeId" => %{"shape" => "EntityId"}, "MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}, "Status" => %{"shape" => "ReviewableHITStatus"}}, "type" => "structure"}, "ParameterMapEntryList" => %{"member" => %{"shape" => "ParameterMapEntry"}, "type" => "list"}, "CustomerIdList" => %{"member" => %{"shape" => "CustomerId"}, "type" => "list"}, "CreateHITWithHITTypeRequest" => %{"members" => %{"AssignmentReviewPolicy" => %{"shape" => "ReviewPolicy"}, "HITLayoutId" => %{"shape" => "EntityId"}, "HITLayoutParameters" => %{"shape" => "HITLayoutParameterList"}, "HITReviewPolicy" => %{"shape" => "ReviewPolicy"}, "HITTypeId" => %{"shape" => "EntityId"}, "LifetimeInSeconds" => %{"shape" => "Long"}, "MaxAssignments" => %{"shape" => "Integer"}, "Question" => %{"shape" => "String"}, "RequesterAnnotation" => %{"shape" => "String"}, "UniqueRequestToken" => %{"shape" => "IdempotencyToken"}}, "required" => ["HITTypeId", "LifetimeInSeconds"], "type" => "structure"}, "DeleteQualificationTypeRequest" => %{"members" => %{"QualificationTypeId" => %{"shape" => "EntityId"}}, "required" => ["QualificationTypeId"], "type" => "structure"}, "CreateHITTypeResponse" => %{"members" => %{"HITTypeId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "GetAccountBalanceResponse" => %{"members" => %{"AvailableBalance" => %{"shape" => "NumericValue"}, "OnHoldBalance" => %{"shape" => "NumericValue"}}, "type" => "structure"}, "ReviewReport" => %{"members" => %{"ReviewActions" => %{"shape" => "ReviewActionDetailList"}, "ReviewResults" => %{"shape" => "ReviewResultDetailList"}}, "type" => "structure"}, "UpdateExpirationForHITResponse" => %{"members" => %{}, "type" => "structure"}, "NotifyWorkersResponse" => %{"members" => %{"NotifyWorkersFailureStatuses" => %{"shape" => "NotifyWorkersFailureStatusList"}}, "type" => "structure"}, "Long" => %{"type" => "long"}, "DisassociateQualificationFromWorkerResponse" => %{"members" => %{}, "type" => "structure"}, "Locale" => %{"members" => %{"Country" => %{"shape" => "CountryParameters"}, "Subdivision" => %{"shape" => "CountryParameters"}}, "required" => ["Country"], "type" => "structure"}, "GetAssignmentResponse" => %{"members" => %{"Assignment" => %{"shape" => "Assignment"}, "HIT" => %{"shape" => "HIT"}}, "type" => "structure"}, "TurkErrorCode" => %{"type" => "string"}, "GetQualificationTypeRequest" => %{"members" => %{"QualificationTypeId" => %{"shape" => "EntityId"}}, "required" => ["QualificationTypeId"], "type" => "structure"}, "Qualification" => %{"members" => %{"GrantTime" => %{"shape" => "Timestamp"}, "IntegerValue" => %{"shape" => "Integer"}, "LocaleValue" => %{"shape" => "Locale"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "Status" => %{"shape" => "QualificationStatus"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "HIT" => %{"members" => %{"AssignmentDurationInSeconds" => %{"shape" => "Long"}, "AutoApprovalDelayInSeconds" => %{"shape" => "Long"}, "CreationTime" => %{"shape" => "Timestamp"}, "Description" => %{"shape" => "String"}, "Expiration" => %{"shape" => "Timestamp"}, "HITGroupId" => %{"shape" => "EntityId"}, "HITId" => %{"shape" => "EntityId"}, "HITLayoutId" => %{"shape" => "EntityId"}, "HITReviewStatus" => %{"shape" => "HITReviewStatus"}, "HITStatus" => %{"shape" => "HITStatus"}, "HITTypeId" => %{"shape" => "EntityId"}, "Keywords" => %{"shape" => "String"}, "MaxAssignments" => %{"shape" => "Integer"}, "NumberOfAssignmentsAvailable" => %{"shape" => "Integer"}, "NumberOfAssignmentsCompleted" => %{"shape" => "Integer"}, "NumberOfAssignmentsPending" => %{"shape" => "Integer"}, "QualificationRequirements" => %{"shape" => "QualificationRequirementList"}, "Question" => %{"shape" => "String"}, "RequesterAnnotation" => %{"shape" => "String"}, "Reward" => %{"shape" => "NumericValue"}, "Title" => %{"shape" => "String"}}, "type" => "structure"}, "ListQualificationTypesRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "MustBeOwnedByCaller" => %{"shape" => "Boolean"}, "MustBeRequestable" => %{"shape" => "Boolean"}, "NextToken" => %{"shape" => "PaginationToken"}, "Query" => %{"shape" => "String"}}, "required" => ["MustBeRequestable"], "type" => "structure"}, "ReviewActionStatus" => %{"enum" => ["Intended", "Succeeded", "Failed", "Cancelled"], "type" => "string"}, "BonusPaymentList" => %{"member" => %{"shape" => "BonusPayment"}, "type" => "list"}, "RejectAssignmentResponse" => %{"members" => %{}, "type" => "structure"}, "ReviewPolicy" => %{"members" => %{"Parameters" => %{"shape" => "PolicyParameterList"}, "PolicyName" => %{"shape" => "String"}}, "type" => "structure"}, "NotificationTransport" => %{"enum" => ["Email", "SQS"], "type" => "string"}, "CreateWorkerBlockRequest" => %{"members" => %{"Reason" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["WorkerId", "Reason"], "type" => "structure"}, "PaginationToken" => %{"max" => 255, "min" => 1, "type" => "string"}, "DeleteHITResponse" => %{"members" => %{}, "type" => "structure"}, "ReviewResultDetailList" => %{"member" => %{"shape" => "ReviewResultDetail"}, "type" => "list"}, "ExceptionMessage" => %{"type" => "string"}, "ListAssignmentsForHITRequest" => %{"members" => %{"AssignmentStatuses" => %{"shape" => "AssignmentStatusList"}, "HITId" => %{"shape" => "EntityId"}, "MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}}, "required" => ["HITId"], "type" => "structure"}, "DeleteWorkerBlockRequest" => %{"members" => %{"Reason" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["WorkerId"], "type" => "structure"}, "ListWorkersWithQualificationTypeResponse" => %{"members" => %{"NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}, "Qualifications" => %{"shape" => "QualificationList"}}, "type" => "structure"}, "CreateQualificationTypeRequest" => %{"members" => %{"AnswerKey" => %{"shape" => "String"}, "AutoGranted" => %{"shape" => "Boolean"}, "AutoGrantedValue" => %{"shape" => "Integer"}, "Description" => %{"shape" => "String"}, "Keywords" => %{"shape" => "String"}, "Name" => %{"shape" => "String"}, "QualificationTypeStatus" => %{"shape" => "QualificationTypeStatus"}, "RetryDelayInSeconds" => %{"shape" => "Long"}, "Test" => %{"shape" => "String"}, "TestDurationInSeconds" => %{"shape" => "Long"}}, "required" => ["Name", "Description", "QualificationTypeStatus"], "type" => "structure"}, "WorkerBlock" => %{"members" => %{"Reason" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "BonusPayment" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "BonusAmount" => %{"shape" => "NumericValue"}, "GrantTime" => %{"shape" => "Timestamp"}, "Reason" => %{"shape" => "String"}, "WorkerId" => %{"shape" => "CustomerId"}}, "type" => "structure"}, "EventType" => %{"enum" => ["AssignmentAccepted", "AssignmentAbandoned", "AssignmentReturned", "AssignmentSubmitted", "AssignmentRejected", "AssignmentApproved", "HITCreated", "HITExpired", "HITReviewable", "HITExtended", "HITDisposed", "Ping"], "type" => "string"}, "UpdateQualificationTypeResponse" => %{"members" => %{"QualificationType" => %{"shape" => "QualificationType"}}, "type" => "structure"}, "WorkerBlockList" => %{"member" => %{"shape" => "WorkerBlock"}, "type" => "list"}, "CountryParameters" => %{"max" => 2, "min" => 2, "type" => "string"}, "HITStatus" => %{"enum" => ["Assignable", "Unassignable", "Reviewable", "Reviewing", "Disposed"], "type" => "string"}, "ApproveAssignmentRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "OverrideRejection" => %{"shape" => "Boolean"}, "RequesterFeedback" => %{"shape" => "String"}}, "required" => ["AssignmentId"], "type" => "structure"}, "ListQualificationRequestsRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}, "QualificationTypeId" => %{"shape" => "EntityId"}}, "type" => "structure"}, "ListReviewPolicyResultsForHITResponse" => %{"members" => %{"AssignmentReviewPolicy" => %{"shape" => "ReviewPolicy"}, "AssignmentReviewReport" => %{"shape" => "ReviewReport"}, "HITId" => %{"shape" => "EntityId"}, "HITReviewPolicy" => %{"shape" => "ReviewPolicy"}, "HITReviewReport" => %{"shape" => "ReviewReport"}, "NextToken" => %{"shape" => "PaginationToken"}}, "type" => "structure"}, "QualificationRequirementList" => %{"member" => %{"shape" => "QualificationRequirement"}, "type" => "list"}, "RejectAssignmentRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "RequesterFeedback" => %{"shape" => "String"}}, "required" => ["AssignmentId"], "type" => "structure"}, "IntegerList" => %{"member" => %{"shape" => "Integer"}, "type" => "list"}, "ListHITsForQualificationTypeResponse" => %{"members" => %{"HITs" => %{"shape" => "HITList"}, "NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}}, "type" => "structure"}, "Integer" => %{"type" => "integer"}, "UpdateHITReviewStatusResponse" => %{"members" => %{}, "type" => "structure"}, "ListWorkersWithQualificationTypeRequest" => %{"members" => %{"MaxResults" => %{"shape" => "ResultSize"}, "NextToken" => %{"shape" => "PaginationToken"}, "QualificationTypeId" => %{"shape" => "EntityId"}, "Status" => %{"shape" => "QualificationStatus"}}, "required" => ["QualificationTypeId"], "type" => "structure"}, "CreateQualificationTypeResponse" => %{"members" => %{"QualificationType" => %{"shape" => "QualificationType"}}, "type" => "structure"}, "NotifyWorkersFailureStatusList" => %{"member" => %{"shape" => "NotifyWorkersFailureStatus"}, "type" => "list"}, "CreateHITRequest" => %{"members" => %{"AssignmentDurationInSeconds" => %{"shape" => "Long"}, "AssignmentReviewPolicy" => %{"shape" => "ReviewPolicy"}, "AutoApprovalDelayInSeconds" => %{"shape" => "Long"}, "Description" => %{"shape" => "String"}, "HITLayoutId" => %{"shape" => "EntityId"}, "HITLayoutParameters" => %{"shape" => "HITLayoutParameterList"}, "HITReviewPolicy" => %{"shape" => "ReviewPolicy"}, "Keywords" => %{"shape" => "String"}, "LifetimeInSeconds" => %{"shape" => "Long"}, "MaxAssignments" => %{"shape" => "Integer"}, "QualificationRequirements" => %{"shape" => "QualificationRequirementList"}, "Question" => %{"shape" => "String"}, "RequesterAnnotation" => %{"shape" => "String"}, "Reward" => %{"shape" => "NumericValue"}, "Title" => %{"shape" => "String"}, "UniqueRequestToken" => %{"shape" => "IdempotencyToken"}}, "required" => ["LifetimeInSeconds", "AssignmentDurationInSeconds", "Reward", "Title", "Description"], "type" => "structure"}, "ReviewActionDetailList" => %{"member" => %{"shape" => "ReviewActionDetail"}, "type" => "list"}, "ListReviewableHITsResponse" => %{"members" => %{"HITs" => %{"shape" => "HITList"}, "NextToken" => %{"shape" => "PaginationToken"}, "NumResults" => %{"shape" => "Integer"}}, "type" => "structure"}, "IdempotencyToken" => %{"max" => 64, "min" => 1, "type" => "string"}, "UpdateHITReviewStatusRequest" => %{"members" => %{"HITId" => %{"shape" => "EntityId"}, "Revert" => %{"shape" => "Boolean"}}, "required" => ["HITId"], "type" => "structure"}, "HITReviewStatus" => %{"enum" => ["NotReviewed", "MarkedForReview", "ReviewedAppropriate", "ReviewedInappropriate"], "type" => "string"}, "SendBonusRequest" => %{"members" => %{"AssignmentId" => %{"shape" => "EntityId"}, "BonusAmount" => %{"shape" => "NumericValue"}, "Reason" => %{"shape" => "String"}, "UniqueRequestToken" => %{"shape" => "IdempotencyToken"}, "WorkerId" => %{"shape" => "CustomerId"}}, "required" => ["WorkerId", "BonusAmount", "AssignmentId"], "type" => "structure"}}
  end
end