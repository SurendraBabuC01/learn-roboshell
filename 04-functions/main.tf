variable "sample" {
  default = "mango"
}

output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = [
    "mango",
    123,
    true
  ]
}

output "sample1" {
  value = element(var.sample1, 2)
}

variable "sample3" {
  default = {
    abc = 123
    xyz = 456
  }
}

output "sample3" {
  value = lookup(var.sample3, "a1", "dummy")
}
