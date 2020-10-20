#!/bin/bash
set -e

THREADS=$(nproc)

unzip storm.zip
mv storm-stable storm
cp storm_3rdparty_CMakeLists.txt storm/resources/3rdparty/CMakeLists.txt
mkdir -p storm/build
cd storm/build
mkdir -p include/resources/3rdparty/
cp -r ../../StormEigen include/resources/3rdparty/
cmake ..
make storm-main -j$THREADS
cd ../../

# Install Stormpy
unzip stormpy.zip
mv stormpy-master stormpy
cd stormpy
sudo pip3 install -ve .
cd ..
