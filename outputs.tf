# The ID of the VPC that was created
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# The ID of the public subnet
output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

# The ID of the private subnet
output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

# The ID of the EC2 instance
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}

# The private IP of the EC2 instance
output "ec2_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = module.ec2.private_ip
}

# The security group ID attached to the EC2 instance
output "ec2_security_group_id" {
  description = "The security group ID attached to EC2"
  value       = module.security_groups.ec2_sg_id
}
