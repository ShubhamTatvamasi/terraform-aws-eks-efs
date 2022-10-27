module "eks" {
  source  = "ShubhamTatvamasi/eks/aws"
  version = "2.2.0"

  region        = "ap-south-1"
  capacity_type = "SPOT"
}

module "efs" {
  source  = "ShubhamTatvamasi/efs/aws"
  version = "1.1.0"

  cluster_name            = module.eks.cluster_name
  vpc_id                  = module.eks.vpc_id
  subnets                 = module.eks.subnets
  node_security_group_id  = module.eks.node_security_group_id
  oidc_provider_arn       = module.eks.node_security_group_id
  cluster_oidc_issuer_url = module.eks.node_security_group_id
}
