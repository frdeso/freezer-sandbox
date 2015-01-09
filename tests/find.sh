#!/bin/sh -x
RESULTS_FILE=results/find.time
mkdir -p RESULTS_FILE
date >> $RESULTS_FILE
adjtimex -p >> $RESULTS_FILE
find / > /dev/null
adjtimex -p >> $RESULTS_FILE
