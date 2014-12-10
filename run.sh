#!/bin/sh
set -e

# First make sure glide is installed
if ! type glide &> /dev/null ; then
  info "glide is not installed, copying binary"
  cp glide_linux_amd64/glide /usr/bin/glide
else
  info "glide is available"
  debug "glide version: $(glide --version)"
fi

info "using GOPATH=$(glide gopath)"
export GOPATH=$(glide gopath)
glide install

if [ "$WERCKER_GLIDE_BUILD_BUILD" != "false" ]; then
  go build
fi
