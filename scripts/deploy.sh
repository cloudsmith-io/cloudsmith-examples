#!/usr/bin/env bash
self=$(readlink -f $BASH_SOURCE)
self_dir=$(dirname $self)
root_dir=$(readlink -f "$self_dir/..")
project=$1
api_url=$2
. $root_dir/scripts/common.sh

deploy_project() {
  local project=$1
  echo "Deploying $project project ..."
  $root_dir/projects/$project/deploy.sh
}

test -z "$project" && {
  for I in $root_dir/projects/*; do
    deploy_project $I
  done
} || {
  deploy_project $project
}
