#!/bin/bash
set -e
set -x

THREADS=$(nproc)

V=2.9.4
tar -xzf spot-$V.tar.gz
cd spot-$V
./configure
make -j$THREADS
sudo make -j$THREADS install
sudo ln -s /usr/local/lib/python3.8/site-packages/spot/ /usr/local/lib/python3.8/dist-packages/spot
sudo ln -s /usr/local/lib/python3.8/site-packages/buddy.py /usr/local/lib/python3.8/dist-packages
sudo ln -s /usr/local/lib/python3.8/site-packages/_buddy* /usr/local/lib/python3.8/dist-packages/
sudo ldconfig && cd .. && rm -rf spot-$V
