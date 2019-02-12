terraform {
    resource "aws_s3_bucket" "terraform_state" {
        bucket = "ojutai-us-east-1-production-terraform-state"
        acl    = "private"

        lifecycle {
            prevent_destroy = true
      }
    }
    backend "s3" {
        bucket = "us-east-1-production-terraform-state"
        key    = "terraform_state"
        region = "us-east-1"
    }
}