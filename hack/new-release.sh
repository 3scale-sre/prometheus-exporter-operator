#!/bin/bash

REPO="3scale-sre/prometheus-exporter-operator"

# Skip if alpha release
[[ ${1} == *"-alpha"* ]] && echo "" && exit 0

# Skip if release already exists
curl -o /dev/null --fail --silent "https://api.github.com/repos/${REPO}/releases/tags/${1}" && echo "" && exit 0

echo ${1}
