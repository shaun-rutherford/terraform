# Terraform

## Description

Welcome to my AWS terraform project.  This project is mostly a way for me to learn AWS+Terraform but you are free to use the code I've provided if it makes your life easier.

Explaining how AWS works is a bit beyond this README but everything can easily be found on Google.

## Setup
You'll need Terraform installed and it is highly advised to install the AWS CLI tools but it is not required.

https://www.terraform.io/downloads.html

https://aws.amazon.com/cli/

If you install the AWS CLI tools you'll want to configure it with your access and secret key
```
aws configure
```
If you prefer not to use the AWS CLI tools you'll need to add your access and secret key to the output.tf S3 backend of each section.

Terraform backend is the first thing to happen in the Terraform script and it cannot use variable interpolation as a consequence of that.  What this essentially means is that your access and secret keys must be hard coded somewhere in order to utilize the S3 backend.

The first thing you MUST run when first starting a new availability zone is the Global S3 code.  This sets up the S3 bucket and dynamodb table for use by all the other modules.  This is very important as it's how we are going to keep track of state in Terraform.

## Modules
I've written my code to take advantage of modules (re-usable code) as much as possible.  I'll outline each module below to explain how they work and examples of how to utilize them yourself.

All modules have several variables of type string since each resource must be called once during creation but the same variable can be of type list outside the module so we can iterate over them and build multiple resources without having to rewrite code.

All entries require you to manually set the provider region.  This was a design decision since I believe you should seperate out your code by region and setting the region variable multiple times would be redundant.

To manage multiple resources of the same type add additional entries into the list.
Example multiple VPCs:
```
vpc_cidr_block       = ["172.32.1.0/24", "172.32.2.0/24"]
vpc_tag_name         = ["main1", "second"]
vpc_instance_tenancy = "default"
```

## KEY_PAIR
This module adds an ssh-key to an EC2 environment in a region of your choosing.

Example:
```
module "<username>_key" {
    source     = "../../../Modules/key_pair"
    public_key = "${var.ec2_public_key[0]}"
    key_name   = "${var.ec2_key_name[0]}"
}
```

Example tfvars:
```
key_pair_public_key = ["ssh-rsa <SSH KEY STRING HERE>"]
key_pair_key_name   = ["srutherford"]
```

#### VPC
This module creates a VPC in a region of your choosing.

Example:
```
module "<VPC NAME>" {
    source           = "../../../Modules/VPC"
    cidr_block       = "${var.vpc_cidr_block[0]}"
    tag_name         = "${var.vpc_tag_name[0]}"
    instance_tenancy = "${var.vpc_instance_tenancy}"
}
```

Example tfvars:
```
vpc_cidr_block = ["172.32.1.0/24"]
vpc_tag_name = ["Production"]
vpc_instance_tenancy = "default"
```

#### GATEWAY
This module creates a new aws gateway attached to a VPC of your choosing.  The gateway uses the VPC Name tag to know what VPC ID to attach to.
```
module "<Gateway Name>" {
    source       = "../../../Modules/Gateway"
    vpc_tag_name = "${var.gateway_vpc_tag_name[0]}"
    tag_name     = "${var.gateway_tag_name[0]}"
}
```

Example tfvars:
```
gateway_vpc_tag_name = ["Production"]
gateway_tag_name = ["Production"]
```

#### SUBNET
This module creates a new aws subnet inside a VPC of your choosing.  The Subnet uses the VPC Name tag to know what VPC ID to attach to.
```
module "<Subnet Name>" {
    source = "../../../Modules/Subnet"
    vpc_tag_name = "${var.subnet_vpc_tag_name[0]}"
    tag_name     = "${var.subnet_tag_name[0]}"
    cidr_block   = "${var.subnet_cidr_block[0]}"
}
```

Example tfvars:
```
vpc_cidr_block = ["172.32.1.0/24"]
vpc_tag_name = ["Production"]
vpc_instance_tenancy = "default"
```