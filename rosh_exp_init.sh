cd /data/local/tmp/automation_scripts/
echo ------------ START ------
echo -
echo ------------ setting surfaceflinger ------
source init_fpscnt_surfaceflinger.sh

echo -
echo ------------ setting bandwidth monitor ------
source enable_bwmon.sh
cat /sys/kernel/debug/bw_monitor
echo -


echo ------------ END ------
