# first we have to set some system properties to true
setprop "viewroot.profile_rendering" "true"
setprop "viewancestor.profile_rendering" "true"

# check if set
getprop | grep profile

# this returns the framerate according to surfaceflinger
service call SurfaceFlinger 1013 | grep -o -E \([a-fA-F0-9]+\ \)
