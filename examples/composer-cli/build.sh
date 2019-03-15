#!/bin/bash
set -eou pipefail


cd "src/"

# build .phar for distribution
composer install
php -d phar.readonly=off `which phar-composer` build . \
    cloudsmith-composer-example-1.0.$BUILD_TIMESTAMP.phar
