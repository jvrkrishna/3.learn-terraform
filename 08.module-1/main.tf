module "sample1" {
  source = "./ec2"
  name= "sample1"   ##### for this add variable "name" {} in main.tf in last and change the sample to var.sample
}

module "sample2" {
  source = "./ec2"
  name = "sample2"
}
