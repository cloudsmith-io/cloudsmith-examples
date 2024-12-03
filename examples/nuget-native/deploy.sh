#!/bin/bash
set -eou pipefail


pushd "src"
dotnet nuget push bin/Release/Cloudsmith.Nuget.Native.Example.1.0.0-$BUILD_NUMBER.nupkg -k $CLOUDSMITH_API_KEY --source https://nuget.cloudsmith.io/$CLOUDSMITH_REPOSITORY/v3/index.json
popd
