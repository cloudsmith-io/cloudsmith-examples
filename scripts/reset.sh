#!/usr/bin/env bash
self=$(readlink -f $BASH_SOURCE)
self_dir=$(dirname $self)
root_dir=$(readlink -f "$self_dir/..")
project=$1
api_url=$2
. $root_dir/scripts/common.sh

# TODO(ls): Reset the Cloudsmith repository
