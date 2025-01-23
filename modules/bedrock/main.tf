resource "null_resource" "create_foundation_model" {
  provisioner "local-exec" {
    command = <<EOT
aws bedrock create-model --region ${var.region} \
  --model-name ${var.model_name} \
  --model-id ${var.model_id} \
  --execution-role-arn ${var.execution_role_arn} \
  --output-bucket-name ${var.output_bucket_name}
EOT
  }
}
