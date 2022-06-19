#!/bin/bash
path=/home/ec2-user/shell
for file in $(ls /home/ec2-user/shell)
do
	echo $file
	ext=${file##*.}
	case $ext in
		txt )
			echo "file is text $file" ;;
		sh)
			echo "file is shell $file" ;;
	esac
done
