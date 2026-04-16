variable "region" {
  description = "AWS region for all resources."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name."
  type        = string
  default     = "platform-eks"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS control plane."
  type        = string
  default     = "1.30"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones used for public and private subnets."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs for worker nodes and internal services."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs for load balancers."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "node_instance_types" {
  description = "Instance types for the managed node group."
  type        = list(string)
  default     = ["t3.large"]
}

variable "node_desired_size" {
  description = "Desired node count for the default managed node group."
  type        = number
  default     = 3
}

variable "node_min_size" {
  description = "Minimum node count for the default managed node group."
  type        = number
  default     = 2
}

variable "node_max_size" {
  description = "Maximum node count for the default managed node group."
  type        = number
  default     = 6
}

variable "node_disk_size" {
  description = "Root volume size in GiB for managed node group instances."
  type        = number
  default     = 80
}

variable "external_dns_domain_filters" {
  description = "Optional hosted zone domain filters for ExternalDNS. Empty list manages all visible zones."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Common tags to apply to all resources."
  type        = map(string)
  default = {
    project     = "platform"
    environment = "dev"
    managed_by  = "terraform"
  }
}
