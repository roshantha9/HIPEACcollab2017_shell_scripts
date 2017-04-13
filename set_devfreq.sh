# --------
# INT freq_table : 800000 700000 650000 600000 550000 400000 267000 200000 160000 100000 50000
# MIF freq_table : 800000 400000 200000 100000
# ---------

echo "-- START --"

# echo commands on
set -x #echo on 

MIF_FREQ=$1
INT_FREQ=$2


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

