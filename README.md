# AWS VPC Infrastructure — Terraform

Production-grade AWS network infrastructure built with Terraform. Implements a multi-tier architecture with full network isolation, automated provisioning, and secure access controls.

---

## Architecture Overview

```
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
  │NAT Gateway│  (Outbound only)
  └──────────┘
```

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

```
aws-vpc-terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── security_groups/
└── README.md
```

---

## Prerequisites

- Terraform >= 1.3.0
- AWS CLI configured with appropriate credentials
- An existing S3 bucket and DynamoDB table for remote state

---

## Usage

```bash
terraform init
terraform plan
terraform apply
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
