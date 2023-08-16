#!/bin/bash
##Author: George D. Maysack-Schlueter
##This is a script to backup a directory of your choosing

##Asking the user which directory they would like to backup. 
echo -e "What directory do you want to back up? -->\c"
read ANS

##Shows 'Performing Backup' for 3 seconds, then proceeds with Backup & Gzip compression
#of the given directory to the users home directory in a file called 'backupfile-filename-date'
echo "Performing Backup..."
sleep 3

##Filename & Date Variables created for file naming.
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`

#Actual backup command using Gzip compression.
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

#Small message to notify user that backup completed sucessfully
echo "Backup of" $ANS "performed successfully to ~/backup-$FILE-$DATE.tar.gz"

##End of script
