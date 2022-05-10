#!/bin/bash 
##  script to take user input & run
echo "enter you skill"
read SKILL

echo "Your skill is" $SKILL

read -p 'username:' USR
read -sp 'password:' PASS

echo "Login successfull !!!Welcome USER $USR "
