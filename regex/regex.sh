#!/bin/bash
#Bianca Rossetti - 2233420
#April 25, 2023
#this script checks if each line in a given file matches any of the below patterns 
#IMPORTANT: this script assumes that "string" implies that the word can or cannot have spaces on either side of it!
#ex: contains the string unix can match abcunixdef or abc unix def

read -p "enter a file" filename
if [[ ! -e $filename ]] ; then
	echo "that file does not exist"
	exit 5
fi

IFS=$'\n'
for line in $(cat $filename) ; do
	echo $line
	echo "ends with: Linux"
	if [[ "$line" =~ Linux$ ]] ; then
		echo "Match"
	else
		echo "No match"
	fi
	echo "begins with: Linux"
	if [[ "$line" =~ ^Linux ]]; then
		echo "Match"
	else
		echo "No Match"
	fi
	echo "contains the string unix"
	if [[ "$line" =~ unix ]]; then
                echo "Match"
        else
                echo "No Match"
	fi
	echo "contains the string unix in mixed case"
        if [[ "$line" =~ [uU][nN][iI][xX] ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "begins with an uppercase"
        if [[ "$line" =~ ^[A-Z] ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	#no numbers anywhere: ^[^0-9]*[^0-9]$
	echo "does not contain any numbers anywhere"
        if [[ "$line" =~ ^[^0-9]*$ ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "contains Windows or Linux or windows or linux"
        if [[ "$line" =~ ((Windows|Linux)|(windows|Linux)) ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "contains thingg (with min 2, max 5 on the end)"
        if [[ "$line" =~ (thing{2,5})$ ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "no whitespace anywhere"
        if [[ "$line" =~ ^[^[:space:]]*$ ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "contains Linux with 0 or more x at the end"
        if [[ "$line" =~ Linux* ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "contains the word Tux preceded or followed by a blank"
        if [[ "$line" =~ [[:space:]]Tux[[:space:]] ]]; then
                echo "Match"
        else
                echo "No Match"
        fi
	echo "contains any word that ends in nix"
        if [[ "$line" =~ [[:space:]].+nix[[:space:]] ]]; then
                echo "Match"
        else
                echo "No Match"
        fi	
done
