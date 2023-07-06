#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script checks if the user's id is in /etc/passwd or /etc/group
read -p "Enter your userID:" userid
if [[ $(grep -c "$userid" /etc/passwd) -gt 0 ]];then
	echo "In the /etc/passwd file"
elif [[ $(grep -c "$userid" /etc/passwd) -gt 0 ]]; then
	echo "In the /etc/group file"
else
	echo "Not /etc/passwd or /etc/group files"
fi

