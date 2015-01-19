source ./conf.sh
RESULTS_DIR=results/$TYPE/
RESULTS_FILE=grep.time
RESULTS_PATH=$RESULTS_DIR$RESULTS_FILE
mkdir -p $RESULTS_DIR
touch $RESULTS_PATH
date >> $RESULTS_PATH
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
grep -irn "freezer" $INPUT_PATH > /dev/null
adjtimex -p | grep -i "raw time" >> $RESULTS_PATH
