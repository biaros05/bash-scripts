#!/bin/bash
#Bianca Rossetti - 2233420
#May 15, 2023
#this script will find files that match the expression typed

find_files(){
	echo "pattern used: $1" >> ~/search_matches.txt
	#output to screen
	find / -name "$1" 2> /dev/null
	#output to file (append): assume the file exists
	find / -name "$1" >> ~/search_matches.txt 2> /dev/null
}

validate_args(){
	if [[ $# -ne 1 ]]; then
		echo "only 1 argument must be passed!"
		return 5
	elif [[ -z $1 ]]; then
		echo "argument cannot be null!"
		return 7
	else
		find_files "$1"
	fi
}

read -p "enter a globbing expression" pattern

while [[ $pattern != "exit" ]] ;do
	validate_args "$pattern"
	read -p "enter another pattern" pattern
done
