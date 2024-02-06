#!/bin/bash
set -eou pipefail


cd "src/"

# compile example source code
make

# package compiled artifacts for distribution
fpm -f -s dir -t rpm -a noarch -v 1.0.$BUILD_NUMBER -n cloudsmith-redhat-example .
