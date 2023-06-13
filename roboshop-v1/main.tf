module "frontend" {
  source = "./ec2"
  Name = "frontend"
}

module "mongodb" {
  source = "./ec2"
  Name = "mongodb"
}

module "catalogue" {
  source = "./ec2"
  Name = "catalogue"
}


