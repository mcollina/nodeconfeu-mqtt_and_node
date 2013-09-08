#! /bin/bash

dir=`pwd`
pushd ../mosca
bin/mosca --http-port 3000 --http-static $dir --http-bundle \
          --very-verbose | bunyan
popd
