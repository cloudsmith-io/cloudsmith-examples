#!/bin/bash
set -eou pipefail


cd "src/"

# compile example source code
make

# package compiled artifacts for distribution
fpm -f -s dir -t deb -v 1.0.$BUILD_TIMESTAMP -n cloudsmith-debian-example .
