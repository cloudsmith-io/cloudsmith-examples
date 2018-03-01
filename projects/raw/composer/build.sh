#!/bin/bash

cd "projects/raw/composer/src"
pwd
ls
composer update
pwd
ls
composer install

.vendor/bin/phar-composer build
