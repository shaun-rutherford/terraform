provider "aws" {
  region     = "us-east-1"
}

module "Production_Route_Table" {
    source = "../../../Modules/Route_Tables"
    vpc_tag_name = "${var.route_table_vpc_tag_name[0]}"
    tag_name     = "${var.route_table_tag_name[0]}"
    cidr_block   = "${var.route_table_cidr_block[0]}"
}
