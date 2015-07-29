#!/bin/bash -xe

export PYTHONPATH=$PYTHONPATH:$PWD/src
autoreconf -ivf
./configure
make check
