#!/bin/bash
#the line above is know as shebang

###################################
#Basic   :  Shell script
#Author  :  Devendra
#version  :  v1
###################################

set -x             #debug mode
set -e             #prevents moving to next command in case of error
set -o pipefail    #prevents set -e drawback of moving to next command incase of pipe

#create a directory Test and create 2 files inside Test directory
mkdir Test
touch TShell1.sh Tshell2.sh

#move out of directory Test and create another file mainshell.sh
cd ..
touch mainshell.sh

#now list all files 
ls

#display some system monitoring info on linux
nproc      #numbber of CPU
free       #free space
ps -ef      #display process in standard format

#filter outputs with grep and awk commands
ps -ef | grep "amazon"     #this command will pass the output throug pipe to grep which will filter process contains word amazon
ps -ef | grep "amazon" | awk -F" " '{print $2}'  #this command will further filter only 2 coloumn of process in amazon process
ps -ef | awk -F" " '{print 2}'  #prints 2nd coloumn from the entire process
