variable "fruits" {
  default = {
    apple = {
      name  = apple
      count = 10
    }
    mango = {
      name  = mango
      count = 100
    }
    banana = {
      name  = banana
      count = 200
    }
  }
}

resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit - ${each.key} - ${each.value["count"]}"
  }

}