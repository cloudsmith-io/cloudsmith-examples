#!/bin/bash
set -eou pipefail


cd "src/"

# publish RPM package using the cloudsmith CLI
cloudsmith push rpm $CLOUDSMITH_REPOSITORY/el/7 \
    cloudsmith-redhat-example-1.0.$BUILD_NUMBER-1.x86_64.rpm
