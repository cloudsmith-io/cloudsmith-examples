#!/bin/bash

cd "projects/ruby/src"

cd "lib/util"

echo "module Cloudsmith
  VERSION = '1.0.${TRAVIS_BUILD_NUMBER}'
end" > version.rb

cd "-"

pwd
ls

gem build cloudsmith-ruby-example.gemspec
