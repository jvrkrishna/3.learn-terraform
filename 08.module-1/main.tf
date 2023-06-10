module "sample1" {
  source = "./ec2"
  name= "sample1"   ##### for this add variable "name" {} in main.tf in last and change the sample to var.sample
}

module "sample2" {
  source = "./ec2"
  name = "sample2"
}

output "pubilc_ip_sample1" {
  description = "Public IP address of the EC2 instance"
  value = module.sample1.public_ip
}
