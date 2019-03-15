#!/bin/bash
set -eou pipefail


cd "src/"

# publish maven package using native tools
mvn -s settings.xml deploy
