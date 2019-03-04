resource "aws_vpc" "${var.vpc_name}" {
    cidr_block       = "${var.cidr_block}"
    instance_tenancy = "${var.instance_tenancy}"

    tags {
        Name = "${var.vpc_name}"
    }
}
