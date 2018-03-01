#!/bin/bash

echo "Deploying to Cloudsmith"

cd "projects/raw/composer/src"

cloudsmith push raw cloudsmith/examples cloudsmith-composer-example.phar
