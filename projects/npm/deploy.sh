#!/bin/bash

echo "deploying to Cloudsmith with cloudsmith-cli"

cd "projects/npm/src"

ls

cloudsmith push raw cloudsmith/examples cloudsmith-npm-example.tar.gz --version ${TRAVIS_BUILD_NUMBER}
