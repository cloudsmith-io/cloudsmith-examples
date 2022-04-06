#!/bin/bash
set -eou pipefail


cd ./cloudsmith-python-example

# Configure private repository and publish to it.
poetry config repositories.cloudsmith https://python.cloudsmith.io/$CLOUDSMITH_REPOSITORY/
poetry config http-basic.cloudsmith token $CLOUDSMITH_API_KEY
poetry publish -r cloudsmith
