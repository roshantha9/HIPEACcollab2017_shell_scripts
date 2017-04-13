SLEEPTIME=3

# ================== PROGRESSIVELY DECREASE FREQ =========================

# ------------------------------
# MIF: 800000, INT: 800000
MIF_FREQ=800000
INT_FREQ=800000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 400000, INT: 400000
MIF_FREQ=400000
INT_FREQ=400000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 200000, INT: 200000
MIF_FREQ=200000
INT_FREQ=200000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 100000, INT: 50000
MIF_FREQ=100000
INT_FREQ=50000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME


# ================== PROGRESSIVELY INCREASE FREQ =========================

# ------------------------------
# MIF: 200000, INT: 200000
MIF_FREQ=200000
INT_FREQ=200000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 400000, INT: 400000
MIF_FREQ=400000
INT_FREQ=400000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 800000, INT: 800000
MIF_FREQ=800000
INT_FREQ=800000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME


# ================== RANDOM FLUCTUATE =========================

# ------------------------------
# MIF: 100000, INT: 50000
MIF_FREQ=100000
INT_FREQ=50000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 400000, INT: 400000
MIF_FREQ=400000
INT_FREQ=400000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 800000, INT: 800000
MIF_FREQ=800000
INT_FREQ=800000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 200000, INT: 200000
MIF_FREQ=200000
INT_FREQ=200000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME


# ------------------------------
# MIF: 400000, INT: 400000
MIF_FREQ=400000
INT_FREQ=400000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME


# ------------------------------
# MIF: 100000, INT: 50000
MIF_FREQ=100000
INT_FREQ=50000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME

# ------------------------------
# MIF: 200000, INT: 200000
MIF_FREQ=200000
INT_FREQ=200000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME


# ------------------------------
# MIF: 400000, INT: 400000
MIF_FREQ=400000
INT_FREQ=400000
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/max_freq
echo $MIF_FREQ > /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/min_freq
cat /sys/devices/platform/exynos5-busfreq-mif/devfreq/exynos5-busfreq-mif/cur_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/max_freq
echo $INT_FREQ > /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/min_freq
cat /sys/devices/platform/exynos5-busfreq-int/devfreq/exynos5-busfreq-int/cur_freq

sleep $SLEEPTIME





