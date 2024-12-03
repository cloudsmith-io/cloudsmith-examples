#!/bin/bash
set -eou pipefail

sudo apt-get update
sudo apt install -y python3 python3-pip

pip install --user cloudsmith-cli

MODULE_PATH="$(grep "^module" ./src/go.mod | cut -d ' ' -f 2)"
MODULE_NAME=$(basename $MODULE_PATH)
ROOT=$(echo "${MODULE_PATH}" | cut -d'/' -f1)
VERSION="v1.0.$BUILD_NUMBER"

mkdir -p "target/${MODULE_PATH}@$VERSION"
pushd "target"
cp -r ../src/* "${MODULE_PATH}@$VERSION/"
pushd "${MODULE_PATH}@$VERSION"
go mod tidy
popd

grep -rl __PLACEHOLDER_VERSION__ $ROOT | xargs sed -i "s/__PLACEHOLDER_VERSION__/$VERSION/g"
echo $VERSION > version.txt
echo $MODULE_NAME > module_name.txt
echo $ROOT > root.txt
popd

