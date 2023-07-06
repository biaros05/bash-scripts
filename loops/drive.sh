#!/bin/bash
#Bianca Rossetti - 2233420
#April 11, 2023
#this script contains 3 functions

summer(){
if [[ $# -eq 0 ]];then
	return 5
else
	local sum=0
	for args ; do
		sum=$((sum+args))
	done
	echo "the sum of your arguments is $sum"
	return 0
fi
}

summer 1 2 3 5 4
echo $?

factorial(){
local fac=1
if [[ $# -ne 1 ]]; then
	return 5
else
	local count=$1
	while [[ count -gt 0 ]];do
		fac=$((fac*count))
		((count--))
	done
	echo "the factorial is $fac"
	return 0
fi

}

factorial 5
echo "$?"

dirs(){
countdir=0
local exist=0
local not_exist=0
if [[ $# -eq 0 ]];then
	return 5
else
	for args ; do
		if [[ -d $args ]]; then
			((countdir++))
		elif [[ -e $args ]]; then
			((exist++))
		else
			((not_exist++))
		fi
	done
	echo "num of existing arguments: $exist"
	echo "num arguments that do not exist: $not_exist"
	echo "there are $# argument(s)"
	return 0
fi
}

dirs . .. ~/ ./drive.sh abcd
echo "num arguments that are directories: $countdir"
echo $?
