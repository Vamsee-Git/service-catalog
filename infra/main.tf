module "portfolio" {
  source        = "./modules/portfolio"
  name          = "ExamplePortfolio"
  description   = "A portfolio for managing products"
  provider_name = "ExampleProvider"
}

module "product" {
  source            = "./modules/product"
  name              = "ExampleProduct"
  owner             = "ExampleOwner"
  description       = "A product created using a Terraform template"
  distributor       = "ExampleDistributor"
  support_email     = "support@example.com"
  support_description = "Support for this product"
  artifact_name     = "TerraformArtifact"
  artifact_description = "Terraform template for provisioning resources"
  template_url      = "https://s3.amazonaws.com/path-to-your-terraform-template/terraform-template.json"
  portfolio_id      = module.portfolio.id
}

module "user" {
  source        = "./modules/user"
  user_name     = "example-user"
  portfolio_id  = module.portfolio.id
}

module "policy" {
  source           = "./modules/policy"
  policy_name      = "ServiceCatalogUserPolicy"
  policy_description = "Policy for Service Catalog user"
  user_name        = module.user.user_name
}
