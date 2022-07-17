#!/bin/bash

# storing the hash in a variable for easy access
hash='14a4b8e7ae966e72a3a2c51633bfabc6'

# using for loop to go over metasploit password list - other wordlists could be utilized if desired. 
for word in $(cat /usr/share/metasploit-framework/data/wordlists/password.lst)
do      
        
	        if [ printf $word | md5| cut -d “ “ -f 1 == $hash ]
                then 
                        printf "==========================\n"
                        printf "Found Password: $word\n"
                        printf "==========================\n"
                        break
                else
                        printf "Password: $word\n"
                        printf "Sample Hash: $hash\n"
                        printf "Current Hash: $word\n"
        fi
done
