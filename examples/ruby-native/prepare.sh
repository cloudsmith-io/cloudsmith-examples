#!/bin/bash
set -eou pipefail


# ensure gem credentials are properly set
mkdir -p ~/.gem/

echo "---" > ~/.gem/credentials
echo ":cloudsmith: Token $CLOUDSMITH_API_KEY" >> ~/.gem/credentials

chmod 0600 ~/.gem/credentials

# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_TIMESTAMP/g"
