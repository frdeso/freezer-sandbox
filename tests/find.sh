#!/bin/bash
CONF_FILE=conf.sh
RESULTS_DIR=results/
source /root/freezer-sandbox/tests/$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=find.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
{ /usr/bin/time -f "%e\n%U\n%S\n" find $INPUT_PATH$INPUT_FILE > /dev/null ; } 2>> $RESULTS_PATH
