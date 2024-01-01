data "aws_ami" "centos" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos.image_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${var.sg_id}"]

  tags = {
    Name = "test"
  }
}

variable "sg_id" {}