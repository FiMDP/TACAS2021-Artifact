$PACK_DIR=dependencies/packages/

mkdir -p $PACK_DIR

sudo apt-get install -d -o Dir::Cache=i$PACK_DIR -o DIR::Cache::archives=$PACK_DIR libgmp-dev libglpk-dev libhwloc-dev z3 libboost-all-dev libeigen3-dev libginac-dev libpython3-dev automake jupyter graphviz
