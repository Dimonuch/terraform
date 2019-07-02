variable "aws_access_key" {
  default = "---Your access key AWS---"
}

variable "aws_secret_key" {
  default = "---Your secret key AWS---"
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "ami_id" {
  default = "ami-0cd855c8009cb26ef"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = 2
}

variable "tags" {
  type = "map"

  default = {
    Team    = "DevOps"
    project = "ec2"
  }
}
