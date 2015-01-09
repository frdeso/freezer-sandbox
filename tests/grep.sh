#!/bin/sh -x
RESULTS_FILE=results/grep.time
mkdir -p RESULTS_FILE
date >> $RESULTS_FILE
adjtimex -p >> $RESULTS_FILE
grep -irn "freezer" /var/ > /dev/null
adjtimex -p >> $RESULTS_FILE
