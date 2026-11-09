locals {
  project_name = "three-tier"
  network_cidr = "10.0.0.0/16"

  common_tags = {
    Project     = local.project_name
    ManagedBy   = "Terraform"
    Owner       = "Yugandhar"
    Repository  = "three-tier-devops-aws"
  }
}
