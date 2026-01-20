# To Build

- A custom VPC
- A public subnet
- An Internet Gateway
- A route table wired correctly
- A single EC2 instance inside that subnet
- SSH access using a key pair

## Requirements

### Networking

- Create a VPC with CIDR 10.0.0.0/16
- Create one public subnet with CIDR 10.0.1.0/24
- Create an Internet Gateway
- Create a route table with:
- 0.0.0.0/0 → Internet Gateway
- Associate route table to subnet

### Compute

- Launch one EC2 instance
- Instance must:
  - Be in the public subnet
  - Have a public IP
  - Use Amazon Linux 2
  - Be reachable via SSH

### Terraform hygiene

Use variables for:

- AWS region
- Instance type

Use outputs for:

- EC2 public IP
- VPC ID
