variable region {
    description = "AWS region to use"
    type        = "string"
    default     = "us-east-1"
}

variable ec2_key_name {
    description = "Name of your AWS key"
    type        = "string"
}

variable ec2_public_key {
    description = "AWS ssh public key to upload"
    type        = "string" 
}
