# The AWS region where all resources will be deployed
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# A name prefix used to label all resources consistently
variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "stephen-vpc-project"
}

# The IP range for the entire VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# The IP range for the public subnet (ALB lives here)
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# The IP range for the private subnet (EC2 lives here)
variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# The availability zone to deploy into
variable "availability_zone" {
  description = "Availability zone for subnets"
  type        = string
  default     = "us-east-1a"
}

# The AMI ID for the EC2 instance (Amazon Linux 2)
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

# The size of the EC2 instance
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
