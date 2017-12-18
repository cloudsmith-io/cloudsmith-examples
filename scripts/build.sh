#!/usr/bin/env bash
self=$(readlink -f $BASH_SOURCE)
self_dir=$(dirname $self)
root_dir=$(readlink -f "$self_dir/..")
project=$1
api_url=$2
. $root_dir/scripts/common.sh

build_project() {
  local project=$1
  echo "Building $project project ..."
  $root_dir/projects/$project/build.sh
}

test -z "$project" && {
  for I in $root_dir/projects/*; do
    build_project $I
  done
} || {
  build_project $project
}
