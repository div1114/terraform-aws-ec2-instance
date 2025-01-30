# AWS EC2 Instance Module

A Terraform module for creating an AWS EC2 instance with a security group.

## Usage

```terraform
module "ec2_instance" {
  source = "github.com/yourusername/aws-ec2-instance"

  ami_id          = "ami-0c94855ba95c71c99"
  instance_type   = "t2.micro"
  key_pair_name   = "my-ssh-key"
  subnet_id       = "subnet-12345678"
  vpc_id          = "vpc-12345678"
  security_group_name = "my-ec2-sg"
  tags = {
    Name        = "TestInstance"
    Environment = "Test"
  }
}