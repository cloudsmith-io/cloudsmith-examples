#!/bin/bash
set -eou pipefail

pushd "src"
dotnet build --configuration Release
dotnet pack --configuration Release /p:Version=1.0.0-$BUILD_NUMBER
popd
