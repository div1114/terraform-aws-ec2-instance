# File: variables.tf

variable "ami_id" {
  type        = string
  description = "ID of the AMI to use"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "key_pair_name" {
  type        = string
  description = "Name of the SSH key pair"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to deploy the instance in"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC where the instance will be deployed"
}

variable "security_group_name" {
  type        = string
  description = "Name of the security group"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to assign to the resources"
  default     = {}
}

variable "region" {
  type        = string
  description = "AWS region where resources will be created"
  default     = "us-west-2"
}