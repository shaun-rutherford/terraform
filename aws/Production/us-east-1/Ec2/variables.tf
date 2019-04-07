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

variable "ec2_security_group_names" {
    description = "List of security group names to assoociate with the EC2 instance"
    type        = "list"
}

variable "ec2_key_pair_name" {
    description = "Name of the key pair to upload to this instance for ssh connectivity"
    type        = "list"
}
