#!/bin/bash

############################################################################################################################
# File: g8_start.sh
# Date: 02-Oct-2014
# Author: Siddharth Rathore
############################################################################################################################


#File Location variable

export ATT_SCRIPT="${pwd}g8_attd_script.sh"

#install necessary applications here

apt-get -y install curl wget dialog

#Program Starts here
while :
do
echo "We are checking to see if our program is alive or not!!!!!!!!!"

if [ -f $ATT_SCRIPT ] ; then 
	PID=$(ps -ax | grep $ATT_SCRIPT | awk '{ print $1 }')
	echo $PID
	if ps ax | grep -v grep | grep $ATT_SCRIPT
	then
		echo "Script is running"
		sleep 1
	else
	        echo "Script is not running - attempting to Start_"
		cd /G8_attd/
		./$ATT_SCRIPT
	fi
else
	echo "Script is not running - attempting to Start"
	cd /G8_attd/
	./$ATT_SCRIPT
fi

done
