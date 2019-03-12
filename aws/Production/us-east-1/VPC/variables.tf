variable vpc_cidr_block {
    description = "IP Cidr block for subnet"
    type        = "list"
}

variable vpc_instance_tenancy {
    description = "A tenancy option for instances launched into the VPC"
    type        = "string"
}

variable vpc_tag_name {
    description = "Name of the VPC Subnet"
    type        = "list"
}