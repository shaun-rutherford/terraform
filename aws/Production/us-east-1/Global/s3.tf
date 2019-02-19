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

resource "aws_dynamodb_table" "terraform_state_lock" {
    name           = "ojutai_us_east_1_production_terraform_state_lock"
    hash_key       = "LockID"
    read_capacity  = 20
    write_capacity = 20

    attribute {
        name       = "LockID"
        type       = "S"
    }
}
