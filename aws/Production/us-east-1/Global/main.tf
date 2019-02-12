module "global_variables" {
    source = "../../../Modules"
    region     = "${var.global_region}"
    access_key = "${var.global_access_key}"
    secret_key = "${var.global_secret_key}"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "ojutai_us_east_1_production_terraform_state"
    acl    = "private"

    lifecycle {
      prevent_destroy = true
    }

    versioning {
        enable = true
    }

    tags {
        "Environment" = "Production"
    }
}
