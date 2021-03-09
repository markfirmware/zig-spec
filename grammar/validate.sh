#!/usr/bin/env bash

PEG_VERSION=peg-0.1.18
wget https://www.piumarta.com/software/peg/$PEG_VERSION.tar.gz
tar zxf $PEG_VERSION.tar.gz
rm $PEG_VERSION.tar.gz
pushd $PEG_VERSION
    make
popd
export PATH=$PEG_VERSION:$PATH
make
./check_parser.sh