#!/bin/bash

cd "projects/helm/src"

echo "Setting up chart ..."

echo "Generating Charts.yaml ..."
./helm/Charts.yaml.sh

echo "Building Helm Chart ..."
helm package ./cloudsmith-helm-example
