#!/bin/bash
#set -e
set -x

FIMDP_TAG=next

unzip fimdp.zip
unzip fimdpenv.zip
#unzip tutorials.zip
unzip evaluation.zip

mv FiMDP-$FIMDP_TAG fimdp
mv FiMDPEnv-$FIMDP_TAG fimdpenv
# mv tutorials-$FIMDP_TAG tutorials
FIMDP_TAG=alpha
mv FiMDP-Evaluation-$FIMDP_TAG evaluation

cd fimdp
sudo pip3 install -e .
cd -

cd fimdpenv
sudo pip3 install -e .
cd -
