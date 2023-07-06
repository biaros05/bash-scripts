#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script indicates the largest and smallest argument based on two arguments given by the user
if [[ $# -ne 2 ]] ;then
	echo "there must be 2 arguments!"
	exit
elif [[ $1 -gt $2 ]] ;then
	echo "largest: $1, smallest: $2"
elif [[ $2 -gt $1 ]] ;then
	echo "largest: $2, smallest: $1"
else
	echo "$1 == $2"
fi	
