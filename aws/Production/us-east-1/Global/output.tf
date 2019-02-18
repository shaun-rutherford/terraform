terraform {
    backend "s3" {
        encrypt        = true
        bucket         = "ojutai_us_east_1_production_terraform_state"
        dynamodb_table = "ojutai_us_east_1_production_terraform_state_lock"
        region         = "us-east-1"
        key            = "us-east-1/Global/terraform.tfstate"
    }
}
