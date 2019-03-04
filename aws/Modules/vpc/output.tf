output "${var.vpc_name.vpc_id}" {
    value = "${module.vpc_name.id}"
}
