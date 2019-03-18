#!/bin/bash
set -eou pipefail


cd "src/"

# build tar.gz package for distribution
tar -czf cloudsmith-raw-example.tar.gz cloudsmith
