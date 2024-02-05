#!/bin/bash
set -eou pipefail

cd "src/"

cloudsmith push maven $CLOUDSMITH_REPOSITORY \
    target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER.jar \
    --pom-file target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER.pom \
    --sources-file target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER-sources.jar \
    --javadoc-file target/scala-2.12/cloudsmith-sbt-example_2.12-1.0.$BUILD_NUMBER-javadoc.jar
