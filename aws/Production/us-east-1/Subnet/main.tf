provider "aws" {
  region     = "us-east-1"
}

module "Main_Subnet" {
    source = "../../../Modules/Subnet"
    vpc_tag_name = "${var.subnet_vpc_tag_name[0]}"
    tag_name     = "${var.subnet_tag_name[0]}"
    cidr_block   = "${var.subnet_cidr_block[0]}"
}