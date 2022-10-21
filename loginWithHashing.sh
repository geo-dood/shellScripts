#!/bin/bash
#------------------------------------------------------------------------------------------------------
# Using the read command with prompts (-p flag) - asking for user to input a username, then a password.
# We store these to variables called 'userName' and 'passWord'
read -p "What is your username? --> " userName
read -p "What is your password? --> " passWord
echo " "
#------------------------------------------------------------------------------------------------------
# Passing input from 'passWord' as STDIN to mkpasswd (using -s flag),
# Then, apply SHA-256 hash, by specifying our method (-m),
# Finally, apply our specified salt using the -S flag.
# This is all stored in the 'passWordHash' variable. 
passWordHash=$(printf "$passWord" | mkpasswd -s -m SHA-256 -S "123456abc")
#------------------------------------------------------------------------------------------------------
# These are my 'stored' username and password - stored in 'myUser' and 'myPass' variables
myUser="gdmaysack"
myPass="germs"
# Hashing 'myPass' with the same method described above for 'passWordHash'
myPassHash=$(printf "$myPass" | mkpasswd -s -m SHA-256 -S "123456abc")
#------------------------------------------------------------------------------------------------------
# Using a while loop to compare the value of userName and myUser (given username vs stored username)
# Same while loop is checking the hash value of passWord and myPass (given password vs stored password)
# If given password or given username DO NOT match the stored values, user is asked to try again.
# Once user inputs correct user/pass combo, they are greeted with their username + given the login time.
while true
do	
	if [ $userName != $myUser ] || [ $passWordHash != $myPassHash ]
		then
			printf "Username/Password incorrect - Please try again..."
			echo " "
			read -p "What is your username? --> " userName
			read -p "What is your password? --> " passWord
			echo " "
			passWordHash=$(printf "$passWord" | mkpasswd -s -m SHA-256 -S "123456abc")
		else
			printf "Hello there, $userName - Welcome!\n"
			printf "You've Successfully logged in on $(date +'%m/%d/%Y') "
			printf "at $(date +'%r')\n"
			printf "Have a nice day!\n"
		break
	fi
done