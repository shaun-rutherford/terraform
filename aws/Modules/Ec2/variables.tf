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

variable "security_group_names" {
    description = "List of security group names to assoociate with the EC2 instance"
    type        = "list"
}

variable "key_pair_name" {
    description = "Name of the key pair to upload to this instance for ssh connectivity"
    type        = "string"
}
