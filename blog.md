# Building a Three-Tier DevOps Platform on AWS

This project shows how a traditional frontend-backend-database application can be modernized into a production-style AWS DevOps platform.

The application follows a simple recipe: React for the frontend, Spring Boot for the backend API, and MySQL for the database. The DevOps upgrade focuses on making this application deployable, repeatable, observable, and secure using cloud-native practices.

## What was improved

- Dockerized frontend and backend runtimes
- Local Docker Compose workflow
- Terraform modules for AWS infrastructure
- ECS Fargate backend deployment pattern
- S3 and CloudFront frontend hosting pattern
- RDS MySQL database layer
- GitHub Actions CI/CD
- OIDC-ready AWS deployment workflow
- Trivy scanning and SBOM generation
- CodeQL, Checkov, TFLint, and dependency review
- Drift detection workflow
- Operational runbook and architecture documentation
- AI-ready release summary script

## Why this matters

In real DevOps work, the goal is not only to run an application. The goal is to make the application repeatable, secure, scalable, and easy to operate. This project demonstrates that mindset by combining cloud infrastructure, automated validation, security scanning, and documentation in one portfolio-ready repository.
