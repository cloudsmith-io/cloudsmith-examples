#!/bin/bash

cd "projects/helm/src"

echo "Setting up chart ..."

echo "Generating Charts.yaml ..."
./helm/src/Charts.yaml.sh

echo "Building Helm Chart ..."
helm package ./cloudsmith-helm-example
