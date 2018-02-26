#!/bin/bash

cd "projects/debian/src"

make

fpm -f -s dir -t deb -n cloudsmith-debian-example-${TRAVIS_BUILD_NUMBER} -v 1.0 .
