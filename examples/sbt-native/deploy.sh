#!/bin/bash
set -eou pipefail

cd "src/"

# publish sbt package using native tooling
sbt publish
