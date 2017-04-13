# echo commands on
set -x #echo on 

# -- enable bw_monitor --
echo 1 2 > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/bw_monitor/bw_mon

set +x #echo off
