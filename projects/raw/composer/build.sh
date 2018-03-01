#!/bin/bash

cd "projects/raw/composer/src"
pwd
ls
composer update clue/phar-composer
pwd
ls
composer install

echo "Building phar..."
pwd
ls

cd "vendor/bin"
pwd
ls

cd "-"
ls

.vendor/bin/phar-composer build


echo "trying 2"
pwd
ls

./src/vendor/bin/phar-composer build src

pwd
ls
