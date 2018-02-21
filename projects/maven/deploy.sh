#!/bin/bash

echo "deploy"

pwd

ls

cd "projects/maven/"
pwd
ls

cd "src"

pwd

ls


cd "target"
pwd
ls


cloudsmith push maven cloudsmith/examples cloudsmith-maven-example-0.0.1-SNAPSHOT.jar --pom-file pom.xml
