provider "aws" {
    region = "us-east-1"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "ojutai_terraform_state"
    acl    = "private"

    lifecycle {
      prevent_destroy = true
    }
}
