# Screenshots Guide

The README already includes existing project snapshots from:

```text
static/images/project.png
static/images/cicd/frontend.png
static/images/cicd/backend.png
infra/static/images/architecture.png
infra/static/images/cicd.png
```

Recommended extra screenshots to add later:

1. GitHub Actions successful frontend pipeline
2. GitHub Actions successful backend pipeline
3. Terraform quality workflow
4. CloudFront distribution
5. ECS service running
6. ALB target group health
7. RDS instance private subnet view
8. Application UI running locally or through CloudFront

Place future images under:

```text
docs/images/
```

Then reference them in README like:

```md
![ECS Service](docs/images/ecs-service.png)
```
