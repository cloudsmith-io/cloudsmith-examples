#!/usr/bin/env bash
api_url=${api_url:-"https://api.cloudsmith.io/"}
api_version=$(curl -s "${api_url}status/check/basic/" | jq -r '.version')

