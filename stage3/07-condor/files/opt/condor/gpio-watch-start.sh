#!/bin/bash


sleep 10
#echo "29" > /sys/class/gpio/export
gpio-watch -s /opt/condor/gpio-watch-dir -e falling 29
