#!/bin/bash

echo "... deploying to Cloudsmith with cloudsmith-cli"

cd "projects/helm/src"

cloudsmith push helm cloudsmith/examples cloudsmith-helm-example-1.0.0.tgz
