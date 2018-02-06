#!/bin/bash

echo "Building Cloudsmith Python Example..."

cd src
python setup.py bdist_wheel --universal
