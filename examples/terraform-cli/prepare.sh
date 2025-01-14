#!/bin/bash
set -eou pipefail

sudo apt-get update
sudo apt install -y python3 python3-pip

pip install --user cloudsmith-cli

MODULE_NAME="terraform-provider-terraform-cli"
VERSION="1.0.$BUILD_NUMBER"

mkdir -p "target/${MODULE_NAME}-${VERSION}"
pushd "target"
cp -r ../src/* "./${MODULE_NAME}-${VERSION}/"

echo $VERSION > version.txt
echo $MODULE_NAME > module_name.txt
popd

