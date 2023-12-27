output "sample_string" {
  value = var.sample_string
}

output "sample_string1" {
  value = "Value of sample string is ${var.sample_string}"
}

output "sample_number" {
  value = var.sample_number
}

output "sample_boolean" {
  value = var.sample_boolean
}

output "sample_list" {
  value = var.sample_list[1]
}