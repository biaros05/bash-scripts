#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script determins if me and the user have the same favourite colour by using either command line arguments or input

my_colour=lavender
if [[ $# -eq 1 ]];then
	usr_colour=$1
else
	read -p "Enter your favourite colour:" usr_colour
fi
if [[ $my_colour = $usr_colour ]]; then
	echo "Our favourite colour is $my_colour"
else
	echo "My colour is $my_colour, your colour is $usr_colour"
fi
