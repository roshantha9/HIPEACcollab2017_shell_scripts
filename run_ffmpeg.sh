TESTTYPE=$1
MIF=$2
INT=$3

DATA_FILE=/sdcard/andperfstats/$TESTTYPE/data_ffmpeg-$MIF-$INT.log

mkdir -p /sdcard/andperfstats/$TESTTYPE/

FFREPORT=file=$DATA_FILE:level=32 /data/local/tmp/ffmpeg -report -i /sdcard/LionWildlifeDocumentary_720p_extracted.mp4 -vframes 7500 -f null -


