#!/bin/bash

cd "projects/npm/src"

echo "Generating package.json ..."
./package.json.sh

echo "Building npm package ..."
npm pack
