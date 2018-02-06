#!/bin/bash

echo "Building Cloudsmith Python Example..."

pwd

ls

cd src
python setup.py bdist_wheel --universal
