#!/bin/bash
# storing the hash in a variable for easy access
gmMySampleHash='ba49ec1e5a09c8f4edee0ee05463426fa0dd9c285bc678a614d54e171d85d752'
gmAnswer=$("$gmMySampleHash" | sha256sum)
printf $gmAnswer | sha256sum| cut -d " " -f 1
# using for loop to go over metasploit password list 
for word in $(cat /usr/share/metasploit-framework/data/wordlists/password.lst)
do		
	if [ $(printf $word | md5sum| cut -d " " -f 1) == $MySampleHash ]
		 then
			printf "==========================\n"
			printf "Found Password & Hash^: $word\n"
			printf "==========================\n"
			break
		 else
			printf "Trying Password: $word\n"
			printf "Seeking Hash: $mySampleHash\n"
			printf $word | md5sum| cut -d " " -f 1
	fi
done
