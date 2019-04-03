#!/bin/bash
set -eou pipefail


# install the cloudsmith CLI
pip install --user cloudsmith-cli

# install and initialise helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash
helm init --client-only

# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_NUMBER/g"
