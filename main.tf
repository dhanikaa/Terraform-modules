provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "modules_example" {
  ami = "var.ami_value"
  instance_type = "var.instance_type_value"
  tags = {
    Name = "modules-example"
  }
}