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

## Modules
I've written my code to take advantage of modules (re-usable code) as much as possible.  I'll outline each module below to explain how they work and examples of how to utilize them yourself.

#### key_pair
This module adds an ssh-key to an EC2 environment in a region of your choosing.

key_pair is a string in the module (can only send one at a time to the resource) but is a list in ec2 vars so that you can send more then one key pair.
use index numbers to seperate them out in main.tf