#!/bin/sh -l
set -e

# Default in API : https://developer.github.com/v3/repos/deployments/#create-a-deployment
TARGET=${DEPLOY_ENV:-production} 
REF=${DEPLOY_REF:-master}

curl https://api.github.com/repos/$GITHUB_REPOSITORY/deployments -v \
    -H "Accept: application/vnd.github.machine-man-preview+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    --data '{ "ref": "'$REF'", "environment": "'$TARGET'", "description": "Automated deployment from deploy-action"}' \
