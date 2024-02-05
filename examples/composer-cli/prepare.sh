#!/bin/bash
set -eou pipefail


# install Python and pip
sudo apt-get update
sudo apt install -y python3 python3-pip

# install the cloudsmith CLI
pip3 install --user cloudsmith-cli

# download and install phar-composer
PHAR_COMPOSER_URL=https://github.com/clue/phar-composer/releases/download/v1.0.0/phar-composer.phar
PHAR_COMPOSER_PATH=/home/circleci/.local/bin/phar-composer

curl -sL $PHAR_COMPOSER_URL > $PHAR_COMPOSER_PATH
chmod 755 $PHAR_COMPOSER_PATH

# replace "__EXAMPLE_VERSION__" with real version number as required
grep -rl __EXAMPLE_VERSION__ src/ | xargs sed -i "s/__EXAMPLE_VERSION__/1.0.$BUILD_NUMBER/g"
