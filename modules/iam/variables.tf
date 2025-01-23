variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "allowed_services" {
  description = "List of AWS services allowed to assume the role"
  type        = list(string)
}
