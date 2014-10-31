#!/bin/bash

######################################################################################
# File: g8_add_del.sh
# Date: 13-Oct-2014
# Author: Siddharth Rathore
######################################################################################


#Varibles are defined here
export G8_VERSION="V1.1"
export G8_TITLE="G8_ATTENDANCE_SYSTEM_$G8_VERSION"
export G8_SERVER="http://g8usa.g8.net"
#export G8_ANAME=""
#export G8_TAG_ID=""
#export G8_EMP_ID=""

OUTPUT="/tmp/input.txt"
>$OUTPUT

trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM

#Fuctions are defined from here

function g8_add_cand()
{
	dialog --title "Add New Employee" \
	--inputbox "Enter your name " 8 60 2>$OUTPUT
	respose=$?
	 G8_ANAME=$(<$OUTPUT)
	trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM

	dialog --title "Add New Employee" \
	--inputbox "Enter Tag ID " 8 60 2>$OUTPUT
	respose=$?
	 G8_TAG_ID=$(<$OUTPUT)
	trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM
	
	dialog --title "Add New Employee" \
	--inputbox "Enter Employee ID " 8 60 2>$OUTPUT
	respose=$?
	 G8_EMP_ID=$(<$OUTPUT)
	trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM


	mysql -u root -p"12qwaszx" -e "Insert into g8_attd(g8_tag_id, g8_uname, g8_empid) VALUES ('$G8_TAG_ID','$G8_ANAME','$G8_EMP_ID')" g8_core
}

function g8_del_cand() {

	dialog --title "Delete Employee Entry" \
	--inputbox "Enter Tag ID " 8 60 2>$OUTPUT
	respose=$?
	 G8_TAG_ID=$(<$OUTPUT)
	trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM
	
	mysql -u root -p"12qwaszx" -e "Delete from g8_attd where g8_tag_id='$G8_TAG_ID'" g8_core

}

function g8_build_menu()
{
	cmd=(dialog --title "$G8_TITLE" --keep-tite --menu "Welcome to G8_ATTENDANCE SYSTEM" 19 70 16)
		options=(
				1 "Add New Candidate"
				2 "Delete Candidate"
			)

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		for choice in $choices
			do
				case $choice in

					1)
						g8_add_cand
						g8_build_menu
					;;

					2)
						g8_del_cand
						g8_build_menu
					;;

				esac
			done
}


#Main Function Is Run here
g8_build_menu
