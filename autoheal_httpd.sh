#!/bin/bash
HTTP=$(netstat -tunlp | grep httpd | wc -l)
time_stamp=$(date +"-%y-%m-%d-%H-%M-%S")
if [ $HTTP -eq 1 ]
then 
	echo "httpd server running ok at $time_stamp"
else
	systemctl restart httpd
	echo "httpd server restarted at $time_stamp"
fi
