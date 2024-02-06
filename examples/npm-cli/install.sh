#!/bin/bash
set -eou pipefail


if [ "$CLOUDSMITH_REPOSITORY_IS_PRIVATE" = "yes" ]; then
    echo "registry=https://npm.cloudsmith.io/${CLOUDSMITH_REPOSITORY}/" > .npmrc
    echo "//npm.cloudsmith.io/${CLOUDSMITH_REPOSITORY}/:_authToken=${CLOUDSMITH_API_KEY}" >> .npmrc
fi

sudo cp .npmrc /root/.npmrc

# install package from Cloudsmith using npm
sudo npm install -g \
    --registry="https://npm.cloudsmith.io/${CLOUDSMITH_REPOSITORY}/" \
    "@csm/cloudsmith-npm-cli-example@1.0.${BUILD_NUMBER}"

# run the installed package
cloudsmith-npm-example
