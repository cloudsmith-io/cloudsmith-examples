#!/bin/bash
set -eou pipefail


if [ "$CLOUDSMITH_REPOSITORY_IS_PRIVATE" = "yes" ]; then
    export PIP_EXTRA_INDEX_URL="https://token:${CLOUDSMITH_API_KEY}@dl.cloudsmith.io/basic/${CLOUDSMITH_REPOSITORY}/python/index/"
else
    export PIP_EXTRA_INDEX_URL="https://dl.cloudsmith.io/public/${CLOUDSMITH_REPOSITORY}/python/index/"
fi


# install package from Cloudsmith using pip
pip install --user cloudsmith-python-example==1.0.$BUILD_NUMBER

# run the installed package
cloudsmith-python-example
