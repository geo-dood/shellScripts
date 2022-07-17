#!/bin/bash

SAVEDUSER=$(echo -n "mike" | sha256sum)
SAVEDPASS=$(echo -n "ace" | sha256sum)

read -p "Enter your username: " USER 
read -p "Enter your password: " PASS

USERHASH=$(echo -n "$USER" | sha256sum) 
PASSHASH=$(echo -n "$PASS" | sha256sum)

# Test if USER matches stored value
if [ "$USERHASH" == "$SAVEDUSER" ] && [ "$PASSHASH" == "$SAVEDPASS" ]
then
    echo “Login Successful”
else
    echo “Login Failed”
fi
