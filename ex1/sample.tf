resource "aws_instance" "test" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}

data "aws_ami" "example" {
  owners            = "973714476881"
  most_recent      = true
  }

output "ami_id" {
  value = data.aws_ami.example.image_id
}


output "private_ip" {
  value = aws_instance.test.private_ip
}