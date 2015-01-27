CONF_FILE=conf.sh
RESULTS_DIR=results/
source $BASE_DIR$CONF_FILE
RESULTS_DIR=$BASE_DIR$RESULTS_DIR$TYPE/
RESULTS_FILE=tar.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH

date >> $RESULTS_PATH
{ /usr/bin/time -f "%e\n%U\n%S\n" tar -cf /tmp/archive.tar -C $INPUT_PATH $INPUT_FILE && sync; } 2>> $RESULTS_PATH
