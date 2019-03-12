data "aws_vpc" "vpc_data" {
    filter {
        name = "tag:Name"
        values = ["${var.vpc_tag_name}"]
    }
}

resource "aws_internet_gateway" "gateway" {
    vpc_id = "${data.aws_vpc.vpc_data.id}"

    tags = {
        Name = "${var.tag_name}"
    }
}
