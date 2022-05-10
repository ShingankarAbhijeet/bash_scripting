#!/bin/bash
### to check & confirm the services are running

ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then 
  echo "Apache httpd is runing"
else
 echo " Apache httpd is stopped"
 echo " starting httpd"
systemctl start httpd
  if [ $? -eq 0 ]
  then 
    echo " process started successfully."
  else
    echo " Process startup Failed. Please contact Sys Admin."
  fi
fi 
