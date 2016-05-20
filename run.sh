#!/bin/sh
set -e

info "Running $("$WERCKER_STEP_ROOT/glide" --version)"

"$WERCKER_STEP_ROOT/glide" install
