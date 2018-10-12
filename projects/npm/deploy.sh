#!/bin/bash

cd "projects/npm/src"

. variables.sh


echo "Deploying to Cloudsmith via CLI ..."

cloudsmith push npm cloudsmith/examples csm-cloudsmith-npm-example-${NPM_VERSION}.tgz


echo "Deploying to Cloudsmith via NPM ..."

npm publish
