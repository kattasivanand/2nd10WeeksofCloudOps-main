resource "aws_iam_role_policy_attachment" "iam-policy" {
  role       = aws_iam_role.iam-role.name
  # production time not give this full access
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess" # Only for testing
}
