#!/bin/bash
set -eou pipefail


# publish crate using the cloudsmith CLI
cloudsmith push cargo $CLOUDSMITH_REPOSITORY \
    src/target/package/cloudsmith-example-crate-1.0.$BUILD_NUMBER.crate
