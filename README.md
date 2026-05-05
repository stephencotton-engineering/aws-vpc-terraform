# AWS VPC Infrastructure — Terraform

Production-grade AWS network infrastructure built with Terraform. Implements a 
multi-tier architecture with full network isolation, automated provisioning, 
and secure access controls.

---

## Architecture Overview
Internet Gateway
│
┌────▼─────┐
│   ALB    │  (Public Subnet)
└────┬─────┘
│
┌────▼─────┐
│   EC2    │  (Private Subnet)
└────┬─────┘
│
┌────▼─────┐
│NAT Gateway│ (Outbound only)
└──────────┘

---

## What This Builds

- Custom VPC with public and private subnets across availability zones
- Internet Gateway for public traffic
- NAT Gateway for private subnet outbound access
- Application Load Balancer routing traffic to EC2 instances
- Security Groups with least-privilege rules
- IAM roles and policies for EC2 access
- Remote Terraform state using S3 backend with DynamoDB locking

---

## Project Structure
aws-vpc-terraform/
├── main.tf                  # Root module — ties everything together
├── variables.tf             # Input variable declarations
├── outputs.tf               # Output values
├── terraform.tfvars         # Variable values (not committed in production)
├── modules/
│   ├── vpc/                 # VPC, subnets, IGW, NAT, route tables
│   ├── ec2/                 # EC2 instance provisioning, IAM roles
│   └── security_groups/     # Security group rules
└── README.md

---

## Prerequisites

- Terraform >= 1.3.0
- AWS CLI configured with appropriate credentials
- An existing S3 bucket and DynamoDB table for remote state

---

## Usage

```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply infrastructure
terraform apply

# Destroy when done
terraform destroy
```

---

## Key Concepts Demonstrated

- Modular Terraform architecture
- Remote state management with S3 + DynamoDB locking
- Network segmentation with public/private subnets
- Least-privilege IAM design
- Security group layering between ALB and EC2

---

## Stack

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
