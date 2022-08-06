# Terraform output values
#  Public IP
output "aws-ec2-public-ip" {
  description = "public IP of ec2 instance created"
  value       = aws_instance.ec2-vm-demo.public_ip
}

# Public DNS
output "aws-ec2-public-dns" {
  description = "public dns of ec2 instance created"
  value       = aws_instance.ec2-vm-demo.public_dns
}