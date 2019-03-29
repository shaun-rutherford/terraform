data "aws_vpc" "vpc_data" {
    filter {
        name = "tag:Name"
        values = ["${var.vpc_tag_name}"]
    }
}
data "aws_internet_gateway" "gateway" {
    filter {
        name = "tag:Name"
        values = ["${var.vpc_tag_name}"]
    }
}

resource "aws_route_table" "route_table" {
    vpc_id = "${data.aws_vpc.vpc_data.id}"

    route {
        cidr_block = "${var.cidr_block}"
        gateway_id = "${data.aws_internet_gateway.gateway.id}"
    }

    tags = {
        Name = "${var.tag_name}"
    }
}
