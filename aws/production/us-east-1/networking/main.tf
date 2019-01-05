module "network_variables" {
    source = "../../modules/networking"


}

module "global_variables" {
    source = "../../modules/globals"

    environment = "${var.aws_environment}"
    application = "${var.aws_application}"
    region      = "${var.aws_region}"
    access_key  = "${var.aws_access_key}"
    secret_key  = "${var.aws_secret_key}"
    name_prefix = "${local.aws_name_prefix}"
}
