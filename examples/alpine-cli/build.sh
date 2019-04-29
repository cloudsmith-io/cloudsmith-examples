#!/bin/bash
set -eou pipefail

# NOTE: Since CircleCI don't provide convenience images based on Alpine we have
# to build one ourselves in which to run the build. This adds an extra level of
# indirection that isn't great, but it works. In future we can build out own
# base image and use that directly with Circle.
_docker build -t alpine-example-build .


# build .apk for distribution
function build_script {
    USAGE='set -eou pipefail

    cd "src/"

    abuild-keygen -a -i -n
    abuild checksum
    abuild -r'

    echo "$USAGE"
}

build_script | _docker run -i --name build-$BUILD_NUMBER alpine-example-build sh

# since we build inside a container we need to explicitly copy the artifacts out
# after building
_docker cp build-$BUILD_NUMBER:/home/circleci/packages/build/x86_64/ .
