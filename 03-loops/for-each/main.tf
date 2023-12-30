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

variable "vegetables" {
  default = ["carrot","capsicum","onion"]
}

resource "null_resource" "vegetables" {
  for_each = var.vegetables

  provisioner "local-exec" {
    command = "echo Vegetable is ${each.key}"
  }
}

resource "null_resource" "fruits" {
  for_each = toset(var.fruits)

  provisioner "local-exec" {
    command = "echo Fruit - ${each.value["name"]} - ${each.value["count"]}"
  }

}