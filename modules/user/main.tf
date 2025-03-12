resource "aws_iam_user" "example" {
  name = var.user_name
}

resource "aws_servicecatalog_principal_portfolio_association" "example" {
  portfolio_id = var.portfolio_id
  principal_arn = aws_iam_user.example.arn
  principal_type = "IAM"
}
