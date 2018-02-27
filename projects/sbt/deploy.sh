#!/bin/bash

echo "Deploying Cloudsmith SBT Example"

cat <<EOF >/home/travis/.sbt/credentials
realm=cloudsmith
host=api.cloudsmith.io
user=
password=${CLOUDSMITH_API_KEY}
EOF

cd "projects/sbt/src"

sbt 'set credentials += Credentials("cloudsmith", "api.cloudsmith.io", "", "${CLOUDSMITH_API_KEY}")' aetherDeploy
