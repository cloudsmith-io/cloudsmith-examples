#!/bin/bash
set -eou pipefail


cd "src/"

# publish gem using the cloudsmith CLI
cloudsmith push ruby $CLOUDSMITH_REPOSITORY \
    cloudsmith-ruby-example-1.0.$BUILD_TIMESTAMP.gem
