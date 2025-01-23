variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1" # Change as needed
}

variable "iam_role_name" {
  description = "Name of the IAM role for Bedrock"
  type        = string
  default     = "bedrock-execution-role"
}

variable "iam_policy_name" {
  description = "Name of the IAM policy for Bedrock"
  type        = string
  default     = "bedrock-access-policy"
}

variable "allowed_services" {
  description = "List of AWS services allowed to assume the role"
  type        = list(string)
  default     = ["bedrock.amazonaws.com"]
}

variable "bucket_name_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "bedrock-data-storage"
}

variable "model_name" {
  description = "Name of the foundation model"
  type        = string
  default     = "foundation-model-example"
}

variable "model_id" {
  description = "ID of the foundation model to use"
  type        = string
  default     = "amazon-titan-text" # Example model, change as needed
}
