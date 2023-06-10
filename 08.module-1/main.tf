module "sample1" {
  source = "./ec2"
  name= "sample1"   ##### for this add variable "name" {} in main.tf in last and change the sample to var.sample
}

module "sample2" {
  source = "./ec2"
  name = "sample2"
}

output "pubilc_ip_sample1" {
  value = module.sample1.public_ip
}

output "pubilc_ip_sample2" {
  value = module.sample2.public_ip
}
