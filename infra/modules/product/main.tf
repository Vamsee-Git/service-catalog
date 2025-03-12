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
    type         = "EXTERNAL"
    template_url = var.template_url
  }

  portfolio_id = var.portfolio_id
}

output "product_id" {
  description = "The ID of the Service Catalog product"
  value       = aws_servicecatalog_product.example.id
}

