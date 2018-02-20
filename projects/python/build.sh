#!/bin/bash

echo "Running build.sh"

pwd

ls

cd "projects/python/src"

pwd

ls

python setup.py bdist_wheel --universal
