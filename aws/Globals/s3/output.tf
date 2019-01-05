terraform {
  backend "s3" {
    encrypt         = true
    bucket          = "ojutai_terraform_state"
    dynamodb_table  = "ojutai_terraform_state-lock"
    region          = "us-east-1"
    key             = "global/s3/terraform.tfstate"
  }
}
