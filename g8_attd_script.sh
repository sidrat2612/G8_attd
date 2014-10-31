#!/bin/bash

##########################################################################################################################################
# File: g8_attd_script.sh
# Date: 02-Oct-2014
# Author: Siddharth rathore
##########################################################################################################################################


#Varibles are defined here
export G8_VERSION="V1.3"
export G8_TITLE="G8_ATTENDANCE_SYSTEM_$G8_VERSION"
export G8_SERVER="http://g8usa.g8.net"
#export G8_ANAME=""
#export G8_TAG_ID=""
#export G8_EMP_ID=""


#Fuctions are defined from here

function g8_attend_sys() 
{
	G8_MSG="	Welcome
		Press Your Card to the Reader"
		dialog --title "$G8_TITLE" --infobox "$G8_MSG" 8 55
		read -s G8_CARD_ID
		echo "$G8_CARD_ID,$(date +"%Y-%m-%d") $(date +"%T")" >> /G8_attd/g8_log
		chmod 666 /G8_attd/g8_log
#	sleep 1
#	curl "localhost/lo/g8_attd/index.php"
		mysql -u root -p"12qwaszx" -e "Insert into g8_attd_log(g8_rec_id, g8_tag_id, g8_tag_timestamp, g8_curr_timestamp) VALUES ('','$G8_CARD_ID','$(date +"%Y-%m-%d") $(date +"%T")','$(date +"%Y-%m-%d") $(date +"%T")')" g8_core

		mysql -u root -p"12qwaszx" -e 'Select 'g8_uname' from 'g8_attd' where 'g8_tag_id'='$G8_CARD_ID'' g8_core > g8_info
		G8_PNAME=$(awk "NR==2{print;exit}" g8_info)
		G8_MSG_1="Thanks For Logging In  $G8_PNAME
		Good Day!!!!!"
		dialog --title "$G8_TITLE" --infobox "$G8_MSG_1" 8 55
		sleep 1 
		g8_attend_sys
}


#Main Function Is Run here
g8_attend_sys 
