# Security Policy

## Security Practices in This Repository

- Terraform state files are excluded from Git.
- `.env` files and private key files are excluded from Git.
- Local TLS certificates are not committed.
- Application secrets are read from environment variables.
- GitHub Actions AWS deployment is designed for OIDC instead of long-lived AWS keys.
- RDS storage encryption and backups are enabled through Terraform configuration.
- S3 public access controls and server-side encryption are configured for the frontend bucket.
- Security scanning is included through Trivy, CodeQL, Checkov, TFLint, and Dependency Review.
- SBOM generation is included for frontend and backend components.

## Do Not Commit

```text
*.tfstate
*.tfvars
.env
.env.*
*.pem
*.key
AWS access keys
JWT secrets
DB passwords
```

## Reporting Issues

For portfolio use, open a GitHub issue with the affected component, expected behavior, and steps to reproduce.
