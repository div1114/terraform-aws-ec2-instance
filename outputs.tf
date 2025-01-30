# File: outputs.tf

output "instance_id" {
  value       = aws_instance.this.id
  description = "ID of the EC2 instance"
}

output "instance_public_ip" {
  value       = aws_instance.this.public_ip
  description = "Public IP address of the EC2 instance"
}

output "security_group_id" {
  value       = aws_security_group.this.id
  description = "ID of the security group"
}