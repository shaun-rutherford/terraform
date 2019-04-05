data "aws_subnet" "subnet" {
  filter {
    name = "tag:Name"
    values = ["${var.vpc_tag_name}"]
  }
}

resource "aws_instance" "instance" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"

  tags {
    name = "${var.tag_name}"
  }

  subnet_id = "${data.aws_subnet.subnet.id}"
  
}

resource "aws_eip" "lb" {
  instance = "${aws_instance.instance.id}"
  vpc      = "${var.create_elastic_ip}"
}