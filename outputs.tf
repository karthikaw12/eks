output "cluster_name" {
  description = "EKS cluster name."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Public endpoint for the EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Cluster security group created by the EKS module."
  value       = module.eks.cluster_security_group_id
}

output "vpc_id" {
  description = "VPC ID for the EKS environment."
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "Private subnets used by worker nodes."
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "Public subnets used by load balancers."
  value       = module.vpc.public_subnets
}
