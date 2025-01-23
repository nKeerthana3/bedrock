resource "aws_iam_role" "bedrock_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole",
        Effect    = "Allow",
        Principal = {
          Service = var.allowed_services
        }
      }
    ]
  })
}

resource "aws_iam_policy" "bedrock_policy" {
  name        = var.policy_name
  description = "Policy to allow Bedrock access to foundation models and associated services."

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "bedrock:*",
          "s3:*",
          "logs:*",
          "iam:PassRole"
        ],
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_bedrock_policy" {
  role       = aws_iam_role.bedrock_role.name
  policy_arn = aws_iam_policy.bedrock_policy.arn
}
