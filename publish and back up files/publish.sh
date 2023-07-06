#!/bin/bash
#Bianca Rossetti
#sonic user: 2233420
source_path=$(pwd)
dirname=$(basename $source_path)
destination=~/public_html/$dirname

#removing pre-existing destination file (prompt before removal in case)
rm -rfi $destination
mkdir $destination

#copying all files in current directory to the destination directory
echo "publishing $source_path to $destination"
cp -ivr ./* $destination
tree $destination

#add read permissions to all files and directories in destination directory
echo "updating permissions:"
chmod -Rv u+r,g+r,o+r $destination

# This command finds all directories under $destination
# and executes chmod -v a+x on each of them
find $destination -type d -exec chmod -v a+x {} \;

