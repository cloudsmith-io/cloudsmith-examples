#!/bin/bash
set -eou pipefail


if [ "$CLOUDSMITH_REPOSITORY_IS_PRIVATE" = "yes" ]; then
    git config --global credential.helper store
    echo "https://token:${CLOUDSMITH_API_KEY}@dl.cloudsmith.io" > ~/.git-credentials
    INDEX_URL="https://dl.cloudsmith.io/basic/${CLOUDSMITH_REPOSITORY}/cargo/index.git"
else
    INDEX_URL="https://dl.cloudsmith.io/public/${CLOUDSMITH_REPOSITORY}/cargo/index.git"
fi


export CARGO_REGISTRIES_CLOUDSMITH_INDEX="$INDEX_URL"

# install package from Cloudsmith using cargo
cargo install cloudsmith-example-crate --version 1.0.$BUILD_NUMBER --registry cloudsmith

# run the installed package
cloudsmith-example-crate
