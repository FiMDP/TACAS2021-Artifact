#!/bin/bash

THREADS=$(nproc)

unzip carl.zip
mv carl-master14 carl
mkdir -p carl/build
cd carl/build
cmake .. -DUSE_CLN_NUMBERS=ON -DUSE_GINACC=ON
make lib_carl -j$THREADS
cd ../../

# Install PyCarl
unzip pycarl.zip
mv pycarl-master pycarl
cd pycarl
sudo pip install -ve .
cd ..
