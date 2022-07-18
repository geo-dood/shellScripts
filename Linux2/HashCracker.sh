#!/bin/bash
# storing the hash in a variable for easy access
MySampleHash='14a4b8e7ae966e72a3a2c51633bfabc6'
word="blyvooruitsig"
printf $word | md5sum| cut -d " " -f 1
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
			printf "Seeking Hash: $MySampleHash\n"
			printf $word | md5sum| cut -d " " -f 1
	fi
done
