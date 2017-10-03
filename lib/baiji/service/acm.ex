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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "AddTagsToCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DeleteCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
    }
  end
  
  @doc """
  Returns detailed metadata about the specified ACM Certificate.
  """
  def describe_certificate(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "DescribeCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "GetCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ImportCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
    }
  end
  
  @doc """
  Retrieves a list of ACM Certificates and the domain name for each. You can
  optionally filter the list to return only the certificates that match the
  specified status.
  """
  def list_certificates(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListCertificates",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ListTagsForCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RemoveTagsFromCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "RequestCertificate",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
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
      service:          "acm",
      endpoint:         "/",
      input:            input,
      options:          options,
      action:           "ResendValidationEmail",
      
      target_prefix:    "CertificateManager",
      
      endpoint_prefix:  "acm",
      type:             :json,
      version:          "2015-12-08",
      method:           :post
    }
  end
  
end