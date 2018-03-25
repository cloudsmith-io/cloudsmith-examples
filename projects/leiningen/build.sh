#!/bin/bash

cd "projects/leiningen/src"
cd "cloudsmith-leiningen-example"
pwd
ls

lein compile

lein uberjar

java -jar target/cloudsmith-leiningen-example-1.0.0-SNAPSHOT-standalone.jar
