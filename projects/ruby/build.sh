#!/bin/bash

cd "projects/ruby/src"

pwd
ls

gem build cloudsmith-ruby-example.gemspec
