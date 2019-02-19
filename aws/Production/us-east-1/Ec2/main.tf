provider "aws" {
  region     = "${var.region}"
}

module "ec2_keys" {
    source     = "../../../Modules/key_pair"
    public_key = "${var.ec2_public_key}"
    key_name   = "${var.ec2_key_name}"
}
