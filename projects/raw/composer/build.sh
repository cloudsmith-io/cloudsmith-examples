#!/bin/bash

cd "projects/raw/composer/src"
pwd
ls
composer update clue/phar-composer
pwd
ls
composer install

.vendor/bin/phar-composer build
