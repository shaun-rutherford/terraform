variable "aws_environment" {
    description = "Environment name, such as development, production, stage"
}

variable "aws_application" {
    description = "Application name, such as puppet, network etc"
}

variable "aws_region" {
    description = "aws region, such as us-east-1, us-west-2"
}

locals {
 aws_name_prefix = "${var.aws_region}_${var.aws_environment}_${var.aws_application}"
}

variable "aws_access_key" {
    description = "Your aws access key, https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html"
}

variable "aws_secret_key" {
    description = "Your aws secret key, https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html"
}
