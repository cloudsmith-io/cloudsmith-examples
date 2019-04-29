#!/bin/bash
set -eou pipefail


function install_script {
    OUT="set -e

    apk add --no-cache bash curl

    if [ \"$CLOUDSMITH_REPOSITORY_IS_PRIVATE\" = \"yes\" ]; then
        curl -u \"token:${CLOUDSMITH_API_KEY}\" -1sLf \
        \"https://dl.cloudsmith.io/basic/${CLOUDSMITH_REPOSITORY}/cfg/setup/bash.alpine.sh\" \
        | version=v3.9 bash
    else
        curl -1sLf \
        \"https://dl.cloudsmith.io/public/${CLOUDSMITH_REPOSITORY}/cfg/setup/bash.alpine.sh\" \
        | version=v3.9 bash
    fi

    # install package from Cloudsmith using apk
    apk add --no-cache cloudsmith-alpine-example=1.0.$BUILD_NUMBER-r0

    # run the installed package
    cloudsmith"

    echo "$OUT"
}

install_script | _docker run -i --rm alpine:3.9 sh
