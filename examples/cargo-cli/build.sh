#!/bin/bash
set -eou pipefail


cd "src/"

# build crate for example package
cargo package --allow-dirty
