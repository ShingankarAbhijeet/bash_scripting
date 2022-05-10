#!/bin/bash

read -p "Enter the no." NUM

if [ $NUM -gt 100 ]
then
 echo "greater"
 date
elif [ $NUM -eq 100 ]
then
  echo "equal" 
else
  echo "smaller"
fi
