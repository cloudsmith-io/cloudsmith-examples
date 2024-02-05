#!/bin/bash
set -eou pipefail

# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_NUMBER/g"

# replace "__CLOUDSMITH_REPOSITORY__" with real repo as required
grep -rl __CLOUDSMITH_REPOSITORY__ src/ | xargs sed -i "s~__CLOUDSMITH_REPOSITORY__~$CLOUDSMITH_REPOSITORY~g"
