#!/bin/bash
#This is a comment!

#Shows todays date
echo -e "Today's date is: \c"
date

#Shows whos logged in
echo -e "\nThe people logged into the system are: "
who

#Prompt asking IF they'd like to view / contents
echo -e "\nWould you like to see the contents of the / directory? (y/n)-->\c"

#Reading for user input y or Y for "yes" to print / contents
#Any other input will be considered "no"
read ANSWER
	if [ $ANSWER = "y" -o $ANSWER = "Y" ]
	then	
	echo -e "\nThe contents of the / directory are: "
	ls -F /
	fi
#End of script
