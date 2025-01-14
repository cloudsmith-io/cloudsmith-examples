#!/bin/bash
set -eou pipefail

mkdir -p target

pushd "target"
tar --exclude='.terraform' --exclude='*.tfstate*' --exclude='*_override.tf*' -czvf $(cat module_name.txt)-$(cat version.txt).tar.gz ./$(cat module_name.txt)-$(cat version.txt)
popd
