terraform {
  backend "s3" {
    encrypt         = true
    bucket          = "ojutai-us-east-1-production-terraform-state"
    dynamodb_table  = "ojutai_us_east_1_production_terraform_state_lock"
    region          = "us-east-1"
    key             = "networking/terraform.tfstate"
    #access_key      = "<set here or via aws cli tools>"
    #secret_key      = "<set here or via aws cli tools>"
  }
}
