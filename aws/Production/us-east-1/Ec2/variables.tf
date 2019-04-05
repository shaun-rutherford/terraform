variable ec2_vpc_tag_name {
    description = "Tag Name of the VPC"
    type        = "list"
}
variable ec2_tag_name {
    description = "Tag Name of the EC2 Instance"
    type        = "list"
}
variable ec2_ami_id {
    description = "AMI ID to use for EC2 Instance"
    type        = "list"
}
variable ec2_instance_type {
    description = "Instance type for EC2 instance"
    type        = "list"
}
variable ec2_create_elastic_ip {
    description = "Does your EC2 instance need an elastic IP"
    type        = "list"
}