# Terraform AWS Environment 🚀

## Overview
Automated provisioning of a secure and scalable AWS environment using Terraform. This repository demonstrates how to set up a complete AWS stack, including VPC, EC2, RDS, and S3.

## Features
- **VPC**: Custom CIDR block, public subnets.
- **EC2**: Launch scalable compute resources.
- **RDS**: Provision a MySQL database instance.
- **S3**: Create secure, versioned storage buckets.

## Repository Structure
```plaintext
terraform-aws-environment/
├── modules/                   # Reusable modules for AWS resources
├── envs/                      # Environment-specific configurations (dev, prod)
├── main.tf                    # Main Terraform configuration
├── variables.tf               # Global variables
├── outputs.tf                 # Global outputs
├── backend.tf                 # Remote state configuration
├── terraform.tfvars           # Default variable values
├── README.md                  # Documentation
