resource "aws_elb" "elb" {
  name               = "ec2elb"
  availability_zones = ["${aws_instance.srv[0].availability_zone}"]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port     = 443
    instance_protocol = "tcp"
    lb_port           = 443
    lb_protocol       = "tcp"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:22"
    interval            = 10
  }

  instances = ["${aws_instance.srv[0].id}"]

  idle_timeout = 300

  connection_draining = true

  connection_draining_timeout = 300
  tags                        = "${var.tags}"
}
