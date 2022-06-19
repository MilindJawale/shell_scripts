#!/bin/bash
alert=15
df -H | awk '{print$5" "$1}' | while read output
do
	usage=$(echo $output | awk '{print$1}' | cut -d'%' -f1)
	file=$(echo $output | awk '{print$2}' )
	if [ $usage -gt 15 ]
	then
		echo "critical $file"
	fi
done
