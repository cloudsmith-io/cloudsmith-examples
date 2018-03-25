#!/bin/bash

echo "deploying to Cloudsmith with cloudsmith-cli"

cd "projects/debian/src"

pwd

ls

cloudsmith push deb cloudsmith/examples/ubuntu/trusty cloudsmith-debian-example_1.0.${TRAVIS_BUILD_NUMBER}_amd64.deb
