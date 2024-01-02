resource "aws_instance" "instance" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
}

output "private_ip" {
  value = aws_instance.instance.private_ip
}