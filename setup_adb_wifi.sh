#!/bin/bash
echo "-- START --"
echo "Connect phone to ADB via USB."
read -p "Press any key to continue... " -n1 -s

# echo commands
set -x #echo on 

adb usb
sleep 2
adb devices
adb shell netcfg
read -p "Be ready to enter IP addr of phone" -n1 -s

read -p "IP? " IP

adb tcpip 5556
sleep 2
adb connect $IP:5556

set +x #echo off

echo "-- FINISHED --"
