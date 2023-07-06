#!/bin/bash
#Bianca Rossetti - 2233420
#April 25, 2023
#this script validates a user's password

echo "Your password must respect the following: Starts with a letter (lower case or upper case)
After the first character, contain between 7 and 15 letters (lower case or upper case) or numbers.
After, one upper case letter.
Ends with one character of any type except space."

valid_passwords=0
invalid_passwords=0

read -p "Enter a password: " password
while [[ -n $password ]] ; do
	if [[ "$password" =~ ^[a-zA-Z][a-zA-Z0-9]{7,15}[A-Z][^[:space:]]$ ]] ; then
		((valid_passwords++))
	else
		((invalid_passwords++))
	fi
	read -p "Enter another password: " password
done

echo "Valid passwords: $valid_passwords"
echo "Invalid passwords: $invalid_passwords"
