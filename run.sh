#!/bin/sh
set -e

debug "$("$WERCKER_STEP_ROOT/glide" --version)"
info "using GOPATH=$("$WERCKER_STEP_ROOT/glide" gopath)"

export GOPATH=$("$WERCKER_STEP_ROOT/glide" gopath)
"$WERCKER_STEP_ROOT/glide" install
