#!/bin/bash

echo "Deploying to Cloudsmith"

cd "projects/composer/src"

cloudsmith push composer cloudsmith/examples cloudsmith-composer-example.phar
