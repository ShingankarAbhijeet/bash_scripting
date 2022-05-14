#!/bin/bash  -x

#PACKAGE=" httpd wget unzip"
PATH=/var/www/html
#SERVICE=httpd
WEB_PACKAGE="2127_little_fashion"
URL="https://www.tooplate.com/zip-templates/2127_little_fashion.zip"

/usr/bin/yum --help &> /dev/null
if [ $? -eq 0 ]
then
   PACKAGE=" httpd wget unzip"
   SERVICE=httpd 
  
   echo " Running on CentOs"

   # install packages
   echo "########################"
   /usr/bin/yum install $PACKAGE -y
   /usr/bin/systemctl start $SERVICE
   /usr/bin/systemctl enable $SERVICE
 
   #copy files to location
   echo "########################"
   /usr/bin/mkdir -p /tmp/website
   /usr/bin/cd /tmp/website/
   /usr/bin/wget $URL 
   /usr/bin/chmod 777 $WEB_PACKAGE.zip
   /usr/bin/unzip $WEB_PACKAGE.zip
   echo "########################"
   mkdir /var/www/html/
   /usr/bin/cp -rp $WEB_PACKAGE/* $PATH/
   /usr/bin/systemctl restart $SERVICE
   /usr/bin/ls -lrt $PATH
   /usr/bin/systemctl status $SERVICE
else
   PACKAGE1=apache2 
   PACKAGE2=wget 
   PACKAGE3=unzip
   SERVICE=apache2
   echo " Running on Ubuntu"

   # install packages
   echo "########################"
#   /usr/bin/apt update
    /usr/bin/apt-get install $PACKAGE1 -y
   /usr/bin/apt-get install $PACKAGE2 -y
   /usr/bin/apt-get install $PACKAGE3 -y
   /bin/systemctl start $SERVICE
   /bin/systemctl enable $SERVICE

   #copy files to location
   echo "########################"
   /bin/mkdir -p /tmp/website
#   /bin/mkdir /var/www/html/
   cd /tmp/website/
    /usr/bin/wget $URL
   /bin/chmod 777 $WEB_PACKAGE.zip
    /usr/bin/unzip $WEB_PACKAGE.zip
   echo "########################"
   /bin/cp -rp $WEB_PACKAGE/* $PATH/
   /bin/systemctl restart $SERVICE
   /bin/ls -lrt $PATH
   /bin/systemctl status $SERVICE
fi 
