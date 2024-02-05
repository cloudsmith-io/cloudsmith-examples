#!/bin/bash
set -eou pipefail


cd "src/"

# need to fix architecture type here

# publish deb package using the cloudsmith CLI
cloudsmith push deb $CLOUDSMITH_REPOSITORY/ubuntu/trusty \
    cloudsmith-debian-example_1.0.${BUILD_NUMBER}_all.deb
