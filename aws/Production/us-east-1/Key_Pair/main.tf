provider "aws" {
  region     = "${var.region}"
}

module "srutherford_keys" {
    source     = "../../../Modules/key_pair"
    public_key = "${var.ec2_public_key[0]}"
    key_name   = "${var.ec2_key_name[0]}"
}
