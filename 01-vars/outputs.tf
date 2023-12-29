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

output "sample_list_2" {
  value = var.sample_list[1]
}

output "sample_list_3" {
  value = var.sample_list[2]
}

output "sample_dic_num1" {
  value = var.sample_dic["number1"]
}

output "sample_dic_boolean1" {
  value = var.sample_dic["boolean1"]
}

output "env" {
  value = var.env
}

output "num1" {
  value = var.num1
}

output "sample" {
  value = var.sample
}