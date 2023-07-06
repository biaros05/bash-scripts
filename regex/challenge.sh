#!/bin/bash
#Bianca Rossetti - 2233420
#April 26, 2023
#This script calls 3 functions, which check if the file given has valid phone numbers, valid postal codes, and valid passwords.
#challenge_test.txt was used to test this

valid_passwords=0
valid_phone_numbers=0
valid_postal_codes=0

#functions
password(){
	if [[ "$1" =~ ^[a-zA-Z][a-zA-Z0-9]{7,15}[A-Z][^\ \t\r]$ ]]; then
		((valid_passwords++))
	fi
}

phone_number(){
	if [[ "$1" =~ ^\(?[[:digit:]]{3}\)?-[[:digit:]]{3}-[[:digit:]]{4}$ ]] ; then
		((valid_phone_numbers++))
	fi
}

postalcode(){
echo $1
	if [[ "$1" =~ ^[A-Z][0-9][A-Z][\ ][0-9][A-Z][0-9]$ ]] ; then
		((valid_postal_codes++))
	fi
}

#SCRIPT:
read -p "Enter a file: " file
#echo $(postalcode "A0B 0P0")
while read line; do
        password $line
        phone_number $line
        postalcode "$line"

done < $file

echo "valid passwords: $valid_passwords"
echo "valid phone numbers: $valid_phone_numbers"
echo "valid postal codes: $valid_postal_codes"
