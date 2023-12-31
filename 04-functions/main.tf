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
