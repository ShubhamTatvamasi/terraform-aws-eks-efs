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
terraform apply -auto-approve
```

Update kubeconfig:
```bash
aws eks update-kubeconfig \
  --name $(terraform output -raw cluster_name) \
  --region $(terraform output -raw region)
```

Destroy cluster:
```bash
terraform destroy -auto-approve
```
