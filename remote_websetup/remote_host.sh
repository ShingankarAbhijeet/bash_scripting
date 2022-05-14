#!/bin/bash

USR=root

for host in `cat remote_hosts`
do
  echo "#########################"
  echo "Connecting to server $host"
  scp /opt/scripts/remote_websetup/multios_website.sh $USR@$host:/tmp/
  chmod 777 /tmp/multios_website.sh
  ssh $USR@$host /tmp/multios_website.sh
#  ssh $USR@$host  rm -rf /tmp/multios_website.sh

done
