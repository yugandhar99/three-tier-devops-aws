# GenAI Enhancement

This project includes an optional AI-ready release summary workflow idea.

## Goal

Use AI to summarize DevOps release risk from:

- Git commit messages
- Frontend/backend build status
- Terraform plan output
- Trivy scan findings
- SBOM artifact presence
- Drift detection results

## Current Implementation

The script runs in offline mode and creates a practical release summary without requiring an API key:

```bash
python scripts/genai_release_summary.py --mode offline
```

## Future Upgrade

This can be connected to Amazon Bedrock, OpenAI, or an internal enterprise AI gateway. The recommended production pattern is:

```text
GitHub Actions artifact output
  → Summary script
  → AI provider through short-lived token / secret manager
  → Release note or pull request comment
```

## Interview Talking Point

“I added an AI-ready release summary step to convert pipeline outputs, drift checks, and vulnerability scan summaries into a simple release-risk note. This reduces manual review effort and aligns the project with current AIOps and DevOps productivity trends.”
