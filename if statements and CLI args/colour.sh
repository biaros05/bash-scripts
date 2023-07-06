#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script determines if me and the user have the same favourite colour by reading input from the user

my_colour=lavender
read -p "Enter your favourite colour:" usr_colour

if [[ $my_colour = $usr_colour ]] ;then
	echo "Our favourite colour is $my_colour"
else
	echo "My colour is $my_colour, your colour is $usr_colour"
fi
