#!/bin/bash

echo "deploy"

pwd

ls

cd "projects/maven/src"

pwd

ls

cloudsmith push maven cloudsmith/examples target/cloudsmith-maven-example-0.0.1-SNAPSHOT.jar --pom-file pom.xml
