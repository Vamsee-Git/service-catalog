resource "aws_servicecatalog_product" "example" {
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
    template_url   = "s3://s3-terraformtemplate-bucketdfghghj/simple_ec2_ebs_appregistry.yaml"
  }
}
resource "aws_servicecatalog_product_portfolio_association" "example" {
  portfolio_id = var.portfolio_id
  product_id   = aws_servicecatalog_product.example.id
}

