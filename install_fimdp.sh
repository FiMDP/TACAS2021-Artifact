#!/bin/bash
#set -e
set -x

FIMDP_TAG=tacas2021

unzip fimdp.zip
unzip fimdpenv.zip
unzip tutorials.zip
unzip evaluation.zip
unzip doc.zip

mv FiMDP-$FIMDP_TAG fimdp
mv FiMDPEnv-$FIMDP_TAG fimdpenv
mv tutorials-$FIMDP_TAG tutorials
mv FiMDP-Evaluation-$FIMDP_TAG evaluation
mv fimdp-latest fimdp-documentation

cd fimdp
sudo pip3 install -e .
cd -

cd fimdpenv
sudo pip3 install -e .
cd -

sudo chown -R tacas21:tacas21 fimdp fimdpenv evaluation fimdp-documentation tutorials

