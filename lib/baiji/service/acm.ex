defmodule Baiji.ACM do
  @moduledoc """
  AWS Certificate Manager

  Welcome to the AWS Certificate Manager (ACM) API documentation.

  You can use ACM to manage SSL/TLS certificates for your AWS-based websites
  and applications. For general information about using ACM, see the [ *AWS
  Certificate Manager User Guide*
  ](http://docs.aws.amazon.com/acm/latest/userguide/).
  """

  @doc """
  Adds one or more tags to an ACM Certificate. Tags are labels that you can
  use to identify and organize your AWS resources. Each tag consists of a
  `key` and an optional `value`. You specify the certificate on input by its
  Amazon Resource Name (ARN). You specify the tag by using a key-value pair.

  You can apply a tag to just one certificate if you want to identify a
  specific characteristic of that certificate, or you can apply the same tag
  to multiple certificates if you want to filter for a common relationship
  among those certificates. Similarly, you can apply the same tag to multiple
  resources if you want to specify a relationship among those resources. For
  example, you can add the same tag to an ACM Certificate and an Elastic Load
  Balancing load balancer to indicate that they are both used by the same
  website. For more information, see [Tagging ACM
  Certificates](http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

  To remove one or more tags, use the `RemoveTagsFromCertificate` action. To
  view all of the tags that have been applied to the certificate, use the
  `ListTagsForCertificate` action.
  """
  def add_tags_to_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "AddTagsToCertificate",
      method:           :post,
      input_shape:      "AddTagsToCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Deletes an ACM Certificate and its associated private key. If this action
  succeeds, the certificate no longer appears in the list of ACM Certificates
  that can be displayed by calling the `ListCertificates` action or be
  retrieved by calling the `GetCertificate` action. The certificate will not
  be available for use by other AWS services.

  <note> You cannot delete an ACM Certificate that is being used by another
  AWS service. To delete a certificate that is in use, the certificate
  association must first be removed.

  </note>
  """
  def delete_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DeleteCertificate",
      method:           :post,
      input_shape:      "DeleteCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Returns detailed metadata about the specified ACM Certificate.
  """
  def describe_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "DescribeCertificate",
      method:           :post,
      input_shape:      "DescribeCertificateRequest",
      output_shape:     "DescribeCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves an ACM Certificate and certificate chain for the certificate
  specified by an ARN. The chain is an ordered list of certificates that
  contains the root certificate, intermediate certificates of subordinate
  CAs, and the ACM Certificate. The certificate and certificate chain are
  base64 encoded. If you want to decode the certificate chain to see the
  individual certificate fields, you can use OpenSSL.

  <note> Currently, ACM Certificates can be used only with Elastic Load
  Balancing and Amazon CloudFront.

  </note>
  """
  def get_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "GetCertificate",
      method:           :post,
      input_shape:      "GetCertificateRequest",
      output_shape:     "GetCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to use
  with [ACM's integrated AWS
  services](http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html).

  <note> ACM does not provide [managed
  renewal](http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html)
  for certificates that you import.

  </note> For more information about importing certificates into ACM,
  including the differences between certificates that you import and those
  that ACM provides, see [Importing
  Certificates](http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
  in the *AWS Certificate Manager User Guide*.

  To import a certificate, you must provide the certificate and the matching
  private key. When the certificate is not self-signed, you must also provide
  a certificate chain. You can omit the certificate chain when importing a
  self-signed certificate.

  The certificate, private key, and certificate chain must be PEM-encoded.
  For more information about converting these items to PEM format, see
  [Importing Certificates
  Troubleshooting](http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html#import-certificate-troubleshooting)
  in the *AWS Certificate Manager User Guide*.

  To import a new certificate, omit the `CertificateArn` field. Include this
  field only when you want to replace a previously imported certificate.

  This operation returns the [Amazon Resource Name
  (ARN)](http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the imported certificate.
  """
  def import_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ImportCertificate",
      method:           :post,
      input_shape:      "ImportCertificateRequest",
      output_shape:     "ImportCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Retrieves a list of ACM Certificates and the domain name for each. You can
  optionally filter the list to return only the certificates that match the
  specified status.
  """
  def list_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListCertificates",
      method:           :post,
      input_shape:      "ListCertificatesRequest",
      output_shape:     "ListCertificatesResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Lists the tags that have been applied to the ACM Certificate. Use the
  certificate's Amazon Resource Name (ARN) to specify the certificate. To add
  a tag to an ACM Certificate, use the `AddTagsToCertificate` action. To
  delete a tag, use the `RemoveTagsFromCertificate` action.
  """
  def list_tags_for_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ListTagsForCertificate",
      method:           :post,
      input_shape:      "ListTagsForCertificateRequest",
      output_shape:     "ListTagsForCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Remove one or more tags from an ACM Certificate. A tag consists of a
  key-value pair. If you do not specify the value portion of the tag when
  calling this function, the tag will be removed regardless of value. If you
  specify a value, the tag is removed only if it is associated with the
  specified value.

  To add tags to a certificate, use the `AddTagsToCertificate` action. To
  view all of the tags that have been applied to a specific ACM Certificate,
  use the `ListTagsForCertificate` action.
  """
  def remove_tags_from_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromCertificate",
      method:           :post,
      input_shape:      "RemoveTagsFromCertificateRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end

  @doc """
  Requests an ACM Certificate for use with other AWS services. To request an
  ACM Certificate, you must specify the fully qualified domain name (FQDN)
  for your site. You can also specify additional FQDNs if users can reach
  your site by using other names. For each domain name you specify, email is
  sent to the domain owner to request approval to issue the certificate.
  After receiving approval from the domain owner, the ACM Certificate is
  issued. For more information, see the [AWS Certificate Manager User
  Guide](http://docs.aws.amazon.com/acm/latest/userguide/).
  """
  def request_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "RequestCertificate",
      method:           :post,
      input_shape:      "RequestCertificateRequest",
      output_shape:     "RequestCertificateResponse",
      endpoint:         __spec__()
    }
  end

  @doc """
  Resends the email that requests domain ownership validation. The domain
  owner or an authorized representative must approve the ACM Certificate
  before it can be issued. The certificate can be approved by clicking a link
  in the mail to navigate to the Amazon certificate approval website and then
  clicking **I Approve**. However, the validation email can be blocked by
  spam filters. Therefore, if you do not receive the original mail, you can
  request that the mail be resent within 72 hours of requesting the ACM
  Certificate. If more than 72 hours have elapsed since your original request
  or since your last attempt to resend validation mail, you must request a
  new certificate. For more information about setting up your contact email
  addresses, see [Configure Email for your
  Domain](http://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).
  """
  def resend_validation_email(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      path:             "/",
      input:            input,
      options:          options,
      action:           "ResendValidationEmail",
      method:           :post,
      input_shape:      "ResendValidationEmailRequest",
      output_shape:     "",
      endpoint:         __spec__()
    }
  end


  @doc """
  Outputs values common to all actions
  """
  def __spec__ do
    %Baiji.Endpoint{
      service:          "acm",
      target_prefix:    "CertificateManager",
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      shapes:           __shapes__()
    }
  end

  @doc """
  Returns a map containing the input/output shapes for this endpoint
  """
  def __shapes__ do
		%{"CertificateChainBlob" => %{"max" => 2097152, "min" => 1, "type" => "blob"}, "RemoveTagsFromCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["CertificateArn", "Tags"], "type" => "structure"}, "CertificateStatuses" => %{"member" => %{"shape" => "CertificateStatus"}, "type" => "list"}, "FailureReason" => %{"enum" => ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "OTHER"], "type" => "string"}, "String" => %{"type" => "string"}, "DomainValidationOptionList" => %{"max" => 100, "member" => %{"shape" => "DomainValidationOption"}, "min" => 1, "type" => "list"}, "DescribeCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "required" => ["CertificateArn"], "type" => "structure"}, "CertificateDetail" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}, "CreatedAt" => %{"shape" => "TStamp"}, "DomainName" => %{"shape" => "DomainNameString"}, "DomainValidationOptions" => %{"shape" => "DomainValidationList"}, "FailureReason" => %{"shape" => "FailureReason"}, "ImportedAt" => %{"shape" => "TStamp"}, "InUseBy" => %{"shape" => "InUseList"}, "IssuedAt" => %{"shape" => "TStamp"}, "Issuer" => %{"shape" => "String"}, "KeyAlgorithm" => %{"shape" => "KeyAlgorithm"}, "NotAfter" => %{"shape" => "TStamp"}, "NotBefore" => %{"shape" => "TStamp"}, "RenewalSummary" => %{"shape" => "RenewalSummary"}, "RevocationReason" => %{"shape" => "RevocationReason"}, "RevokedAt" => %{"shape" => "TStamp"}, "Serial" => %{"shape" => "String"}, "SignatureAlgorithm" => %{"shape" => "String"}, "Status" => %{"shape" => "CertificateStatus"}, "Subject" => %{"shape" => "String"}, "SubjectAlternativeNames" => %{"shape" => "DomainList"}, "Type" => %{"shape" => "CertificateType"}}, "type" => "structure"}, "ResourceInUseException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListTagsForCertificateResponse" => %{"members" => %{"Tags" => %{"shape" => "TagList"}}, "type" => "structure"}, "CertificateBody" => %{"max" => 32768, "min" => 1, "pattern" => "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?", "type" => "string"}, "ImportCertificateRequest" => %{"members" => %{"Certificate" => %{"shape" => "CertificateBodyBlob"}, "CertificateArn" => %{"shape" => "Arn"}, "CertificateChain" => %{"shape" => "CertificateChainBlob"}, "PrivateKey" => %{"shape" => "PrivateKeyBlob"}}, "required" => ["Certificate", "PrivateKey"], "type" => "structure"}, "DomainValidation" => %{"members" => %{"DomainName" => %{"shape" => "DomainNameString"}, "ValidationDomain" => %{"shape" => "DomainNameString"}, "ValidationEmails" => %{"shape" => "ValidationEmailList"}, "ValidationStatus" => %{"shape" => "DomainStatus"}}, "required" => ["DomainName"], "type" => "structure"}, "CertificateBodyBlob" => %{"max" => 32768, "min" => 1, "type" => "blob"}, "RevocationReason" => %{"enum" => ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"], "type" => "string"}, "GetCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "required" => ["CertificateArn"], "type" => "structure"}, "Tag" => %{"members" => %{"Key" => %{"shape" => "TagKey"}, "Value" => %{"shape" => "TagValue"}}, "required" => ["Key"], "type" => "structure"}, "InvalidTagException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "PrivateKeyBlob" => %{"max" => 524288, "min" => 1, "sensitive" => true, "type" => "blob"}, "CertificateSummaryList" => %{"member" => %{"shape" => "CertificateSummary"}, "type" => "list"}, "TagList" => %{"max" => 50, "member" => %{"shape" => "Tag"}, "min" => 1, "type" => "list"}, "TStamp" => %{"type" => "timestamp"}, "DomainValidationOption" => %{"members" => %{"DomainName" => %{"shape" => "DomainNameString"}, "ValidationDomain" => %{"shape" => "DomainNameString"}}, "required" => ["DomainName", "ValidationDomain"], "type" => "structure"}, "TagValue" => %{"max" => 256, "min" => 0, "pattern" => "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*", "type" => "string"}, "RequestInProgressException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "RequestCertificateRequest" => %{"members" => %{"DomainName" => %{"shape" => "DomainNameString"}, "DomainValidationOptions" => %{"shape" => "DomainValidationOptionList"}, "IdempotencyToken" => %{"shape" => "IdempotencyToken"}, "SubjectAlternativeNames" => %{"shape" => "DomainList"}}, "required" => ["DomainName"], "type" => "structure"}, "CertificateStatus" => %{"enum" => ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"], "type" => "string"}, "ResendValidationEmailRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}, "Domain" => %{"shape" => "DomainNameString"}, "ValidationDomain" => %{"shape" => "DomainNameString"}}, "required" => ["CertificateArn", "Domain", "ValidationDomain"], "type" => "structure"}, "CertificateType" => %{"enum" => ["IMPORTED", "AMAZON_ISSUED"], "type" => "string"}, "Arn" => %{"max" => 2048, "min" => 20, "pattern" => "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*", "type" => "string"}, "RequestCertificateResponse" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "type" => "structure"}, "InvalidStateException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "InvalidDomainValidationOptionsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "RenewalSummary" => %{"members" => %{"DomainValidationOptions" => %{"shape" => "DomainValidationList"}, "RenewalStatus" => %{"shape" => "RenewalStatus"}}, "required" => ["RenewalStatus", "DomainValidationOptions"], "type" => "structure"}, "LimitExceededException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListCertificatesResponse" => %{"members" => %{"CertificateSummaryList" => %{"shape" => "CertificateSummaryList"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "ResourceNotFoundException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListTagsForCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "required" => ["CertificateArn"], "type" => "structure"}, "MaxItems" => %{"max" => 1000, "min" => 1, "type" => "integer"}, "DescribeCertificateResponse" => %{"members" => %{"Certificate" => %{"shape" => "CertificateDetail"}}, "type" => "structure"}, "InvalidArnException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "DomainValidationList" => %{"max" => 1000, "member" => %{"shape" => "DomainValidation"}, "min" => 1, "type" => "list"}, "CertificateChain" => %{"max" => 2097152, "min" => 1, "pattern" => "(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?", "type" => "string"}, "TooManyTagsException" => %{"exception" => true, "members" => %{"message" => %{"shape" => "String"}}, "type" => "structure"}, "ListCertificatesRequest" => %{"members" => %{"CertificateStatuses" => %{"shape" => "CertificateStatuses"}, "MaxItems" => %{"shape" => "MaxItems"}, "NextToken" => %{"shape" => "NextToken"}}, "type" => "structure"}, "TagKey" => %{"max" => 128, "min" => 1, "pattern" => "[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*", "type" => "string"}, "DomainNameString" => %{"max" => 253, "min" => 1, "pattern" => "^(\\*\\.)?(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$", "type" => "string"}, "CertificateSummary" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}, "DomainName" => %{"shape" => "DomainNameString"}}, "type" => "structure"}, "ValidationEmailList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "GetCertificateResponse" => %{"members" => %{"Certificate" => %{"shape" => "CertificateBody"}, "CertificateChain" => %{"shape" => "CertificateChain"}}, "type" => "structure"}, "DeleteCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "required" => ["CertificateArn"], "type" => "structure"}, "InUseList" => %{"member" => %{"shape" => "String"}, "type" => "list"}, "RenewalStatus" => %{"enum" => ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"], "type" => "string"}, "NextToken" => %{"max" => 320, "min" => 1, "pattern" => "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]*", "type" => "string"}, "DomainList" => %{"max" => 100, "member" => %{"shape" => "DomainNameString"}, "min" => 1, "type" => "list"}, "DomainStatus" => %{"enum" => ["PENDING_VALIDATION", "SUCCESS", "FAILED"], "type" => "string"}, "KeyAlgorithm" => %{"enum" => ["RSA_2048", "RSA_1024", "EC_prime256v1"], "type" => "string"}, "AddTagsToCertificateRequest" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}, "Tags" => %{"shape" => "TagList"}}, "required" => ["CertificateArn", "Tags"], "type" => "structure"}, "IdempotencyToken" => %{"max" => 32, "min" => 1, "pattern" => "\\w+", "type" => "string"}, "ImportCertificateResponse" => %{"members" => %{"CertificateArn" => %{"shape" => "Arn"}}, "type" => "structure"}}
  end
end