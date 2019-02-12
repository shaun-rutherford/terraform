module "ec2_variables" {
    source = "../../../Modules"
    public_key = "${var.ec2_public_key}"
    region     = "${var.ec2_region}"
    access_key = "${var.ec2_access_key}"
    secret_key = "${var.ec2_secret_key}"
    key_name   = "${var.ec2_key_name}"
}
