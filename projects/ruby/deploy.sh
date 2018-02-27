#!/bin/bash

echo "deploying to Cloudsmith"

cd "projects/ruby/src"

pwd

ls

cloudsmith push ruby cloudsmith/examples cloudsmith-ruby-example-1.0.gem
