#!/bin/sh -x
RESULTS_FILE=results/tar.time
mkdir -p RESULTS_FILE
adjtimex -p >> $RESULTS_FILE
tar -cf /tmp/archive.tar /var/ && sync
adjtimex -p >> $RESULTS_FILE
