#!/bin/bash -x
CONF_FILE=conf.sh
RESULTS_DIR=results/perf/
source /home/frdeso/projets/freezer/tests/$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=tar.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
{ perf record -q -e cycles -c 1000 -- tar -cf /tmp/archive.tar -C $INPUT_PATH $INPUT_FILE && sync ; }
perf report --stdio >> $RESULTS_PATH
