#!/bin/bash
set -eou pipefail


cd "src/"

# publish dart .tar.gz package using the cloudsmith CLI
cloudsmith push dart $CLOUDSMITH_REPOSITORY cloudsmith_dart_example_1.0.$BUILD_NUMBER.tar.gz
