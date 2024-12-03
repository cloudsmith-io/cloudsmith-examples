#!/bin/bash
set -eou pipefail


cloudsmith push go $CLOUDSMITH_REPOSITORY target/*.zip
