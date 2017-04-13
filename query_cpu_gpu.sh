echo ---- CPU ---
cat /proc/stat | grep cpu
echo ---- GPU ---
cat /sys/module/pvrsrvkm/parameters/sgx_gpu_utilization
