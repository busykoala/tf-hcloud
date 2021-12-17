# Hetzner Cloud with Terraform

## Getting ready

```bash
cp terraform.tfvars.sample terraform.tfvars

# add your hetzner token in terraform.tfvars
# check if ssh_public_key_path in variables.tf is correct

terraform init
terraform plan
terraform apply

terraform destroy
```
