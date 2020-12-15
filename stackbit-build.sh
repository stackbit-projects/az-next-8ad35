#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://staging.widget.stackbit.com/init.js 5fd8ad35c506d30015152d3d

echo "stackbit-build.sh: finished build"
