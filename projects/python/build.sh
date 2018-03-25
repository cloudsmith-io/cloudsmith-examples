#!/bin/bash

echo "Running build.sh"

cd "projects/python/src"

cd "version"

echo "__version__ = '1.0.${TRAVIS_BUILD_NUMBER}'" > __init__.py

cd "-"

pwd

ls

python setup.py bdist_wheel --universal
