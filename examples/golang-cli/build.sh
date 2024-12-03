#!/bin/bash
set -eou pipefail

pushd "target"
zip -r $(cat module_name.txt)-$(cat version.txt).zip $(cat root.txt)
popd
