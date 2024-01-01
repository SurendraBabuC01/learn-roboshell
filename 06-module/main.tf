module "ex1" {
  source = "./ex1"
  input = module.dummy.input
}

module "dummy" {
  source = "./dummy"
}

