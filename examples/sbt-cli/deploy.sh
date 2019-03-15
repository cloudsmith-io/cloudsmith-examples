#!/bin/bash
set -eou pipefail


cd "src/"

cloudsmith push maven $CLOUDSMITH_REPOSITORY \
    --pom-file target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER.pom \
    target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER.jar
