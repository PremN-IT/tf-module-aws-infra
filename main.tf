module "vpc" {
source = "./tf-module-aws-infra/module/Networking"
vpc_cidr = var.vpc_cidr
availability_zones = var.availability_zones
private_subnet_cidrs = var.private_subnet_cidrs
public_subnet_cidrs = var.public_subnet_cidrs
cluster_name  = var.cluster_name
  
}

module "eks" {
source = "./tf-module-aws-infra/module/EKS"
 cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnet_ids
  node_groups     = var.node_groups
}