#!/bin/bash
set -eou pipefail


cd "src/"

# build gem for example package
gem build cloudsmith-ruby-example.gemspec
