variable vpc_tag_name {
    description = "Tag Name of the VPC"
    type        = "string"
}
variable tag_name {
    description = "Tag Name of the EC2 Instance"
    type        = "string"
}
variable ami_id {
    description = "AMI ID used for EC2 instance"
    type        = "string"
}
variable instance_type {
    description = "Instance type for EC2 instance"
    type        = "string"
}
variable create_elastic_ip {
    description = "Does your EC2 instance need an elastic IP"
    type        = "string"
}