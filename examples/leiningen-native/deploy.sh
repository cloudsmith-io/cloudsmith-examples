#!/bin/bash
set -eou pipefail


cd "src/"

# publish jar using native tools
lein deploy
