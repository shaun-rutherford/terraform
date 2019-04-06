data "aws_vpc" "vpc_data" {
    filter {
        name   = "tag:Name"
        values = ["${var.vpc_tag_name}"]
    }
}
resource "aws_security_group" "security_group" {
    name        = "${var.name}"
    vpc_id      = "${data.aws_vpc.vpc_data.id}"

    ingress {
        from_port   = "${var.ingress_from_port}"
        to_port     = "${var.ingress_to_port}"
        protocol    = "${var.ingress_protocol}"
        cidr_blocks = ["${var.ingress_cidr_block}"]
    }

    egress {
        from_port   = "${var.egress_from_port}"
        to_port     = "${var.egress_to_port}"
        protocol    = "${var.egress_protocol}"
        cidr_blocks = ["${var.egress_cidr_block}"]
    }

    tags {
        Name = "${var.tag_name}"
    }
}
