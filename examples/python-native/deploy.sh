#!/bin/bash
set -eou pipefail


cd "src/dist/"

export TWINE_REPOSITORY_URL=https://python.cloudsmith.io/$CLOUDSMITH_REPOSITORY/
export TWINE_USERNAME=token
export TWINE_PASSWORD=$CLOUDSMITH_API_KEY

# publish sdist and wheel packages using twine
twine upload cloudsmith-python-example-1.0.$BUILD_NUMBER.tar.gz \
             cloudsmith_python_example-1.0.$BUILD_NUMBER-py2.py3-none-any.whl
