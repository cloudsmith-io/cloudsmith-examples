#!/bin/bash
set -eou pipefail


cd "src/dist/"

# publish sdist and wheel packages using the cloudsmith CLI
cloudsmith push python $CLOUDSMITH_REPOSITORY \
    cloudsmith-python-example-1.0.$BUILD_NUMBER.tar.gz \
    cloudsmith_python_example-1.0.$BUILD_NUMBER-py2.py3-none-any.whl
