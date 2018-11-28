#!/bin/bash

echo "Deploying Cloudsmith SBT Example"

# create .credentials file
cat <<EOF >/home/travis/.sbt/.credentials
realm=cloudsmith
host=api.cloudsmith.io
user=
password=
EOF

cd "${TRAVIS_BUILD_DIR}"
cd "projects/sbt/src"

sbt 'set credentials += Credentials("cloudsmith", "api.cloudsmith.io", "", "${CLOUDSMITH_API_KEY}")' aetherDeploy
