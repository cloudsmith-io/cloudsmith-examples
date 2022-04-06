#!/bin/bash
set -eou pipefail


cd ./cloudsmith-python-example

pip install --user poetry

# Bump package version in pyproject.toml.
poetry version 1.0.$BUILD_NUMBER
