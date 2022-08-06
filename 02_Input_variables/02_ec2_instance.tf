resource "aws_instance" "ec2-vm-demo" {
  ami                    = data.aws_ami.amz_ami_id.id
  instance_type          = var.instance_type
  key_name               = var.aws-key-pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data = file("${path.module}/app1_install.sh")
  tags = {
    "Name" = "ec2-vm-demo"
  }
}