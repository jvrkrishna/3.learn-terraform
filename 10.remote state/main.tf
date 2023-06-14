##### Terraform state files ############
terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

#### storing some output ####
output "demo"{
  value = "Hello world"
}