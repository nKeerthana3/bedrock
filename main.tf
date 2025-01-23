provider "aws" {
  region = "us-east-1"
}

module "iam" {
  source = "./modules/iam"
  role_name        = "bedrock-execution-role"
  policy_name      = "bedrock-access-policy"
  allowed_services = ["bedrock.amazonaws.com"]
}

module "s3" {
  source = "./modules/s3"
  bucket_name_prefix = "bedrock-data-storage"
}

module "bedrock" {
  source            = "./modules/bedrock"
  model_name        = "foundation-model-example"
  model_id          = "amazon-titan-text"
  execution_role_arn = module.iam.role_arn
  output_bucket_name = module.s3.bucket_name
  region            = var.region
}

