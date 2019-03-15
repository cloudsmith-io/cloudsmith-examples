#!/bin/bash
set -eou pipefail


cd "src/"

# build NPM package for distribution
npm pack
