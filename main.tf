provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
    source = "./modules/ec2-instance"
    ami_value = "ami-02db68a01488594c5"
    instance_type_value = "t3.micro"
}