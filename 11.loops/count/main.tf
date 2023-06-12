############ create ec2 instance in terraform ###############
resource "aws_instance" "web" {
  count = length(var.instances)
  ami           = data.aws_ami.example.id
  instance_type = "t3.small"

  tags = {
    Name = var.instances
  }
}

############## create aws_ami in terraform ##############
data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


variable "instances" {
  default = ["frontend", "mongodb", "catalogue"]
}