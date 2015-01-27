#! /bin/bash -x
BASE_DIR=/root/freezer-sandbox/tests/
CONF_FILE=conf.sh
RESULTS_DIR=results/
source $BASE_DIR$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=tar.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
tar -cf /tmp/archive.tar $INPUT_PATH && sync
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
