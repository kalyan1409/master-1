terraform {
  backend "s3" {
    bucket = "example.com-terraform-backend-store"
    key    = "QA/terraform.tfstate"
    region = "ap-south-1"
  }
}