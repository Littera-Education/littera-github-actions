# v9.11.0 (07/11/2024)
* `vercel_config_branch` used in `verce-deploy.yml`

# v9.10.0 (07/02/2024)
* `namesspace_prefix` used in `eks-deploy-v2.yml`

# v9.9.1 (07/02/2024)
* Add `git_tag` to `nextjs-docker-build-and-push-image.yml`.

# v9.9.0 (07/02/2024)
* `nextjs-docker-build-and-push-image.yml` created.

# v9.8.0 (6/12/2024)
* Add `deployable_service_names` to `export-vars` job. For details see [LDO-3329](https://littera.atlassian.net/browse/LDO-3329)

# v9.7.0 (5/21/2024)
* Add ECR password to maven deploy for spring built images. For details see [LDO-3340](https://littera.atlassian.net/browse/LDO-3340)

# v9.6.2 (5/20/2024)
* `npm-build-and-release.yml` bug fix for hotfix versioning and release-please action deprecation

# v9.6.1 (5/20/2024)
* `eks-deploy-v2.yml` bug fix

# v9.6.0 (5/20/2024)
* `eks-deploy-v2.yml`, if image is a snapshot, always do a rolling restart of the deployment

# v9.5.0 (5/15/2024)
* `maven-release` add `continue-on-error` when publishing GitHub Pages

# v9.4.0 (05/09/2024)
* `eks-deploy-v2.yml` has migration specific stuff removed.

# v9.3.0 (05/09/2024)
* Add ECR password to maven release for spring built images. For details see [LDO-3340](https://littera.atlassian.net/browse/LDO-3340)

# v9.2.2 (05/06/2024)
* typo

# v9.2.1 (05/06/2024)
* Replaced `kubectl apply -dry-run=server ...` with `kubectl diff ...` as the method for determining `rolling restart` logic

# v9.2.0 (04/24/2024)
* `eks-deploy-v2.yml` changed to work with v3 and v4 eks clusters
* Environment tagging of ecr images removed from `docker-build-and-push-image.yml`; was redundant
* After migration to v4 eks clusters `eks-deploy-v2.yml` should have migration specific stuff removed.

# v9.1.0 (4/23/2024)
* Remove `turbo-*` workflows

# v9.0.0 (4/18/2024)
* v8.27.0 and v8.26.0 are going to be v9.0.0, v9-latest, v9-onbase

# v8.27.0 (04/17/2024)
* Fix unused turborepo options.

# v8.26.0 (04/17/2024)
* Changes to move to ecr repo in `littera-ecr`

# v8.25.0 (04/17/2024)
* Add project ids to `littera-web-ui` for dev environment.

# v8.24.0 (04/15/2024)
* Add numerous `turborepo` supporting workflows.

# v8.23.0 (03/21/2024)
* Update `vercel-deploy.yml` to do a Terraform apply of environment variables for the Vercel app. Form ore details see: [LDO-3078](https://littera.atlassian.net/browse/LDO-3078)

# v8.22.0 (03/18/2024)
* Update VERCEL.json so toolkit uses `npm` and node 18

# v8.21.0 (03/13/2024)
* Update VERCEL.json so core-ui uses `npm`

# v8.20.1 (03/11/2024)
* `node-test-sharded` need to install yarn globally before setting config

# v8.20.0 (03/08/2024)
* add support for `npm` in `node-test-sharded` flow
* added support for `custom_npm_install_command` in `pr-title-lint` flow

# v8.19.0 (03/06/2024)
* Removed the `testing` environment across the board

# v8.18.0 (02/16/2024)
* Set fetch-depth on checkout in `vercel-deploy`

# v8.17.0 (02/16/2024)
* Updated many actions, primarily around Node & Vercel, to checkout@v4, setup-node@v4, and release-please-action@v4

# v8.16.0 (02/06/2024)
* env vars for `littera-customer-portal-jobs` added to SERVERLESS.json

# v8.15.0 (01/29/2024)
* In `vercel-deploy.yaml` pin all Vercel CLI commands to the same version and expose that version to be overridable in case it's necessary.

# v8.14.0 (12/13/2023)
* Add `maven_goal` input to `maven-build.yml` workflow and default it to `install`. For more details see: [LDO-2584](https://littera.atlassian.net/browse/LDO-2584)

# v8.13.1 (12/11/2023)
* Upon testing `core-ui`, the `yarn` package manager is missing to configure the `.yarnrc.yml`.

# v8.13.0 (12/11/2023)
* Add support for `berry` npm package manager, in order to migrate to node18. See: [LDO-2370](https://littera.atlassian.net/browse/LDO-2370)

# v8.12.0 (12/05/2023)
* `npm-build-and-release.yml` accomodates case when branch_name=develop-snapshot
* `npm-get-project-info.yml` added. Returns version and artifact_id from package.json

# v8.11.0 (11/21/2023)
* Fixed `lcov-result-merger` upgrade in `node-test-sharded.yml`. (see: [LDO-2428](https://littera.atlassian.net/browse/LDO-2428)) 

# v8.10.0 (11/17/2023)
* Add `serverless-remove.yml` so we can remove the debug environments when they aren't being used.

# v8.9.6 (11/16/2023)
* Added debug env for littera-jobs, littera-notifications and littera-cognito-triggers in SERVERLESS.json

# v8.9.5 (10/17/2023)
* Added littera-utils to VERCEL.json

# v8.9.4 (10/17/2023)
* Added littera-auth0-actions to VERCEL.json

# v8.9.3 (09/26/2023)
* In `pr-title-lint` removed the installed action and using the npx command directly due to node12 deprecation and lack of support by the action developer.

# v8.9.2 (09/21/2023)
* In `vercel-deployment` added an input for `--max-old-space-size` for `Vercel Build`

# v8.9.1 (09/21/2023)
* Export `VERCEL_PROJECT_ID` and `VERCEL_ORG_ID` before interacting with Vercel

# v8.9.0 (09/20/2023)
* Changed `vercel-deploy.yml` to do a local install and build before deploying, sending the compiled code over.
  * This was to allow us to move our Nexus server to behind the VPN.

# v8.8.0 (08/30/2023)
* Added `./env/SERVERLESS.json` for serverless actions
* Added `export-serverless-vars.yml` workflow

# v8.7.0 (08/24/2023)
* Added `./env/VERCEL.json` for vercel actions
* Added `export-vercel-vars.yml` workflow
* Added `npm-test-sharded.yml` for an action currently on used by littera-core-ui
* converted all `node_version` inputs from `numeric` to  `string`. This is to allow numeric vars generated in bash to be send to called workflows without more bash magic. Not breaking.

# v8.6.0 (08/23/2023)
* npm install -g yarn for `npm-test.yml` and `pr-title-lint.yml`

# v8.5.0 (08/21/2023)
* sonarsource/sonarqube-scan-action@v2 now implemented in npm-test.yml

# v8.4.0 (08/18/2023)
* core_deploy_type default is 'both'

# v8.3.0 (08/18/2023)
* Set 'self-hosted-runner-standard' for node, vercel and serverless workflows.

# v8.2.0 (08/16/2023)
* Fixed npm.test. Input local_runner was mistakenly put into secrets instead of inputs

# v8.1.0 (08/16/2023)
* Fixed create-test-image-v2.yml calling docker-build-and-push-image.yml

# v8.0.0 (08/16/2023)
* Added inputs.local_runner to all (required=false); defaults to 'self-hosted-runner-standard' for java, "ubuntu-latest" for node, vercel and serverless workflows.
* Downloads software not pre-installed on the local runner for java workflows only

# v7.1.0 (07/19/2023)
* Add `package_manager` option to npm modules. Defaults to `npm` but supports `yarn` as an alternative.

# v7.0.0 (07/17/2023)
* Node 18 is now the default.

# v6.8.0 (06/23/2023)
* logic to deploy core-web/worker or just core-web
* waits for eks deploy to complete when deploying to both core-web and core-worker before exiting

# v6.7.0 (06/02/2023)
* `npm-lib-build-and-publish` created for publishing libraries to Nexus.

# v6.6.0 (05/19/2023)
* `npm-build-and-release` default the version to the one on the `package.json` when unable to get version from release-please.

# v6.5.0 (05/17/2023)
* sed version into 'tags.datadoghq.com/version:'

# v6.4.1 (05/16/2023)
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