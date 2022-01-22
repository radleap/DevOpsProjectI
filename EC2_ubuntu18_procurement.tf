variable "AWS_REGION" {
  description = "AWS region"
  type        = string
}
variable "AWS_ACCESS_KEY" {
  description = "AWS access key"
  type        = string
}
variable "AWS_SECRET_KEY" {
  description = "AWS secret key"
  type        = string
}

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
 region = var.AWS_REGION
 access_key = var.AWS_ACCESS_KEY
 secret_key = var.AWS_SECRET_KEY
}

# Deploying an EC2 Instance
resource "aws_instance" "terra-instance-slave2" {
 ami = "ami-0e472ba40eb589f49"
 instance_type = "t2.micro"
 tags = {Name = "terra-instance-slave2"}
}
