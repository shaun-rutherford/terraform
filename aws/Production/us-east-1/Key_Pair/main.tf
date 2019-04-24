provider "aws" {
  region     = "us-east-1"
}

module "srutherford_keys" {
    source     = "../../../Modules/Key_Pair"
    public_key = "${var.key_pair_public_key[0]}"
    key_name   = "${var.key_pair_key_name[0]}"
}
