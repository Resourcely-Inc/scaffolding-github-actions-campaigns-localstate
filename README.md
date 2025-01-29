# Resourcely Github Actions Scaffolding

This repository demonstrates how to integrate Resourcely into
repository that used Github Actions as the Terraform runner.

It contains a [workflow](.github/workflows/terraform.yml) that runs
`terraform plan` and then uses the [Resourcely Github
Action](https://github.com/Resourcely-Inc/resourcely-action) to
evaluate guardrails on that plan.

## Assumptions

This repository uses Github Actions to run `terraform plan` and
`terraform apply`.

If you use a different runner, see the scaffolding repository for that
runner:

- Terraform Cloud - [scaffolding-github-terraform-cloud](https://github.com/Resourcely-Inc/scaffolding-github-terraform-cloud)

## Running campaign evaluations via Github Actions (Beta)

This lets you run a state evaluation without needing CLI access. 

### Prerequisite

- An active account on https://portal.resourcely.io/
- An active list of guardrails in order to generate violations
- A valid RESOURCELY_API_TOKEN which can be obtained https://docs.resourcely.io/concepts/other-features-and-settings/settings/api-access-token-generation
- A copy of state file in JSON format - You can find example state file in our scaffolding repo - link
- A cloned copy of https://github.com/Resourcely-Inc/scaffolding-github-actions-campaigns.

To upload evaluation findings for a test state file, you can use the “Manually Triggered State Evaluation” Github action. This will block evaluations for any config root that has a campaign_config in the Resourcely yaml, so as to avoid polluting any active campaigns that target that config root.

![image](https://github.com/user-attachments/assets/9a0b2567-2d11-447e-9c23-39a95d1a2e70)


To run an evaluation, then you will need to provide the fields that identify the state file and its associated parameters. Note that you can select a branch other than main, so there’s no need to merge state files into your repo. 

A successful evaluation will write the generated findings into the backend. From there, you can interact with campaigns in all the normal ways in the UI. Subsequent state evaluations done through this specific method will update the metrics accordingly if there is a campaign that targets this repository.

Note: To avoid unexpected metrics, it’s best practices to delete any campaigns that are created against this kind of evaluation; metrics added from this cannot be selectively removed if you choose to fully set up campaign proxy evaluations for the config root in question.


### 1. Add Resourcely API Token to Github Secrets.

The Resourcely Github Action requires an API token to authenticate to
the Resourcely API.

- Generate a new API token in the [Resourcely portal](https://portal.resourcely.io/settings/generate-api-token)
- Create a new [Github repository secret](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository) named `RESOURCELY_API_TOKEN` containing this token.

### 3. Update .resourcely.yaml

`.resourcely.yaml` tells Resourcely where to find the Terraform
configs within this repo.  If you move the config out of the
repository root or add new configs in subdirectories, update the file
to reflect these changes.

