######create ec2 instance terraform######
resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0041cea51ab9bf7eb"]

  tags = {
    Name = "HelloWorld"
  }
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/jvrkrishna/roboshopp-ansible roboshop.yml -e role_name=frontend"
    ]
  }
}


############ aws ami id datasource terraform #############
data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}
