data "aws_vpc" "vpc_data" {
    filter {
        name = "tag:Name"
        values = ["main1"]
    }
}
resource "aws_internet_gateway" "gateway" {
    vpc_id = "${var.vpc_id}"

    tags = {
        Name = "${var.internet_gateway_name}"
    }
}
