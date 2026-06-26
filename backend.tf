terraform {
  backend "s3" {
    bucket         = "myapp-prod-tf-state-remote-backend"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}