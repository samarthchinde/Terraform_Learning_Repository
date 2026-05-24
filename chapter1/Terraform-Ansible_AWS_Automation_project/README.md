# Terraform-Ansible AWS Automation Project

Automated AWS Infrastructure Provisioning and Configuration Management using Terraform and Ansible.

## Overview

This project demonstrates the implementation of Infrastructure as Code (IaC) and Configuration Management using Terraform and Ansible on AWS.

The goal of this project is to automate the provisioning and configuration of cloud infrastructure. Terraform is used to create AWS resources, while Ansible is used to configure the provisioned EC2 instance automatically. This project helped me understand how modern DevOps tools work together to create repeatable and reliable infrastructure deployments.

---

## Technologies Used

- Terraform
- Ansible
- AWS EC2
- Ubuntu Server
- SSH
- Linux
- VS Code
- WSL (Windows Subsystem for Linux)

---

## Project Workflow

### 1. Provision Infrastructure with Terraform

Terraform is used to create the required AWS infrastructure, including:

- EC2 Instance
- Security Group
- Network Configuration
- SSH Key Integration

Initialize and deploy the infrastructure using:

```bash
terraform init
terraform plan
terraform apply
```

### 2. Configure Inventory for Ansible

After the EC2 instance is created, its public IP address is added to the Ansible inventory file.

Example:

```ini
[web]
52.xx.xx.xx ansible_user=ubuntu
```

This allows Ansible to connect to the target machine using SSH.

### 3. Configure the Server Using Ansible

Ansible Playbook automates the server configuration process by performing tasks such as:

- Updating packages
- Installing required software
- Managing services
- Initial server setup and configuration

Execute the playbook using:

```bash
ansible-playbook -i inventory ec2_instance_config_playbook.yaml
```

---

## Project Structure

```text
Terraform-Ansible_AWS_Automation_project/
│
├── main.tf
├── inventory
├── ec2_instance_config_playbook.yaml
├── terraform.tfstate
├── terraform.tfstate.backup
└── .terraform/
```

### File Description

| File | Purpose |
|--------|---------|
| `main.tf` | Terraform configuration for AWS resources |
| `inventory` | Stores target server details for Ansible |
| `ec2_instance_config_playbook.yaml` | Ansible playbook used for server configuration |
| `terraform.tfstate` | Terraform state file |
| `terraform.tfstate.backup` | Backup copy of the Terraform state file |

---

## Challenges Faced & Solutions

- Resolved SSH authentication issues caused by an invalid or corrupted `.pem` key file while connecting to AWS EC2 instances.
- Troubleshot and fixed Terraform state lock errors using process management and `terraform force-unlock`.
- Configured proper Linux file permissions for secure SSH access.
- Learned how Terraform state locking prevents simultaneous infrastructure modifications and protects the state file from corruption.

---

## Key Learning Outcomes

- Understanding Infrastructure as Code (IaC)
- Automating AWS resource provisioning using Terraform
- Managing server configuration using Ansible
- Working with SSH authentication and remote access
- Integrating Terraform and Ansible in a single automation workflow
- Understanding Terraform state management and locking mechanisms
- Troubleshooting real-world deployment and configuration issues
- Improving Linux command-line and cloud administration skills

---

## Future Improvements

- Provision multiple EC2 instances using Terraform
- Implement reusable Terraform modules
- Configure dynamic inventory for Ansible
- Store Terraform state remotely using AWS S3 and DynamoDB
- Integrate the project with Jenkins for CI/CD automation

---

## Conclusion

This project demonstrates how Terraform and Ansible can work together to automate cloud infrastructure provisioning and server configuration. By combining infrastructure provisioning and configuration management, the deployment process becomes faster, consistent, scalable, and less dependent on manual intervention.