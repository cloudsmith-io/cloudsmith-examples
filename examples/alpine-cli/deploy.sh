#!/bin/bash
set -eou pipefail


# publish apk using the cloudsmith CLI
cloudsmith push alpine $CLOUDSMITH_REPOSITORY/alpine/v3.9 \
    x86_64/cloudsmith-alpine-example-1.0.$BUILD_NUMBER-r0.apk
