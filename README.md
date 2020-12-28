# Assignment - 1: Bash Scripting

## Question 1)

## a)Create a directory ‘Assignment1’ and cd into it

Commands Used :
'mkdir'
'cd'

## b)Create 5 empty files: lab1.txt, lab2.txt, lab3.txt, lab4.txt, lab5.txt in a single command.

Commands Used :
touch lab1.txt lab2.txt lab3.txt lab4.txt lab5.txt

## c)Rename the above files to lab1.c, lab2.c, lab3.c, lab4.c, lab5.c in a single command.

Commands Used :
find -depth -name "\*.txt" -exec sh -c 'f="{}"; mv -- "$f" "${f%.txt}.c"' \;

## d)List the content of your current directory in long list format sorted in increasing order of file size.

Commands Used :
ls -laShr

## e)Display all files and folders inside Home directory (~) up to two levels of depth such that full path is displayed for each file/folder.

Commands Used :
find \$(pwd) -maxdepth 2

## f)Display all ‘.txt’ files inside directory ‘Assignment1’ such that full path is displayed for each file/folder.

Commands Used :
find -type f -name "\*.txt"

## Question 2)

Given a scrambled word (read input from user), check if it exists ascrambled word (read input from user), check if it exists as
an executable command.

Commands Used :
Input a word denoted by variable w from th user.

c1=`echo $w | grep -o . | sort | tr -d "\n"`

In the above line the grep command -o option is used to show out only the matched string of the pattern '.'.
In the above line the 'tr' command is used to squeeze multiple blank lines to a single line.
Pipes are unidirectional i.e data flows from left to right through the pipeline.

compgen -abc : This command checks if it exists as an executable command.

for loop
if else fi statement

## Question 3)

List the last 10 commands that have been used on your terminal in the descending order of usage. The result should contain
command name and the count. If some commands have same count, print any order.

Commands Used :
HISTFILE=~/.bash_history : 
This command turns on the history which is by default disabled by the bash for non interactive shells.

set -o history - Commands will show up when you type "history" and they will be added to your .bash_history file when you exit
the session by logging off or exiting the terminal.

sort -r -k2 : It sorts the portion of the lines starting with the 2nd column.

awk '{a[$2]++} END {for (i in a) print i,a[i]}' - To view all content in an awk array you can loop over the array's keys and
extract the corresponding values.

Piping is used here redirection.

history 10 - To show the last 10 number of commands that executed previously.

## Question 4)

Write a script that takes a list as input from user and flattens the data in the list.

Commands Used :
'tr'
'sed'
tr "()" " " - This command converts all '()' into ''.
sed 's/ \*\$//g''- This command substitute flag (global replacement) specifies the sed command to replace all the occurrences
of the string in the line.

## Question 5)

Take a string as input from user and check if the value is a palindrome. If there is some uppercase letter in the original string
then it must be converted into lowercase before checking. Output Yes / No.

Commands Used :
'cut'
'wc' is used with option -c to count number of bytes.
A variable 'string' is used to store the input string from the user.
A piping is used to afinally ssign the values to the variable m and n.

## Question 6)

A program that can take any number of arguments and performs an exponential value of that number.The numbers are provided in the
command line itself via arguments.

Commands Used :
for loop
if else

## Question 7)

Get process IDs of all running processes and save it in file ‘pid.txt’. Now take an integer N as input from user and output the N
smallest process IDs. If N is more than the total number of running processes then update N to that value.

Commands Used :
'awk'
'ps -au'
awk '{print \$2 }' is used to show second field.
'awk' is used along with 'ps' and '<' to list the process id of all running processes & saved it in file named 'pid.txt'.
'head' is used to print N smallest of all running Process ID's.

## Question 8)

Write a script that checks if Crontab is properly formatted.Crontab is written in a file named ‘crontab_file’.

Commands Used :
'crontab' is a command which is used by crontab (cron tables) where we can schedule kind of repeated tasks.
The Cron daemon is a built-in Linux utility that runs processes on your system at a scheduled time.
Cron reads the crontab (cron tables) for predefined commands and scripts.

In our script , if input file is valid then Echo\$? will return 0 and then we will print YES otherwise NO will be printed to the
terminal.

## Question 9)

Given a number (read from input) determine whether or not it is valid per Luhn Agorithm/Formula.

Commands Used :

'tr' is used to replace with option -d to delete specified characters. When deleting characters without squeezing, specify only
one set.

'wc' is used with option -c to count number of bytes.

'|' here ability of Linux to piping (or chaining) multiple commands is used.
Pipe is used to combine two or more commands, and in this, the output of one command acts as input to another command.

## Question 10)

Build a Basic calculator that takes operator and “n” operands for basic arithmetic operations.

Commands Used :
'bc -l' : It defines the standard math library.

'awk' : It is used to put the value after arithmetic operation in the result variable.

if elif fi statement

printf %.4f $(echo "$result" | bc -l) : It is used to print the final value in result variable after basic arithmetic operations
with a precision of 4 digits after decimal.

bc is a command line basic calculator. bc is typically used as either a mathematical scripting language or as an interactive
mathematical shell.

---
