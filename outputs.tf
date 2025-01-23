output "iam_role_arn" {
  description = "ARN of the IAM role for Bedrock"
  value       = module.iam.role_arn
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket for Bedrock data"
  value       = module.s3.bucket_name
}

output "bedrock_model_name" {
  description = "Name of the Bedrock model created"
  value       = module.bedrock.model_name
}

output "bedrock_model_id" {
  description = "ID of the Bedrock model created"
  value       = module.bedrock.model_id
}

