TESTTYPE=$1
MIF=$2
INT=$3

DATA_FILE=/sdcard/andperfstats/$TESTTYPE/data_fps-$MIF-$INT.csv

mkdir -p /sdcard/andperfstats/$TESTTYPE/

touch $DATA_FILE

while [ 1 ]; do
  service call SurfaceFlinger 1013 | grep -o -E \([a-fA-F0-9]+\ \) >> $DATA_FILE
  sleep 1
done
