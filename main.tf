# File: main.tf

provider "aws" {
  region = var.region
}

resource "aws_security_group" "this" {
  name        = var.security_group_name
  description = "Security group for EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["183.82.163.155/32"]
  }

  tags = var.tags
}

resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.this.id]
  subnet_id              = var.subnet_id

  tags = var.tags
}