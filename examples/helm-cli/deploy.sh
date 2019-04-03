#!/bin/bash
set -eou pipefail


# publish chart using the cloudsmith CLI
cloudsmith push helm $CLOUDSMITH_REPOSITORY \
    cloudsmith-example-chart-1.0.$BUILD_NUMBER.tgz \
