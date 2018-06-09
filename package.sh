#!/bin/bash -ex

#Borrowed from https://github.com/davars/sohop/blob/master/package.sh

# Compiles certchk and creates a Docker image tagged 'certchk-package'
# Run it with something like:
#  docker run -v "$CONFIG_DIR:/certchk" certchk-package -config="/locations"

root=$(git rev-parse --show-toplevel)
package_dir="$root/package"
#src_volume="$root":/go/src/github.com/davars/sohop

#docker run --rm -v $src_volume -v "$package_dir":/go/bin golang:1.9 sh -c 'CGO_ENABLED=0 go get -v github.com/davars/sohop/cmd/sohop'
#docker build -t sohop-package "$package_dir"
rm "$package_dir/sohop"
