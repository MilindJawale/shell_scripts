#!/bin/bash
cache=$( free -m | awk NR==2'{print$6}' )
time_stamp=$(date +"%y-%m-%d-%H-%M-%S")
echo "$time_stamp cahes is $cache"
if [ $cache -gt 100 ]
then 
	echo 3 > /proc/sys/vm/drop_caches
	echo "cache cleaned at $time_stamp"
fi
