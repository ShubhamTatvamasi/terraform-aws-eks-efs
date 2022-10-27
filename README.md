# terraform-aws-eks-efs

Initalize Terraform:
```bash
terraform init -upgrade
```

Deploy EKS cluster:
```bash
terraform apply -target=module.eks -auto-approve
```

Deploy EFS:
```bash
terraform apply
```
