#!/bin/bash
#Bianca Rossetti - 2233420
#April 4, 2023
#This program simulates a guessing game

hidden=dog
count=0
read -p "enter a animal: " guess
while [[ $guess != $hidden ]]; do
	if [[ $guess == "hint" ]]; then
		echo "it is a mammal"
	#if the word is not hint and is not null, add to counter!
	elif [[ -n $guess ]]; then
		((count++))
	fi
	read -p "enter another animal: " guess
done
echo "you have guessed the word! it took you $count tries"

	
