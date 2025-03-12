resource "aws_servicecatalog_product" "example" {
  name          = var.name
  owner         = var.owner
  description   = var.description
  distributor   = var.distributor
  support_email = var.support_email
  support_description = var.support_description

  provisioning_artifact {
    name         = var.artifact_name
    description  = var.artifact_description
    type         = "CLOUD_FORMATION_TEMPLATE"
    template_url = var.template_url
  }

  portfolio_id = var.portfolio_id
}
