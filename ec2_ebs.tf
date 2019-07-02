resource "aws_instance" "srv" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  count         = "${var.instance_count}"
  tags          = "${var.tags}"
}
