variable vpc_tag_name {
    description = "Name of the VPC tag to associate this security group with"
    type        = "string"
}
variable tag_name {
    description = "Name of the Security Group tag"
    type        = "string"
}
variable name {
    description = "Name of your security group"
    type        = "string"
}
variable ingress_from_port {
    description = "Ingress from port number or name"
    type        = "string"
}
variable ingress_to_port {
    description = "Ingress to port number or name"
    type        = "string"
}
variable ingress_protocol {
    description = "Ingress protocol (udp/tcp)"
    type        = "string"
}
variable ingress_cidr_block {
    description = "Ingress cidr_block that can access the ports"
    type        = "list"
}
variable egress_from_port {
    description = "Egress from port number or name"
    type        = "string"
}
variable egress_to_port {
    description = "Egress to port number or name"
    type        = "string"
}
variable egress_protocol {
    description = "Egress protocol (udp/tcp)"
    type        = "string"
}
variable egress_cidr_block {
    description = "Egress cidr_block that can access the ports"
    type        = "list"
}
