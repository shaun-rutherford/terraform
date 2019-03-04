provider "aws" {
  region     = "${var.region}"
}

module "main VPC" {
    source           = "../../../Modules/vpc"
    cidr_block       = "${var.networking_cidr_block[0]}"
    vpc_name         = "${var.networking_vcp_name[0]}"
    instance_tenancy = "${var.networking_instance_tenancy}"
}
