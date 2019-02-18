module "global_provider" {
    source = "../../../Modules/provider"
    region     = "${var.global_region}"
    access_key = "${var.global_access_key}"
    secret_key = "${var.global_secret_key}"
}
