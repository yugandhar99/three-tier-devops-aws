# Architecture

This project follows a three-tier application architecture.

## Tier 1: Frontend

- React single-page application
- Built as static assets
- Hosted on S3
- Delivered globally through CloudFront
- HTTPS through ACM certificate

## Tier 2: Backend API

- Spring Boot REST API
- Dockerized runtime
- Deployed on ECS Fargate
- Exposed through Application Load Balancer
- Health check path: `/actuator/health`
- CloudWatch logs enabled through ECS

## Tier 3: Database

- Amazon RDS MySQL
- Private subnet placement
- Security group allows traffic only from backend ECS service
- Storage encryption enabled
- Backup retention configurable by environment
- Multi-AZ enabled for production profile

## CI/CD and DevSecOps

- GitHub Actions validates frontend, backend, and Terraform changes
- Trivy scans filesystem and Docker image risk
- SBOM artifacts are generated in CycloneDX JSON format
- CodeQL scans Java and JavaScript/TypeScript code paths
- Checkov and TFLint validate Terraform quality and security posture
- Deployment workflow is designed around GitHub OIDC for AWS access

## Security Boundaries

```text
Internet
  ↓ HTTPS
CloudFront / ALB
  ↓ controlled origin or target group access
S3 / ECS
  ↓ private network only
RDS MySQL
```
