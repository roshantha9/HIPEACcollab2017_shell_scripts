
run_andperfstats () {
	BENCHID=$1	
	miffreq=$2
	intfreq=$3
	
	MEM_FILE=/sdcard/andperfstats/$BENCHID/data_mem-$miffreq-$intfreq.csv
	CPUGPU_FILE=/sdcard/andperfstats/$BENCHID/data_cpugpu-$miffreq-$intfreq.csv

	echo $MEM_FILE
	echo $CPUGPU_FILE

	rm $MEM_FILE
	rm $CPUGPU_FILE

	mkdir -p /sdcard/andperfstats/$BENCHID/
	/data/local/tmp/android-perfstats-collector $MEM_FILE $CPUGPU_FILE &
}



run_clearcache () {
	echo 1 >/proc/sys/vm/drop_caches
	echo 2 >/proc/sys/vm/drop_caches
	echo 3 >/proc/sys/vm/drop_caches
}

ARGMIF=$1
ARGINT=$2


# clear cache
run_clearcache

# ================================================================================
echo "################################"
echo "# BZIP2"
echo "################################"
TEST=spec_bzip2
# start stats collection
run_andperfstats $TEST $ARGMIF $ARGINT
sleep 1

echo "Workload : START"
# run microbenchmark
cd /data/local/tmp/specbench/bzip2/
./bzip2_base.arm-gcc42-05 dryer.jpg 2 > dryer.jpg.out 2>> dryer.jpg.err
echo "Workload : END"

sleep 1
# end stats collection
killall "android-perfstats-collector"
ps -a | grep "android-perfstats"

# clear cache
run_clearcache

read -p "FINISHED: press any key to start next workload.." -n1 -s
echo ""

# ================================================================================
echo "################################"
echo "# GOBMK"
echo "################################"
TEST=spec_gobmk
# start stats collection
run_andperfstats $TEST $ARGMIF $ARGINT
sleep 1

echo "Workload : START"
# run microbenchmark
cd /data/local/gobmk/
./gobmk_base.arm-gcc42-05 --quiet --mode gtp < dniwog.tst > dniwog.out 2>> dniwog.err
echo "Workload : END"

sleep 1
# end stats collection
killall "android-perfstats-collector"
ps -a | grep "android-perfstats"

# clear cache
run_clearcache

read -p "FINISHED: press any key to start next workload.." -n1 -s
echo ""

# ================================================================================
echo "################################"
echo "# HMMER"
echo "################################"
TEST=spec_hmmer
# start stats collection
run_andperfstats $TEST $ARGMIF $ARGINT
sleep 1

echo "Workload : START"
# run microbenchmark
cd /data/local/tmp/specbench/hmmer/
./hmmer_base.arm-gcc42-05 --fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 bombesin.hmm > bombesin.out 2>> bombesin.err
echo "Workload : END"

sleep 1
# end stats collection
killall "android-perfstats-collector"
ps -a | grep "android-perfstats"

# clear cache
run_clearcache

read -p "FINISHED: press any key to start next workload.." -n1 -s
echo ""

# ================================================================================
echo "################################"
echo "# MCF"
echo "################################"
TEST=spec_mcf
# start stats collection
run_andperfstats $TEST $ARGMIF $ARGINT
sleep 1

echo "Workload : START"
# run microbenchmark
cd /data/local/tmp/specbench/mcf/
./mcf_base.arm-gcc42-05 inp_test.in > inp.out 2>> inp.err
echo "Workload : END"

sleep 1
# end stats collection
killall "android-perfstats-collector"
ps -a | grep "android-perfstats"

# clear cache
run_clearcache

read -p "FINISHED: press any key to start next workload.." -n1 -s
echo ""

# ================================================================================
echo "################################"
echo "# SJENG"
echo "################################"
TEST=spec_sjeng
# start stats collection
run_andperfstats $TEST $ARGMIF $ARGINT
sleep 1

echo "Workload : START"
# run microbenchmark
cd /data/local/tmp/specbench/sjeng/
./sjeng_base.arm-gcc42-05 test.txt > test.out 2>> test.err
echo "Workload : END"

sleep 1
# end stats collection
killall "android-perfstats-collector"
ps -a | grep "android-perfstats"

# clear cache
run_clearcache

read -p "FINISHED: The end !" -n1 -s
echo ""
# ================================================================================

