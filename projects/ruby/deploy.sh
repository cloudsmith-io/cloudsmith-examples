#!/bin/bash

echo "deploying to Cloudsmith"

cd "projects/ruby/src"

pwd

ls

mv cloudsmith-ruby-example-1.0.gem cloudsmith-ruby-example-${TRAVIS_BUILD_NUMBER}-1.0.gem

cloudsmith push ruby cloudsmith/examples cloudsmith-ruby-example-${TRAVIS_BUILD_NUMBER}-1.0.gem
