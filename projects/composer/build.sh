#!/bin/bash

cd "projects/composer/src"

echo "Setting up composer ..."
test -d "vendor" && { composer update; } || { composer install; }

echo "Generating composer.json ..."
./composer.json.sh

echo "Building composer phar ..."
./vendor/bin/phar-composer build
