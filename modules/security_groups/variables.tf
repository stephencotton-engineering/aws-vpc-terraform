# The name prefix used to label all security group resources
variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
}

# The VPC ID to attach the security groups to
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
