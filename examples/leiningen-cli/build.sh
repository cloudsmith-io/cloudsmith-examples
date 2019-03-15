#!/bin/bash
set -eou pipefail


cd "src/"

# build jar and pom for example package
lein pom
lein uberjar
