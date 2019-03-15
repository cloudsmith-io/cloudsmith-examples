#!/bin/bash
set -eou pipefail


cd "src/"

export NPM_CONFIG_REGISTRY=https://npm.cloudsmith.io/$CLOUDSMITH_REPOSITORY/
echo "//npm.cloudsmith.io/$CLOUDSMITH_REPOSITORY/:_authToken=$CLOUDSMITH_API_KEY" > .npmrc

# publish NPM package using native tooling
npm publish
