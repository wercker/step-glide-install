#!/bin/sh
set -eo pipefail

debug "$(./glide --version)"

export GOVENDOREXPERIMENT=1
./glide install --cache
