#!/bin/bash
set -eou pipefail

pushd "src"

tar --exclude='.terraform' --exclude='*.tfstate*' --exclude='*_override.tf*' \
    -czf ../target/terraform-generic-example-1.0.$BUILD_NUMBER.tar.gz .

popd
