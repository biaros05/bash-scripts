#!/bin/bash
#Bianca Rossetti - 2233420
#April 4, 2023
#this script adds all user input until -1 is entered
sum=0
count=0
average=0
read -p "enter a number greater than or equal to 0: " num
#loop stops when a sentinel of -1 is entered
until [[ num -eq -1 ]]; do
	sum=$((sum+num))
	read -p "enter a number greater than or equal to 0: " num
	((count++))
done

echo "the sum is $sum"
echo "the count is $count"
echo "the average is $((sum/count))"
