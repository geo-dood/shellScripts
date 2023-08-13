#!/bin/bash
#This is a script to show IP info like the 'ipconfig' command in Windows.

echo " "
#Showing hostname
	echo -e "\tHostname\t\t: \c"
	hostname
#Showing ethernet adapter name
	echo -e "\tEthernet Adapter\t: \c"
	nmcli con show | grep -w ethernet | cut -c 69-74
#Showing IPv4 Address
	echo -e "\tIPv4 Address\t\t: \c"
	ifconfig ens192 | grep -w inet | cut -c 14-28
#Showing Default Gateway
	echo -e "\tDefault Gateway\t\t: \c"
	route -n | grep -w UG | cut -c 17-31
#Showing DNS Server
	echo -e "\tDNS Server\t\t: \c"
	nmcli con show "Wired connection 1" | grep ipv4.dns: | cut -c 41-56
echo " "

#End of Script
