# The name prefix used to label all VPC resources
variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
}

# The IP range for the entire VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

# The IP range for the public subnet
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

# The IP range for the private subnet
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

# The availability zone to deploy subnets into
variable "availability_zone" {
  description = "Availability zone for subnets"
  type        = string
}
