#!/bin/bash
set -eou pipefail


# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_NUMBER/g"
