#!/usr/bin/env bash
self=$(readlink -f $BASH_SOURCE)
self_dir=$(dirname $self)
root_dir=$(readlink -f "$self_dir/..")
project=$1
api_url=$2
. $root_dir/scripts/common.sh

check_project() {
  local project=$1
  echo "Checking $project project ..."
  # $root_dir/projects/$project/check.sh
  # TODO(ls): Pull artifact down and check it for correctness.
}

test -z "$project" && {
  for I in $root_dir/projects/*; do
    check_project $I
  done
} || {
  check_project $project
}
