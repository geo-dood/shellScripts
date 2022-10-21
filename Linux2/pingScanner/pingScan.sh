#!/bin/bash
echo "Scan in Progress - Please allow up to 5 minutes to complete."

for ip in $(seq 1 254); do	
	if ping -4 -c 1 192.168.1.$ip > /dev/null ; then
		echo "`date`: Successful Connection @ 192.168.1.$ip/24"
		echo "`date`: Successful Connection @ 192.168.1.$ip/24" >> successLog.txt
	else
		echo "`date`: Unsuccessful Connection @ 192.168.1.$ip/24" >> failLog.txt
	fi &
sleep 1
done
echo "Complete - see 'successLog.txt' & 'failLog.txt' for results."
