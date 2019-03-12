provider "aws" {
  region     = "us-east-1"
}
module "main_network" {
    source       = "../../../Modules/Gateway"
    vpc_tag_name = "${var.gateway_vpc_tag_name[0]}"
    tag_name     = "${var.gateway_tag_name[0]}"
}
