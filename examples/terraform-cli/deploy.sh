#!/bin/bash
set -eou pipefail

cloudsmith push terraform $CLOUDSMITH_REPOSITORY \
    ./target/terraform-generic-example-1.0.$BUILD_NUMBER.tar.gz
