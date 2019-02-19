terraform {
  backend "s3" {
    encrypt         = true
    bucket          = "ojutai-us-east-1-production-terraform-state"
    dynamodb_table  = "ojutai_us_east_1_production_terraform_state_lock"
    region          = "us-east-1"
    key             = "terraform.tfstate"
  }
}
