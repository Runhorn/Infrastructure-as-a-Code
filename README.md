# Infrastructure-as-a-Code
Infrastructure provisioning for Analytic Sandbox on Ubuntu 20.04.3 LTS 

## Prerequisites
Project critical infrastructure provisioning is based on Terraform code which
needs Docker and Terraform to run.

### Installing Docker on Ubuntu 
https://docs.docker.com/desktop/install/ubuntu/

https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

### Installing terraform 
https://developer.hashicorp.com/terraform/install

## Running project
Verify docker running: `sudo service --status-all`

Start docker service: `sudo service docker start`

Terraform installed: `terraform -help`

Infrastructure provisioning:
`terraform init`
`terraform plan`
`terraform apply`

Run minikube:
`minikube start --force`
Verify minikube up and running:
`minikube dashboard`
