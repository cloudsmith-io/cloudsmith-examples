#!/bin/bash
set -eou pipefail


cd "src/"

export RUBYGEMS_HOST=https://ruby.cloudsmith.io/$CLOUDSMITH_REPOSITORY

# publish gem using native tooling
gem push -k cloudsmith cloudsmith-ruby-example-1.0.$BUILD_TIMESTAMP.gem
