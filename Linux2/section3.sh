#!/bin/bash
echo "********************
Linux Server 2 Midterm Section 3 Script
Maysack-Schlueter
07/18/2022
********************"
gmSAVEDPASS=$(echo -n "germs" | sha256sum)

while true; do
	read -p "Username: " USER
	read -p "Password: " PASS
	gmGivenPassHash=$(echo -n "$PASS" | sha256sum)

	if [ "$gmGivenPassHash" == "$gmSAVEDPASS" ]
	then
		echo "Login Success"
		break
	else
		echo "Login Failed. Try Again!"
		continue
	fi
done
