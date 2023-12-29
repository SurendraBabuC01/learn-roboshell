resource "null_resource" "null" {
  count = 10
}

variable "fruits" {
  default = ["apple", "mango", "banana"]
}

resource "null_resource" "fruits" {
  count = length(var.fruits)
}