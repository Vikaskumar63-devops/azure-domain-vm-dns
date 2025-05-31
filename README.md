# Azure VM with Custom Domain using Azure DNS and Terraform

## What it does

- Creates an Azure Resource Group and Virtual Network with subnet
- Creates a Linux VM with a public IP, installs nginx web server
- Creates Azure DNS Zone for your domain
- Creates an A record pointing the domain to the VM’s public IP
- Outputs DNS zone name servers to update at your domain registrar

## How to use

1. Set your domain name in `variables.tf` (example.com)
2. Run `terraform init`
3. Run `terraform apply` and confirm
4. Update your domain registrar NS records to the Azure DNS name servers output by Terraform
5. Wait for DNS propagation (can take some hours)
6. Access http://yourdomain.com and see the nginx welcome page

## Important

- Your domain registrar must allow you to update NS records.
- This example uses password auth SSH; consider using SSH keys for production.
- Destroy resources with `terraform destroy` when done.
