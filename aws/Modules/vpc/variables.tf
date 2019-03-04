variable cidr_block {
    description = "IP Cidr block for subnet"
    type        = "string"
}

variable vcp_name {
    description = "Name of the VPC Subnet"
    type        = "string"
}

variable instance_tenancy {
    description = "A tenancy option for instances launched into the VPC"
    type        = "string"
}