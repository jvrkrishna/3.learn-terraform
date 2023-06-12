############ create ec2 instance in terraform ###############
resource "aws_instance" "web" {
  for_each = var.instances
  ami           = data.aws_ami.example.id
  instance_type = lookup(each.value, "instance_type", "t3.small" )

  tags = {
    Name = var.instances[count.index]    ####### or also use element(var.instances, count.index)
  }
}

############## create aws_ami in terraform ##############
data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


variable "instances" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.small"
    }
    frontend = {
      name = "mongodb"
    }
    catalogue = {
      name = "catalogue"
      instance_type = "t3.small"
    }
  }
}