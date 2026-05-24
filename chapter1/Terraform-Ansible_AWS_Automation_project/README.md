Terraform-Ansible AWS Automation Project

Overview :

This project demonstrates Infrastructure as Code (IaC) and Configuration Management using Terraform and Ansible on AWS.

The main objective of this project is to automate the complete server provisioning process. Terraform is used to create AWS EC2 instances, while Ansible is used to configure and manage those instances automatically after deployment.

This project helped me understand how infrastructure provisioning and configuration management work together in real-world DevOps environments.

Technologies Used :
Terraform
Ansible
AWS EC2
Ubuntu Server
SSH
Linux
VS Code
WSL (Windows Subsystem for Linux)
Project Workflow

Challenges Faced & Solutions :
Resolved SSH authentication issues caused by an invalid or corrupted .pem key file while connecting to AWS EC2 instances.
Troubleshot and fixed Terraform state lock errors using process management and terraform force-unlock commands.
Learned the importance of Terraform state management and lock mechanisms to prevent simultaneous modifications of infrastructure.
Diagnosed permission-related issues in Linux and configured proper file permissions for secure SSH access.

Step 1: Infrastructure Provisioning with Terraform

Terraform is used to create AWS resources such as:

EC2 Instance
Security Group
Network Configuration
SSH Key Integration

Terraform reads the configuration from main.tf and creates the required infrastructure in AWS.

terraform init
terraform plan
terraform apply
Step 2: Generate Inventory for Ansible

After the EC2 instance is created, its public IP address is added to the Ansible inventory file.

Example:

[web]
52.xx.xx.xx ansible_user=ubuntu

This allows Ansible to connect to the target server through SSH.

Step 3: Configure Server Using Ansible

Ansible Playbook is used to automate server configuration tasks such as:

Installing required packages
Updating the system
Managing services
Performing initial server setup


Run the playbook using:

ansible-playbook -i inventory ec2_instance_config_playbook.yaml
Project Structure
Terraform-Ansible_AWS_Automation_project/
│
├── main.tf
├── inventory
├── ec2_instance_config_playbook.yaml
├── terraform.tfstate
├── terraform.tfstate.backup
└── .terraform/


Files Description : 

File	                            Purpose
main.tf	                            Terraform configuration for AWS resources
inventory	                        Stores target server information for Ansible
ec2_instance_config_playbook.yaml	Ansible playbook for server configuration
terraform.tfstate	                Terraform state file
terraform.tfstate.backup	        Backup of Terraform state


Key Learning Outcomes : 

Understanding Infrastructure as Code (IaC)
Automating AWS resource provisioning
Managing cloud infrastructure using Terraform
Configuring servers using Ansible
Working with SSH authentication
Integrating Terraform and Ansible in a single workflow
Understanding state management and automation practices


Future Improvements :

Provision multiple EC2 instances
Enable passworldless authenticaiton using teraaform at the time of creation of instances
Create reusable Terraform modules
Use dynamic Ansible inventory
Integrate the project with Jenkins CI/CD pipelines
Store Terraform state remotely using AWS S3 and DynamoDB

Conclusion :

This project demonstrates how Terraform and Ansible can work together to automate cloud infrastructure deployment and server configuration. By combining provisioning and configuration management, the entire setup process becomes faster, consistent, and repeatable with minimal manual effort.