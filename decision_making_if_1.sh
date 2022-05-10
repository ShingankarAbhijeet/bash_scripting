#!/bin/bash
### script to check the interface cards on server

value=`ip a |grep -i -v loopback |grep mtu|wc -l`
IP_ADDR=$(ip a |grep inet |grep -v 127.0.0.1 |grep brd| awk '{print $2}' |cut -d "/" -f1)
if [ $value -eq 1 ]
then 
  echo "onle one nic is avaailable"
elif [ $value -gt 1 ]
then
  echo "$value nics are available"
  echo " The IP addresses are:\n $IP_ADDR"
else
  echo " no nics available"
fi
