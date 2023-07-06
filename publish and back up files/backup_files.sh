#!/bin/bash
#author: Bianca Rossetti
#sonic user: 2233420

#create variables
BACKUP_FILE=$(date +%F_%T)
output=~/my_backup/log_output.txt
errors=~/my_backup/log_error.txt
backup_dir=~/my_backup

#creating files and directories
mkdir $backup_dir 2> /dev/null #surpress any errors if directory already exists
mkdir $backup_dir/labs$BACKUP_FILE
touch $backup_dir/log_output.txt $backup_dir/log_error.txt

#copying all labs recursively to the labs backup file
cp -r ~/240/*lab* ~/my_backup/labs$BACKUP_FILE >> $output 2>> $errors
cd $backup_dir/labs$BACKUP_FILE >> $output 2>> $errors

#display current location and file numbers
echo "the current directory is $(pwd)" >> $output 2>> $errors
echo "number of files and directories in labs$BACKUP_FILE is $(ls -a | wc -w)" >> $output 2>> $errors

#making a link to the backup file
mkdir ~/my_backup_links 2>> $errors >> $output
ln -s $backup_dir/labs$BACKUP_FILE ~/my_backup_links/links.to.labs$BACKUP_FILE >> $output 2>> $errors
ls ~/my_backup_links/links.to.labs$BACKUP_FILE  >> $output 2>> $errors
