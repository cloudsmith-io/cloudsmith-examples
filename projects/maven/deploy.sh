#!/bin/bash

echo "... deploying to Cloudsmith with cloudsmith-cli"

cd "projects/maven/src"

cloudsmith push maven cloudsmith/examples target/cloudsmith-maven-example-0.0.1-SNAPSHOT.jar --pom-file pom.xml
