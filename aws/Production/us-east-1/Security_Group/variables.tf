variable security_group_vpc_tag_name {
    description = "Name of the VPC tag to associate this security group with"
    type        = "list"
}
variable security_group_tag_name {
    description = "Name of the Security Group tag"
    type        = "list"
}
variable security_group_name {
    description = "Name of your security group"
    type        = "list"
}
variable security_group_ingress_from_port {
    description = "Ingress from port number or name"
    type        = "list"
}
variable security_group_ingress_to_port {
    description = "Ingress to port number or name"
    type        = "list"
}
variable security_group_ingress_protocol {
    description = "Ingress protocol (udp/tcp)"
    type        = "list"
}
variable security_group_ingress_cidr_block {
    description = "Ingress cidr_block that can access the ports"
    type        = "list"
}
variable security_group_egress_from_port {
    description = "Egress from port number or name"
    type        = "list"
}
variable security_group_egress_to_port {
    description = "Egress to port number or name"
    type        = "list"
}
variable security_group_egress_protocol {
    description = "Egress protocol (udp/tcp)"
    type        = "list"
}
variable security_group_egress_cidr_block {
    description = "Egress cidr_block that can access the ports"
    type        = "list"
}
