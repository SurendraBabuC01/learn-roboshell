variable "sample_string" {
  default = "Hello World"
}

output "sample_string" {
  value = var.sample_string
}