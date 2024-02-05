#!/bin/bash
set -eou pipefail


cd "src/"

# publish maven package using the cloudsmith CLI
cloudsmith push maven $CLOUDSMITH_REPOSITORY --pom-file pom.xml \
    target/cloudsmith-maven-cli-example-1.0.$BUILD_NUMBER.jar
