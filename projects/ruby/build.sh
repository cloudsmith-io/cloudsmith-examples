#!/bin/bash

cd "projects/ruby/src"

cd "lib/util"

echo "module Cloudsmith
  VERSION = '1.${TRAVIS_BUILD_NUMBER}.0'
end" > version.rb

cd "-"

pwd
ls

gem build cloudsmith-ruby-example.gemspec
