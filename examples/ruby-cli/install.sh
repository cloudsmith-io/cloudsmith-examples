#!/bin/bash
set -eou pipefail


if [ "$CLOUDSMITH_REPOSITORY_IS_PRIVATE" = "yes" ]; then
    AUTH_TYPE="basic"
    AUTH_STRING="token:${CLOUDSMITH_API_KEY}@"
else
    AUTH_TYPE="public"
    AUTH_STRING=""
fi


# install package from Cloudsmith using gem
gem install \
    --source "https://${AUTH_STRING}dl.cloudsmith.io/${AUTH_TYPE}/${CLOUDSMITH_REPOSITORY}/ruby" \
    "cloudsmith-ruby-example:1.0.${BUILD_NUMBER}"

# run the installed package
cloudsmith-ruby-example
