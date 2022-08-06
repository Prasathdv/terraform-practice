resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "ssh aws security group"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all inbound traffic to ssh port 22"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic to all ports/ip"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}

resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "web (http, https) aws security group"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    description = "Allow all inbound traffic to http port 80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "Allow all inbound traffic to https port 443"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    description = "Allow all outbound traffic to all ports/ip"
  }
}