# Terraform EKS Baseline

This stack provisions an end-to-end Amazon EKS platform from scratch with **zero manual console steps**:

- VPC with public and private subnets across 3 AZs
- Managed EKS control plane and managed node group
- Core EKS add-ons (`coredns`, `kube-proxy`, `vpc-cni`, `aws-ebs-csi-driver`)
- IRSA roles for EBS CSI, AWS Load Balancer Controller, and ExternalDNS
- Helm-based deployment for AWS Load Balancer Controller and ExternalDNS

## Prerequisites

- Terraform `>= 1.6.0`
- AWS credentials configured in your shell (for example via `AWS_PROFILE`)

## Usage

```bash
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
```

## Notes

- `external_dns_domain_filters` can be left empty to let ExternalDNS see all accessible hosted zones.
- The stack enables both public and private API endpoint access for cluster operations.
