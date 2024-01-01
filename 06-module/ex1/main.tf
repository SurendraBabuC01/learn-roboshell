resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo Input is ${var.input}"
  }
}

variable "input" {}