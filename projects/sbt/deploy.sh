#!/bin/bash

echo "Deploying Cloudsmith SBT Example"

cd "projects/sbt/src"

sbt aetherDeploy
