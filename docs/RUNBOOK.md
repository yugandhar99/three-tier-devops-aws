# Operations Runbook

## Local Smoke Test

```bash
cd src
docker compose up --build
```

Validate:

```bash
curl http://localhost:4200/healthz
curl http://localhost:8080/actuator/health
```

## Backend Troubleshooting

| Symptom | Check |
|---|---|
| Backend cannot start | Verify MySQL container health and `SPRING_DATASOURCE_URL` |
| Backend unhealthy in ECS | Check ALB target group health and `/actuator/health` |
| Login/API issues | Confirm `JWT_SECRET`, DB connectivity, and backend logs |
| Mail/Cloudinary features fail | Confirm environment variables or external service credentials |

## Frontend Troubleshooting

| Symptom | Check |
|---|---|
| Frontend blank page | Check browser console and API base URL configuration |
| 404 on refresh | Confirm NGINX `try_files` or CloudFront SPA routing behavior |
| Static assets stale | Invalidate CloudFront cache after frontend deployment |

## Terraform Troubleshooting

```bash
cd infra
terraform fmt -recursive
terraform init
terraform validate
terraform plan -var-file=envs/dev.tfvars -var="db_password=REPLACE_ME"
```

## Drift Detection

Use the GitHub Actions `Terraform Drift Detection` workflow. If drift is found, compare the plan with expected changes and either:

1. Import/manual reconcile the resource, or
2. Apply Terraform to return the environment to the desired state.

## Rollback Guidance

- Frontend: redeploy previous S3 artifact and invalidate CloudFront.
- Backend: update ECS service to previous known-good image tag.
- Database: use RDS automated backups/snapshots, depending on recovery need.
