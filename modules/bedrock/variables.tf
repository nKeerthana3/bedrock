variable "model_name" {
  description = "Name of the foundation model"
  type        = string
}

variable "model_id" {
  description = "ID of the foundation model"
  type        = string
}

variable "execution_role_arn" {
  description = "ARN of the execution IAM role"
  type        = string
}

variable "output_bucket_name" {
  description = "Name of the output S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}
