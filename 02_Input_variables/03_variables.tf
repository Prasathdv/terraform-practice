variable "amz_ami" {
  type        = string
  description = "Latest amazon linux distro ami for us-east-1 region"
  default     = "ami-090fa75af13c156b4"
}

variable "instance_type" {
  type        = string
  description = "vm instance type - t3 micro"
  default     = "t3.micro"
}

variable "vpc_region" {
  type        = string
  description = "vpc region"
  default     = "us-east-1"
}

variable "aws-key-pair" {
  type        = string
  description = "aws key pair thats need to be associated with ec2 instance"
  default     = "terraform-key"
}