resource "aws_s3_bucket" "example" {
  bucket = "myapp-prod-tf-state-remote-backend"
  tags = {
    Name        = "Terraform Remote State"
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "tf_state" {
  bucket = aws_s3_bucket.tf_state.id              # ← reference, not hardcoded name

  versioning_configuration {
    status = "Enabled"
  }
}