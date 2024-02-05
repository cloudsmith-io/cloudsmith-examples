#!/bin/bash
set -eou pipefail


cd "src/"

# build artifact using dart repository
tar --exclude='.dart_tool' -czf cloudsmith_dart_example_1.0.$BUILD_NUMBER.tar.gz ./*
