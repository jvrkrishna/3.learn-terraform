############instance price terraform datasource##################
data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "price" {
  value = data.aws_ec2_spot_price.example.spot_price
}

###### aws security group datasource terraform #######
data "aws_security_group" "selected" {
  name = "allow-all"
}

output "sgid" {
  value = data.aws_security_group.selected.id
}