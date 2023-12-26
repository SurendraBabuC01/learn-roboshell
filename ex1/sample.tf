resource "aws_instance" "test" {
  ami           = data.aws_ami.example.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}

data "aws_ami" "example" {
  owners            = ["973714476881"]
  most_recent      = true
  }
