#!/bin/bash
while true
do
clear
echo -e "What would you like to do?
Add an entry (a)
Search an entry (s)
Quit (q)
Enter your choice (a/s/q) -->\c"
read ANSWER
case $ANSWER in
	a|A) echo -e "Name of the family member -->\c"
		read NAME
		echo -e "Family members realtion to you -->\c"
		read RELATION
		echo -e "Family members phone number -->\c"
		read PHONE
		echo -e "$NAME\t$RELATION\t$PHONE" >> database
		;;
	s|S) echo -e "Who would you like to search for? -->"
		read WORD
		grep "$WORD" database
		sleep 4
		;;
	q|Q) exit
		;;
	*) echo "You must enter 'a' to add an entry, 's' to search, or 'q' to quit."
		sleep 4
		;;
esac
done
#End of script
