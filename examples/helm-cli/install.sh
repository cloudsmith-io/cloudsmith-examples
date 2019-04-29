#!/bin/bash
set -eou pipefail


if [ "$CLOUDSMITH_REPOSITORY_IS_PRIVATE" = "yes" ]; then
    INDEX_URL="https://dl.cloudsmith.io/basic/${CLOUDSMITH_REPOSITORY}/helm/charts/"
    AUTH_STRING="--username token --password ${CLOUDSMITH_API_KEY}"
else
    INDEX_URL="https://dl.cloudsmith.io/public/${CLOUDSMITH_REPOSITORY}/helm/charts/"
    AUTH_STRING=""
fi

# install and initialise helm
curl -L https://git.io/get_helm.sh | bash
helm init --client-only

# we can't do a real Helm install since we don't have a kubernetes cluster in CI,
# so we'll just fetch the chart instead
helm fetch \
  --repo "$INDEX_URL" \
  --version 1.0.${BUILD_NUMBER} \
  ${AUTH_STRING} \
  cloudsmith-example-chart
