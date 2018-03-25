#!/bin/bash

echo "Deploying to Cloudsmith"

cd "projects/leiningen/src"

cd "cloudsmith-leiningen-example"

pwd
ls

lein deploy
