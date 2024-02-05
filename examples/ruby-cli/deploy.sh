#!/bin/bash
set -eou pipefail


cd "src/"

# publish gem using the cloudsmith CLI
cloudsmith push ruby $CLOUDSMITH_REPOSITORY \
    cloudsmith-ruby-cli-example-1.0.$BUILD_NUMBER.gem
