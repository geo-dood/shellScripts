#!/bin/bash
#This is a script to create a report of the disk configuration.

#Putting 'hostname' into 'FILENAME' Variable
FILENAME=`hostname`
echo "Disk report saved to $FILENAME.report"

#Appends LVM Config to report
echo -e "\n LVM Configuration: \n\n" >>$FILENAME.report
lvscan >>$FILENAME.report

#Appends Parition Configuration to report
echo -e "\n\n Partition Configuration: \n\n" >>$FILENAME.report
fdisk -l | head -17 >>$FILENAME.report

#Appends Mounted Filesystems to report
echo -e "\n\n Mounted Filesystems: \n\n" >>$FILENAME.report
df -hT | grep -v tmp >>$FILENAME.report

#End of script
