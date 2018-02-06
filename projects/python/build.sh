#!/bin/bash

echo "Building Cloudsmith Python Example..."

pwd

ls

cd projects/$1/src

pwd

ls

python setup.py bdist_wheel --universal
