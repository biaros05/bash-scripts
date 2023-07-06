#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script reads two inputs from the user and indicates which are the largest and smallest of the two

read -p "Enter two numbers: " num1 num2


if [[ $num1 -gt $num2 ]] ;then
        echo "largest: $num1, smallest: $num2"
elif [[ $num2 -gt $num1 ]] ;then
        echo "largest: $num2, smallest: $num1"
else
        echo "$num1 == $num2"
fi

