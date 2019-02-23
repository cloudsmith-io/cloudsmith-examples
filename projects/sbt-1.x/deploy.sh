#!/bin/bash

echo "Deploying Cloudsmith SBT Example"

# create .credentials file
cat <<EOF >/home/travis/.sbt/.credentials
realm=Cloudsmith API
host=maven.cloudsmith.io
user=token
password=${CLOUDSMITH_API_KEY}
EOF

#cd "${TRAVIS_BUILD_DIR}"
cd "projects/sbt-1.x/src"

sbt 'set credentials += Credentials("Cloudsmith API", "maven.cloudsmith.io", "token", "${CLOUDSMITH_API_KEY}")' aetherDeploy
