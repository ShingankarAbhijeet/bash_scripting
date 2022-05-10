#!/bin/bash

counter=0
while [ $counter -le 5 ]
do
 echo "looping"
 echo " value of counter is $counter"
 counter=$(($counter + 1 ))
 sleep 2
done

echo "Looping ended"
