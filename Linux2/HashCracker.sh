#!/bin/bash

# storing the hash in a variable for easy access
myHash='14a4b8e7ae966e72a3a2c51633bfabc6'

# using for loop to go over metasploit password list - other wordlists could be utilized if desired. 
for word in $(cat /usr/share/metasploit-framework/data/wordlists/password.lst)      
do

wordHash= printf \$word | md5sum | cut -d " " -f 1\
	
		if [ "$wordHash" =="$myHash" ]
		 then	
			printf "==========================%s\n"
			printf "Found Password: $word%s\n"
			printf "==========================%s\n"
			break
		 else
        		printf "Attempted Password: $word\n"
                	printf "Sample Hash: $myHash\n"
			printf "Attempted Hash: $wordHash"
	fi
done
