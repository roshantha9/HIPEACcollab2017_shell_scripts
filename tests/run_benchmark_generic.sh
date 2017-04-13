
TEST=$1
MIF=$2
INT=$3



MEM_FILE=/sdcard/andperfstats/$TEST/data_mem-$MIF-$INT.csv
CPUGPU_FILE=/sdcard/andperfstats/$TEST/data_cpugpu-$MIF-$INT.csv

echo $MEM_FILE
echo $CPUGPU_FILE

#read blah

rm $MEM_FILE
rm $CPUGPU_FILE

mkdir -p /sdcard/andperfstats/$TEST/
/data/local/tmp/android-perfstats-collector $MEM_FILE $CPUGPU_FILE
