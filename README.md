# deploy-action
A github action to trigger a github deployment.

Currently the deployment status stays as pending because we are not handling the deployment status. Technically that should be handled by whatever you are trying to trigger with the deployment.

## Env Options

- DEPLOY_ENV: default `production`
- DEPLOY_REF: default `master`
- GITHUB_TOKEN: required
