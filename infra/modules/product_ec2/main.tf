resource "aws_servicecatalog_product" "this1" {
  name            = "ec2product"
  owner           = "AWS"
  description     = "A CloudFormation product"
  distributor     = "My Company"
  support_email   = "support@mycompany.com"
  support_description = "Support for the CloudFormation product"
  support_url         = "https://example.com/support"
  type                = "CLOUD_FORMATION_TEMPLATE"  # Change to CloudFormation template type
 
  provisioning_artifact_parameters {
    name           = "v1"
    description    = "version v1"
    type           = "CLOUD_FORMATION_TEMPLATE"  # Change to CloudFormation template type
    template_url   = "https://s3.amazonaws.com/sneha-terraform-bucket-us-west-2/simple_ec2_ebs_appregistry.yaml"
  }
}
