# GitHub Actions Workflow Notes

This repository is prepared as a GitHub portfolio project. To avoid noisy red failures on first upload, only one safe workflow is active by default:

- `Portfolio Validation` checks repository structure, README footer links, and the offline release-summary helper.

The advanced workflows are kept under `.github/workflows-disabled/` as reference templates:

- Frontend CI
- Backend CI
- Terraform Quality
- CodeQL
- Dependency Review
- AWS OIDC Deployment
- Terraform Drift Detection

You can move any file from `.github/workflows-disabled/` back to `.github/workflows/` when you are ready to configure the required secrets, cloud variables, and project-specific build settings.

## Why Dependabot is disabled by default

Dependabot is useful, but it can open many automatic pull requests immediately after upload. Those PRs may trigger workflows before repository secrets, Dependabot secrets, AWS OIDC role, Terraform backend, and dependency compatibility are configured. For a portfolio upload, this creates unnecessary red workflow history.

A safer example is available at:

```text
.github/dependabot.yml.disabled-example
```

To re-enable it later, rename it to:

```text
.github/dependabot.yml
```

Then adjust schedule, open PR limits, and ignored major updates based on your project readiness.
