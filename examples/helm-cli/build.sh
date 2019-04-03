#!/bin/bash
set -eou pipefail


# build chart for example package
helm package src/cloudsmith-example-chart/
