TEST=$1
MIF=$2
INT=$3

OUTFILE=/sdcard/andperfstats/$TEST/data_audio-$MIF-$INT.txt

touch $OUTFILE

while [ 1 ]; do
	echo ---- >> $OUTFILE
	dumpsys media.audio_flinger | grep write >> $OUTFILE
	sleep 1
done

