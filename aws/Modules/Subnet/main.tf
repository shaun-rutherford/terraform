data "aws_vpc" "vpc_data" {
    filter {
        name = "tag:Name"
        values = ["${var.vpc_tag_name}"]
    }
}
resource aws_subnet "subnet" {
    vpc_id = "${data.aws_vpc.vpc_data.id}"
    cidr_block = "${var.cidr_block}"

    tags = {
        Name = "${var.tag_name}"
    }
}