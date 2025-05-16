Terraform Project Documentation - AWS EC2 Web Server Setup

🚀 Project Overview

This project aims to automate the deployment of an AWS EC2 Web Server using Terraform, following best practices for Infrastructure as Code (IaC). The setup is configured to support multiple environments (Development and Production) using Terraform Workspaces.

📌 Project Goals

Automate the deployment of an AWS EC2 Web Server using Terraform.

Implement a modular setup with separate Network and Compute modules.

Set up multi-environment support (Development and Production) using Terraform Workspaces.

Follow best practices for security by ensuring sensitive state files are excluded from version control.

Steps Taken:

1. Initial Project Planning

Decided to automate an AWS EC2 Web Server setup using Terraform.

Defined the project goals (multi-environment, modular setup, secure configuration).

2. Setting Up the Project Directory

Created a clean project directory structure:
aws-ec2-web-server-terraform/
├── main.tf
├── variables.tf
├── modules/
│   ├── compute/
│   └── network/
└── terraform.tfstate.d/ (ignored in .gitignore)

3. Configuring Terraform Modules

Created a Network module (VPC, Subnet, Route Table, Internet Gateway).

Created a Compute module (EC2 instance setup).

Ensured the modules were reusable and parameterized.

4. Implementing Multi-Environment Setup

Configured Terraform Workspaces for Development and Production.

Used the following commands:
Used the following commands:

terraform workspace new dev
terraform workspace new prod

The state files for each environment were isolated in terraform.tfstate.d/ (ignored for security).

5. Troubleshooting Git and Security Issues

Encountered multiple Git issues (state files too large, SSH key problems).

Solved GitHub upload issues by cloning the repo and pushing changes through the clone.

Configured .gitignore to securely exclude sensitive files

6. Finalizing the Project

Successfully deployed EC2 instances in both Development and Production environments using Terraform.

Verified that the project was secure, modular, and scalable.

Documented the multi-environment setup in the README.md.

📌 Key Achievements

Automated AWS EC2 Web Server setup using Terraform.

Implemented a secure, modular, multi-environment setup.

Overcame multiple Git issues (SSH, state file size) and solved them using a Git clone and push strategy.

