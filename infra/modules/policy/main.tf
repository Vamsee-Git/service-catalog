resource "aws_iam_policy" "service_catalog_user_policy" {
  name        = var.policy_name
  description = var.policy_description
  policy      = data.aws_iam_policy_document.service_catalog_user_policy.json
}

data "aws_iam_policy_document" "service_catalog_user_policy" {
  statement {
    actions = [
      "servicecatalog:SearchProductsAsAdmin",
      "servicecatalog:DescribeProduct",
      "servicecatalog:ProvisionProduct",
      "servicecatalog:DescribeProvisionedProduct"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy_attachment" "example" {
  user       = var.user_name
  policy_arn = aws_iam_policy.service_catalog_user_policy.arn
}

output "policy_arn" {
  description = "IAM policy ARN for the Service Catalog user"
  value       = aws_iam_policy.service_catalog_user_policy.arn
}

