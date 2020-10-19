#!/bin/bash

DEP_DIR=dependencies

# Make directory if necessary
mkdir -p $DEP_DIR

wget -O $DEP_DIR/spot-2.9.4.tar.gz http://www.lrde.epita.fr/dload/spot/spot-2.9.4.tar.gz
wget -O $DEP_DIR/carl.zip https://github.com/smtrat/carl/archive/master14.zip
wget -O $DEP_DIR/pycarl.zip https://github.com/moves-rwth/pycarl/archive/master.zip
wget -O $DEP_DIR/storm.zip https://github.com/moves-rwth/storm/archive/stable.zip
wget -O $DEP_DIR/stormpy.zip https://github.com/moves-rwth/stormpy/archive/master.zip

# Copy install scripts to the dep's directory
cp install*.sh $DEP_DIR
