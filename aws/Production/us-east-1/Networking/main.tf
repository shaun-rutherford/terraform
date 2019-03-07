provider "aws" {
  region     = "us-east-1"
}

module "main_VPC" {
    source           = "../../../Modules/vpc"
    cidr_block       = "${var.networking_cidr_block[0]}"
    vpc_name         = "${var.networking_vpc_name[0]}"
    instance_tenancy = "${var.networking_instance_tenancy}"
}
