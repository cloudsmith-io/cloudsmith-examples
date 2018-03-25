#!/bin/bash

echo "deploying to Cloudsmith"

cd "projects/ruby/src"

pwd

ls

cloudsmith push ruby cloudsmith/examples cloudsmith-ruby-example-1.${TRAVIS_BUILD_NUMBER}.0.gem
