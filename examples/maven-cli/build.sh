#!/bin/bash
set -eou pipefail


cd "src/"

# build jar for example package
mvn package
