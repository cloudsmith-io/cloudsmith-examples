#!/bin/bash
set -eou pipefail

pushd target
cloudsmith push terraform $CLOUDSMITH_REPOSITORY $(cat module_name.txt)-$(cat version.txt).tar.gz
popd