#!/bin/bash

#saving sha256 versions of username 'mike' and password 'ace' under these variables
SAVEDUSER=$(echo -n "mike" | sha256sum)
SAVEDPASS=$(echo -n "ace" | sha256sum)

#Reading user input for username and password, storing them in plaintext
read -p "Enter your username: " USER 
read -p "Enter your password: " PASS

#taking plaintext credentials and applying sha256 hash algorithm to them.
USERHASH=$(echo -n "$USER" | sha256sum) 
PASSHASH=$(echo -n "$PASS" | sha256sum)

# Test if USERHASH matches SAVEDUSER & PASSHASH matches SAVEDPASS stored value - they are all stored as sha256, so if the values match, it means the user input was correct. 
if [ "$USERHASH" == "$SAVEDUSER" ] && [ "$PASSHASH" == "$SAVEDPASS" ]
then
    echo “Login Successful”
else
    echo “Login Failed”
fi
