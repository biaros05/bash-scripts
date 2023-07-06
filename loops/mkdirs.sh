#!/bin/bash
#Bianca Rossetti - 2233420
#April 4, 2023
#This command makes a number of directories based on the command arguments, the date, and the pid

for arg in $@ ; do
	mkdir ./$arg.$(date +%F).$$
done
