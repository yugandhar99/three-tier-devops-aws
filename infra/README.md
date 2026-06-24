# Infrastructure as Code - Three-Tier AWS Platform

This folder contains Terraform code for deploying a three-tier AWS application platform.

## Modules

```text
modules/network   VPC, public subnets, private subnets, NAT gateway
modules/frontend  S3, CloudFront, origin access control, TLS config
modules/backend   ECS Fargate service, ALB, target group, health checks
modules/db        RDS MySQL, private subnet group, encryption, backups
modules/domain    Route 53 hosted zone and ACM certificates
```

## Architecture

![Architecture](static/images/architecture.png)

## CI/CD Flow

![CI/CD](static/images/cicd.png)

## Local Commands

```bash
terraform fmt -recursive
terraform init
terraform validate
terraform plan -var-file=envs/dev.tfvars -var="db_password=REPLACE_WITH_SECURE_PASSWORD"
```

## Secure State Handling

Terraform state files are intentionally not committed to GitHub. Use a secure remote backend such as S3 with locking or Terraform Cloud/HCP Terraform.

A local `backend.tf` is not required for portfolio review. Configure your own backend before applying in a real AWS account.

## GitHub Actions OIDC

The deployment workflow expects:

```text
Repository secret: AWS_OIDC_ROLE_ARN
Repository secret: DB_PASSWORD
Repository variable: AWS_REGION
```

The IAM role should trust GitHub OIDC for this repository and follow least privilege.
