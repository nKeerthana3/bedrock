resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name_prefix}-${random_id.bucket_id.hex}"
}
