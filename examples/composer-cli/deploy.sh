#!/bin/bash
set -eou pipefail


cd "src/"

# publish phar using the cloudsmith CLI
cloudsmith push composer $CLOUDSMITH_REPOSITORY \
    cloudsmith-composer-example-1.0.$BUILD_NUMBER.phar
