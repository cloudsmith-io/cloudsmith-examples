#!/bin/bash

echo "Deploying Cloudsmith Python Example..."

cd "projects/python/src"

pwd
ls

cd "dist"

pwd
ls

cloudsmith push python cloudsmith/examples cloudsmith-python-example-1.0-py2.py3-none-any.whl
