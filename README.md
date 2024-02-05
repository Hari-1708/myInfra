https://github.com/Hari-1708/myInfra.wiki.git


Welcome to the MyInfra Repo:
The Azure infra is created by Azure bicep and automated using GitHub Actions.

brances:
3 brances are used to provision the infra in different environments.

Environments:
In this two environments are used.

dev
qa
Release conditions:
Approval is needed to deploy
branch rules
master branch to dev (other than master deployment will fail)
master/release to qa
