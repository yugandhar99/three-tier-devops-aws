# Portfolio Notes

## Project Summary

Productionized a three-tier web application using AWS, Terraform, Docker, ECS Fargate, RDS, S3, CloudFront, Route 53, and GitHub Actions. The project demonstrates secure CI/CD, infrastructure as code, DevSecOps scanning, SBOM generation, drift detection, and operational documentation.

## Resume Bullet

Built a three-tier AWS DevOps platform using React, Spring Boot, MySQL, Docker, Terraform, ECS Fargate, RDS, S3, CloudFront, Route 53, and GitHub Actions, adding OIDC-based AWS authentication, Trivy scanning, CodeQL, Checkov, TFLint, CycloneDX SBOM generation, drift detection, and operational runbooks.

## Interview Explanation

This project is a three-tier application deployment on AWS. I kept the application recipe as React frontend, Spring Boot backend, and MySQL database, then focused on productionizing the DevOps layer. I used Terraform modules to define the VPC, S3/CloudFront frontend, ECS Fargate backend, RDS MySQL database, Route 53, and ACM certificates.

I also improved the CI/CD and security side by adding GitHub Actions for frontend and backend validation, Terraform quality checks, Trivy scanning, SBOM generation, CodeQL, dependency review, and drift detection. For AWS deployment, I documented an OIDC-based authentication approach instead of storing long-lived AWS keys in GitHub secrets.

## Best GitHub Repo Name

```text
three-tier-devops-aws
```

## Best GitHub Description

```text
Three-tier AWS DevOps platform using React, Spring Boot, MySQL, Docker, Terraform, ECS Fargate, RDS, S3, CloudFront, GitHub Actions OIDC, Trivy, CodeQL, SBOM, and drift detection.
```
