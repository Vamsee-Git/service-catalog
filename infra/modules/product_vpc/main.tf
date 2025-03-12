resource "aws_servicecatalog_product" "example" {
  name            = "vpcproduct"
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
    template_url   = "https://s3-terraformtemplate-bucketdfghghj.s3.ap-south-1.amazonaws.com/Network.yaml"
  }
}
resource "aws_servicecatalog_product_portfolio_association" "example" {
  portfolio_id = var.portfolio_id
  product_id   = aws_servicecatalog_product.example.id
}
