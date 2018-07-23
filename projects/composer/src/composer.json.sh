#!/usr/bin/env bash
self=$(readlink -f $BASH_SOURCE)
self_name=$(basename $self)
self_dir=$(dirname $self)

export COMPOSER_VERSION="${COMPOSER_VERSION:-0.1.0-dev1}"
export COMPOSER_TIME="${COMPOSER_TIME:-$(date +'%Y-%m-%d %H:%M:%S')}"

# Replace all variables in composer.json.template with values
cat $self_dir/composer.json.template | envsubst > $self_dir/composer.json
