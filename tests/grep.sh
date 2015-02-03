#!/bin/bash -x
CONF_FILE=conf.sh
RESULTS_DIR=results/
source /home/frdeso/projets/freezer/tests/$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=grep.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
{ /usr/bin/time -f "%e\n%U\n%S\n" grep -irn "freezer" $INPUT_PATH$INPUT_FILE > /dev/null ; } 2>> $RESULTS_PATH
