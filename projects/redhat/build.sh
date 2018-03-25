#!/bin/bash

echo "building rpm..."

cd "projects/redhat/src"

rm "cloudsmith-redhat-example"

echo "build"
make

fpm -f -s dir -t rpm -v 1.0.${TRAVIS_BUILD_NUMBER} -n cloudsmith-redhat-example .
