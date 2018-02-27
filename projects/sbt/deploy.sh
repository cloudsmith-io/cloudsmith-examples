#!/bin/bash

echo "Deploying Cloudsmith SBT Example"

cd "projects/sbt/src"

sbt 'set credentials += Credentials("cloudsmith", "api.cloudsmith.io", "", "${CLOUDSMITH_API_KEY}")' aetherDeploy
