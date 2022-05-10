#!/bin/bash -x

PACKAGE=" httpd wget unzip"
PATH=/var/www/html
SERVICE=httpd
WEB_PACKAGE="2127_little_fashion"
URL="https://www.tooplate.com/zip-templates/2127_little_fashion.zip"
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
/usr/bin/chmod 777 /tmp/website/$WEB_PACKAGE.zip
/usr/bin/unzip /tmp/website/$WEB_PACKAGE.zip
echo "########################"
/usr/bin/cp -rp /tmp/website/$WEB_PACKAGE/* $PATH/
/usr/bin/systemctl restart $SERVICE
/usr/bin/ls -lrt $PATH
/usr/bin/systemctl status $SERVICE

