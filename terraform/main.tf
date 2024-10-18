module "module1" {
    source = "./module1"  
}
module "module2" {
    source = "./module2"
    subnet_id = module.module1.subnet_id
  
}
