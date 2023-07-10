# bash-scripts
This repository contains all the bash scripts i have written
## Labs
This repository is a combination of all the scripts i have written in linux bash. Here is a rundown of all the files in which i have organized these scripts:
### Publish and back up files
In this folder, the scripts i have written are:
- backup.sh: backs up all the files that begin with lab in a back up file and creates a link to this file.
- start-web-project.sh: this script copies the skeleton file to start a website into your current directory.
- publish.sh: changes the permissions of the files in your current folder and changes the permissions, as well as moves them to the public_html directory for publishing.
### If statements and cli args
In this folder, the scripts i have written are:
- cliagrs.sh: checks the largest of the two number arguments in the CLI.
- readargs.sh: does the same as the previous, however takes input using the read command.
- color.sh: checks whether your favourite color matches the one predetermined in the file.
- color2.sh: does the same, however if no argument is found, this one asks for input by the user.
### Loops
In this folder, the scripts i have written are:
- drive.sh: comprised of three funtions. One sums all the CLI arguments, the second takes the factorial of the given number, and the third checks which arguments exist, dont exist, and which of those are directories.
- guess.sh: simulates a guessing game.
- mkdirs.sh: makes directories with the names given as arguments.
- sum.sh: asks for numbers and sums them until -1 is typed. it also displays the average of those numbers.
### System info
This folder contains scripts that check system information or finds informaton based on gien arguments:
- cal_date.sh displays a calendar of the current month and the current date and time.
- checkuser.sh: checks if the user exists in the system you are using.
- display.sh: displays information about the overall OS environment, such as user, current directory, and more.
- evaluates files given in the cmd and displays the filename and file size in KB.
### Regex
This file contains scripts that use regex to match patterns:
- challenge.sh: checks a file and validates passwords, phone numbers, and postal codes.
- password.sh: checks the number of valid passwords (given as input using the read command) according to the requirements.
- regex.sh: prints whether each line in a given file matches specific patterns specified in the script.
- final2.sh: this script will find files that match the expression typed and direct the matches to a saved file (stderr not saved).
