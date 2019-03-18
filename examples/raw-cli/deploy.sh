#!/bin/bash
set -eou pipefail


cd "src/"

# publish raw package using the cloudsmith CLI
cloudsmith push raw $CLOUDSMITH_REPOSITORY cloudsmith-raw-example.tar.gz --version "1.0.$BUILD_NUMBER"
