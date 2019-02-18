resource "aws_s3_bucket" "terraform_state" {
    bucket = "ojutai-us-east-1-production-terraform-state"
    acl    = "private"

    versioning {
        enabled = true
    }
    lifecycle {
        prevent_destroy = true
    }
}
