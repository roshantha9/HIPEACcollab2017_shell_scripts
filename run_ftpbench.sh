TEST=$1
MIF=$2
INT=$3

OUTFILE=/sdcard/andperfstats/$TEST/data_ftp-$MIF-$INT.txt
DOWNFILE=dummyrandom.txt

touch $OUTFILE

cd /sdcard/Downloads/

for i in 1 2 3 4 5 6 7 8 9 10
do
	{ time ftpget -u rosh -p rosh123 140.109.125.138 $DOWNFILE ; } 2>> $OUTFILE
	#time ftpget -v -u rosh -p rosh123 140.109.125.138 video.y4m
	rm $DOWNFILE
	echo "----" >> $OUTFILE
done
