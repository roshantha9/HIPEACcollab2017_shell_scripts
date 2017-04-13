## We randomly vary both the MIF and INT freqs ##

# --------
# GPU freq (MHz): 532,480,350,266,177
# CPU freq (KHz): 1600000,1500000,1400000,1300000,1200000,1100000,1000000,900000,800000,600000,550000,500000,450000,400000,350000,300000,250000
# INT freq_table (KHz): 800000 700000 650000 600000 550000 400000 267000 200000 160000 100000 50000
# MIF freq_table (KHz): 800000 400000 200000 100000
# ---------


MIF_FREQ=(0 800000 400000 200000)
INT_FREQ=(0 800000 400000 200000)

echo "-- START --"

# echo commands on
#set -x #echo on 


# -- setting MIF/INT freqs --

while :
do
	mifrand=$(( ( RANDOM % 3 )  + 1 ))
	m=${MIF_FREQ[$mifrand]}	
	
	intrand=$(( ( RANDOM % 3 )  + 1 ))
	i=${INT_FREQ[$intrand]}
	
	sleep 0.5

	# update MIF freq	
	echo $m > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
	echo $m > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq

	# update INT freq	
	echo $i > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
	echo $i > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq

done



# echo commands off
#set +x #echo off

echo "-- FINISHED --"

