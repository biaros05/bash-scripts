#!/bin/bash
#Bianca Rossetti - 2233420
#April 4, 2023
#this script evaluates files that are input as command line arguments

if [[ $# -eq 0 ]]; then
	echo "command line arguments are needed"
	exit 1
fi

echo "$(basename $0) evaluating $# files"
for file in $@ ; do
	if [[ ! -f $file ]] ; then
		echo "argument is not a file"
	else
		size=$(du -b $file | cut -f1)
		echo "the file is $file and the size is: $((size/1024))KB"
	fi
done		
