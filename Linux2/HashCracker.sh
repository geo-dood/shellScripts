#!/bin/bash
# storing the hash in a variable for easy access
MySampleHash='14a4b8e7ae966e72a3a2c51633bfabc6'

# using for loop to go over metasploit password list 
for word in $(cat /usr/share/metasploit-framework/data/wordlists/password.lst)
do
		
	if [ '$word | md5sum' == '$MySampleHash' ]

		 then
			printf "==========================\n"
			printf "Found Password: $word\n"
			printf "==========================\n"
			sleep 30
			break
		 else
			printf "Password: $word\n"
			printf "Sample Hash: $MySampleHash\n"
			printf "Current Hash:\r"
		        printf $word | md5sum\n
	fi
done
