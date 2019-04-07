data "aws_subnet" "subnet" {
  filter {
    name = "tag:Name"
    values = ["${var.vpc_tag_name}"]
  }
}

data "aws_security_groups" "security_groups" {
  filter {
    name = "group-name"
    values = ["${var.security_group_names}"]
  }
}

resource "aws_instance" "instance" {
  ami                    = "${var.ami_id}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${data.aws_subnet.subnet.id}"
  vpc_security_group_ids = ["${data.aws_security_groups.security_groups.ids}"]
  key_name               = "${var.key_pair_name}"

  tags {
    name = "${var.tag_name}"
  }

}

resource "aws_eip" "lb" {
  instance = "${aws_instance.instance.id}"
  vpc      = "${var.create_elastic_ip}"
}