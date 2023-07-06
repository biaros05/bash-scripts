#!/bin/bash
#Bianca Rossetti - 2233420
#March 28, 2023
#this script displays information about the overall OS environment, such as user, current directory, and more
echo "$0: $USER"
echo "$0: $(pwd)"
echo "$0: $(basename $SHELL)"
echo "$0: $(uname -o)"
echo "$0: $(uname -s)"
find /etc/ -type f -name "*.conf" 2> /dev/null
