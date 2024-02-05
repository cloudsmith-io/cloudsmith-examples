#!/bin/bash
set -eou pipefail


cd "src/dist/"

# publish sdist and wheel packages using the cloudsmith CLI
cloudsmith push python $CLOUDSMITH_REPOSITORY \
    cloudsmith-python-cli-example-1.0.$BUILD_NUMBER.tar.gz
cloudsmith push python $CLOUDSMITH_REPOSITORY \
    cloudsmith_python_cli_example-1.0.$BUILD_NUMBER-py2.py3-none-any.whl
