#!/bin/bash
set -eou pipefail


cd "src/"

# publish deb package using the cloudsmith CLI
cloudsmith push deb $CLOUDSMITH_REPOSITORY/ubuntu/trusty \
    cloudsmith-debian-example_1.0.${BUILD_NUMBER}_amd64.deb
