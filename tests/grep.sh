#! /bin/bash -x
BASE_DIR=/root/freezer-sandbox/tests/
CONF_FILE=conf.sh
RESULTS_DIR=results/
source $BASE_DIR$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=grep.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
grep -irn "freezer" $INPUT_PATH > /dev/null
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
