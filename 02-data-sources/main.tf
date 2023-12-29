/*variable "security_group_name" {
  default = "allow-all"
}

data "aws_security_group" "selected" {
  name = var.security_group_name
}

output "security_group" {
  value = data.aws_security_group.selected.id
}*/

data "aws_security_groups" "test" {
}

output "all-sg" {
  value = data.aws_security_groups.test
}