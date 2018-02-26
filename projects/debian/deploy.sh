#!/bin/bash

echo "deploying to Cloudsmith with cloudsmith-cli"

cd "projects/debian/src"

pwd

ls

cloudsmith push deb cloudsmith/examples/ubuntu/trusty cloudsmith-debian-example-${TRAVIS_BUILD_NUMBER}_1.0_amd64.deb
