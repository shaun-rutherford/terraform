variable vpc_tag_name {
    description = "Name of the VPC Subnet"
    type        = "string"
}
variable tag_name {
    description = "Name of the Subnet"
    type        = "string"
}

variable cidr_block {
    description = "CIDR block of the subnet you want to create"
    type        = "string"
}