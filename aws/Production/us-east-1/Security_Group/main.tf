provider "aws" {
  region     = "us-east-1"
}

module "Inbound_22_Outbound_Any" {
    source             = "../../../Modules/Security_Group"
    vpc_tag_name       = "${var.security_group_vpc_tag_name[0]}"
    tag_name           = "${var.security_group_tag_name[0]}"
    name               = "${var.security_group_name[0]}"
    ingress_from_port  = "${var.security_group_ingress_from_port[0]}"
    ingress_to_port    = "${var.security_group_ingress_to_port[0]}"
    ingress_protocol   = "${var.security_group_ingress_protocol[0]}"
    ingress_cidr_block = "${var.security_group_ingress_cidr_block[0]}"
    egress_from_port   = "${var.security_group_egress_from_port[0]}"
    egress_to_port     = "${var.security_group_egress_to_port[0]}"
    egress_protocol    = "${var.security_group_egress_protocol[0]}"
    egress_cidr_block  = "${var.security_group_egress_cidr_block[0]}"
}

module "Inbound_80_Outbound_Any" {
    source             = "../../../Modules/Security_Group"
    vpc_tag_name       = "${var.security_group_vpc_tag_name[0]}"
    tag_name           = "${var.security_group_tag_name[0]}"
    name               = "${var.security_group_name[1]}"
    ingress_from_port  = "${var.security_group_ingress_from_port[1]}"
    ingress_to_port    = "${var.security_group_ingress_to_port[1]}"
    ingress_protocol   = "${var.security_group_ingress_protocol[0]}"
    ingress_cidr_block = "${var.security_group_ingress_cidr_block[1]}"
    egress_from_port   = "${var.security_group_egress_from_port[0]}"
    egress_to_port     = "${var.security_group_egress_to_port[0]}"
    egress_protocol    = "${var.security_group_egress_protocol[0]}"
    egress_cidr_block  = "${var.security_group_egress_cidr_block[0]}"
}