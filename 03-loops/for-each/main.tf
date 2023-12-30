variable "fruits" {
  default = {
    apple = {
      name  = "apple"
      count = 10
    }
    mango = {
      name  = "mango"
      count = 100
    }
    banana = {
      name  = "banana"
      count = 200
    }
  }
}

variable "fruits1" {
  default = {
    name     = apple
    quantity = 100
    colour   = red
  }
}

variable "vegetables" {
  default = ["carrot", "capsicum", "onion"]
}

resource "null_resource" "vegetables" {
  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo Vegetable is ${each.key}"
  }
}

resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit - ${each.value["name"]} - ${each.value["count"]}"
  }
}

resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo Fruit - ${each.value["name"]}"
  }
}