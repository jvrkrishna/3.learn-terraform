module "sample1" {
  source = "./ec2"
  name= "sample3"   ##### for this add variable "name" {} in main.tf in last and change the sample to var.sample
}

module "sample2" {
  source = "./ec2"
  name = "sample4"
}

######### to print output ############

output "pubilc_ip_sample3" {
  description = "Public IP address of the EC2 instance"
  value = module.sample1.public_ip
}

output "pubilc_ip_sample4" {
  description = "Public IP address of the EC2 instance"
  value = module.sample2.public_ip
}
