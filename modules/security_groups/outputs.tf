# Output the ALB security group ID
output "alb_sg_id" {
  description = "The ID of the ALB security group"
  value       = aws_security_group.alb_sg.id
}

# Output the EC2 security group ID
output "ec2_sg_id" {
  description = "The ID of the EC2 security group"
  value       = aws_security_group.ec2_sg.id
}
