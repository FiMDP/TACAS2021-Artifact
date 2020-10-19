#!/bin/bash

THREADS=$(nproc)

unzip storm.zip
mv storm-stable storm
mkdir -p storm/build
cd storm/build
cmake ..
make storm-main -j$THREADS
cd ../../

# Install Stormpy
unzip stormpy.zip
mv stormpy-master stormpy
sudo pip install -ve .
cd ..
