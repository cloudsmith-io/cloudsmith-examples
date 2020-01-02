#!/bin/bash
set -eou pipefail

# install Python and pip
sudo apt-get update
sudo apt-get install -y python python-pip
sudo apt-get remove -y python-configparser

# install the cloudsmith CLI
pip install --user cloudsmith-cli


# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_NUMBER/g"
