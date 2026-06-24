# GitHub Upload Steps

Use these steps for a clean upload without noisy workflow failures.

## 1. Create an empty GitHub repository

Recommended repo name:

```text
three-tier-devops-aws
```

Do not add README, `.gitignore`, or license from the GitHub website because this project already includes them.

## 2. Extract this ZIP

Open the extracted project folder. You should see:

```text
README.md
.github
docs
infra
scripts
src
SECURITY.md
PORTFOLIO_NOTES.md
```

## 3. Open CMD inside the project folder

Click the Windows File Explorer address bar, type:

```text
cmd
```

Then press Enter.

## 4. Push to GitHub

```bash
git init
git add .
git commit -m "Initial commit - Three Tier DevOps AWS Platform"
git branch -M main
git remote add origin https://github.com/yugandhar99/three-tier-devops-aws.git
git push -u origin main
```

## 5. What should happen in GitHub Actions

Only one workflow should run automatically:

```text
Portfolio Validation
```

It should pass because it only checks safe local project structure and documentation.

## 6. If you already uploaded the older version

Old red workflow runs remain in GitHub history. They do not disappear automatically. Push this clean version and check the latest run only.

If old Dependabot PRs already exist, close them manually. This final clean version disables active Dependabot by default.

## 7. Re-enable advanced workflows later

Advanced workflows are stored here:

```text
.github/workflows-disabled/
```

Move them back into `.github/workflows/` only after you configure AWS OIDC, repository secrets, Terraform backend, frontend/backend build settings, and security scan expectations.
