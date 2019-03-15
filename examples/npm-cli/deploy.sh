#!/bin/bash
set -eou pipefail


cd "src/"

# publish NPM package using the cloudsmith CLI
cloudsmith push npm $CLOUDSMITH_REPOSITORY \
    csm-cloudsmith-npm-example-1.0.$BUILD_NUMBER.tgz
