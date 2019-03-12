provider "aws" {
  region     = "us-east-1"
}

module "main_VPC" {
    source           = "../../../Modules/VPC"
    cidr_block       = "${var.vpc_cidr_block[0]}"
    tag_name         = "${var.vpc_tag_name[0]}"
    instance_tenancy = "${var.vpc_instance_tenancy}"
}
