terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
provider "aws" {
  region     = "us-east-1"
  access_key = "xxx"
  secret_key = "xxx"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform EC2"
    }
}
