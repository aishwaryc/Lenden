provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devsecops_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.secure_sg.id]

  tags = {
    Name = "DevSecOps-Secured-EC2"
  }
}

resource "aws_security_group" "secure_sg" {
  name = "secure-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_IP/32"] # ✅ FIXED
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
