#!/bin/bash
set -eou pipefail


cd "src/"

# build sdist and wheel packages for example package
python setup.py sdist bdist_wheel
