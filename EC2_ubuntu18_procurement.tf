terraform{
 required_providers {
  aws = {
   source = "hashicorp/aws"
   # optional
   version = "~> 3.0"
  }
 }
}

# Configuring Provider
provider "aws" {
 region = "us-east-1"
 access_key = "addme"
 secret_key = "addme"
}

# Deploying an EC2 Instance
resource "aws_instance" "terra-instance-slave1" {
 ami = "ami-0e472ba40eb589f49"
 instance_type = "t2.micro"
 tags = {Name = "terra-instance-slave1"}
}
