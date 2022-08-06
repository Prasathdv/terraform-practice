# Terraform block
terraform {
  #   required_version = "~> 0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

# Provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# resource block
resource "aws_instance" "demo-ec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    Name = "demo-ec2"
  }
}