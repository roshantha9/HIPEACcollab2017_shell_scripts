# --------
# GPU freq (MHz): 532,480,350,266,177
# CPU freq (KHz): 1600000,1500000,1400000,1300000,1200000,1100000,1000000,900000,800000,600000,550000,500000,450000,400000,350000,300000,250000
# INT freq_table (KHz): 800000 700000 650000 600000 550000 400000 267000 200000 160000 100000 50000
# MIF freq_table (KHz): 800000 400000 200000 100000
# ---------

echo "-- START --"

# echo commands on
set -x #echo on 

CPU_FREQ=$1
MIF_FREQ=$2
INT_FREQ=$3


# -- setting CPU freqs --
echo -n userspace > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo -n 1 > /sys/devices/system/cpu/cpu0/online
echo -n 1 > /sys/devices/system/cpu/cpu1/online
echo -n 1 > /sys/devices/system/cpu/cpu2/online
echo -n 1 > /sys/devices/system/cpu/cpu3/online
echo -n $CPU_FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed


# -- setting GPU freqs --
# todo: add gpu freq setting also



# -- setting MIF freqs --
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq

# -- setting INT freqs --
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

# echo commands off
set +x #echo off

echo "-- FINISHED --"

