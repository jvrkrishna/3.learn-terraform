resource "aws_instance" "web" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}