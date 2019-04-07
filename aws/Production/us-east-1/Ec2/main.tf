provider "aws" {
  region     = "us-east-1"
}

module "Production_EC2" {
    source               = "../../../Modules/Ec2"
    vpc_tag_name         = "${var.ec2_vpc_tag_name[0]}"
    tag_name             = "${var.ec2_tag_name[0]}"
    instance_type        = "${var.ec2_instance_type[0]}"
    ami_id               = "${var.ec2_ami_id[0]}"
    create_elastic_ip    = "${var.ec2_create_elastic_ip[0]}"
    security_group_names = ["${var.ec2_security_group_names[0]}"]
    key_pair_name        = "${var.ec2_key_pair_name[0]}"
}
