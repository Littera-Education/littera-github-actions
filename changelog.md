# v6.4.0 (05/16/2023)
* fetch-depth set to 0 for eks-deploy-v2.yml

# v6.4.0 (05/12/2023)
* NPM pass application version to sonar during analysis so it understands what "new code" is.

# v6.3.0 (04/21/2023)
* Allow custom npm install commands to be passed in.
* NPM prune dev dependencies when making an artifact.

# v6.2.2 (04/17/2023)
* Only install the `@commitlint/config-conventional` in `pr-title-lint` if its not already installed.

# v6.2.1 (04/17/2023)
* Add default configuration to `pr-title-lint` if configuration does not already exist.

# v6.2.0 (04/17/2023)
* Add `pr-title-lint` pipeline to validate PR title follows conversational commits scheme. This is targeted to npm repos.

# v6.1.1 (04/03/2023)
* Typo in job name (copy/paste fail)
* Switch `serverless-deploy` aws credentials to `v2`

# v6.1.0 (04/03/2023)
* Add `serverless-deploy` to support the serverless repos

# v6.0.0 (3/29/2023)
* switch from sonar onprem to sonarcloud (java only)

# v5.1.1 (3/21/2023)
* fixed var handling of inputs.version in npm-build-and-deploy.yml

# v5.1.0 (3/17/2023)
* Added `npm-test`, `npm-build-and-release`, `npm-ui-build-and-deploy`, and `vercel-deploy` pipelines to support NodeJS and Next based apps to both EKS and Vercel.

# v5.0.0 (03/02/2023)
* Adding functionality to see deployment status
* Originally v4.7.0. Changed to v5.0.0 because it was a breaking change.

# v4.6.0 (02/28/2023)
* Add changelog to repo
* On `maven-deploy.yml` display version of artifact being created in job name.
* On `maven-release.yml` display version of artifact being created in job name.
* On `eks-deploy-v2.yml` display version of articat and environment being deployed to in job name.

# v4.5.1 (02/17/2023)
* Change `skip_build` to be optional.

# v4.5.0 (02/17/2023)
* Add `skip_build` input to `maven-build.yml` to allow SNAPSHOT builds to not have to run unit tests or sonar.

# v4.4.0 (02/02/2023)
* Path in `eks-deploy-v2.yml` was corrected so that the downloaded kubeclt rather than the one that comes installed with the github hosted runner is selected.

# v4.3.0 (01/30/2023)
* Fix bug with github pages when creating snapshot in a repo that doesn’t have github pages.
* Fix bug in deployment of snapshots where the maven copy command was not asking Nexus if it had the newest snapshot.

# v4.2.0 (01/27/2023)
* Support docker image build for `littera-core-api`.
* Changes for `docker-build-and-push-image.yml`.

# v4.0.0 (01/26/2023)
* Added exceptions for `littera-core-api`.

# v3.1.0 (01/24/2023)
* Changes to get `eks-deploy-v2.yml` working.

# v3.0.0 (01/22/2023)
* Created `eks-deploy-v2.yml` for migration testing.

# v2.0.0 (01/21/2023)
* Started creating version 2 of the initial pipelines. Keep backwards compatible.