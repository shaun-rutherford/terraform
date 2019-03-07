variable networking_cidr_block {
    description = "IP Cidr block for subnet"
    type        = "list"
}

variable networking_vpc_name {
    description = "Name of the VPC Subnet"
    type        = "list"
}

variable networking_instance_tenancy {
    description = "A tenancy option for instances launched into the VPC"
    type        = "string"
}
