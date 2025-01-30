module "ec2_instance" {
  source = "../"

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