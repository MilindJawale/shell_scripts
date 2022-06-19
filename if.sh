#!/bin/bash
a=$1
b=$2
c=$3
cli_arg=$#
if [ $cli_arg -eq 3 ]
then
	if [[ $a -gt $b && $a -gt $c ]]
	then 
		echo "$a is grater"
	elif [[ $b -gt $a && $b -gt $c ]]
	then 
		echo "$b is greater"
	elif [[ $c -gt $a && $c -gt $b ]]
	then 
		echo "$c is greater"
	fi
else
	echo "Enter three numbers"
fi

